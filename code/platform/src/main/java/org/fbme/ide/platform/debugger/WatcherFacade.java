package org.fbme.ide.platform.debugger;

import jetbrains.mps.baseLanguage.logging.runtime.model.LoggingRuntime;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.util.JDOMUtil;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.ide.platform.PlatformRepositoryProvider;
import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.DeviceDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SRepository;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.*;

public class WatcherFacade {
    private static final Logger LOG = LogManager.getLogger(WatcherFacade.class);

    private static final Map<Project, WatcherFacade> INSTANCES = new HashMap<>();

    private final Map<Identifier, Set<WatchableData>> myDevices = new HashMap<>();


    private final Map<WatchableData, Set<WatchedValueListener>> myWatchedValueListeners = new HashMap<>();

    private final PlatformRepository myRepository;

    private WatcherFacade(Project project) {
        myRepository = PlatformRepositoryProvider.getInstance(project);
    }

    public synchronized static WatcherFacade getInstance(Project project) {
        return INSTANCES.get(project);
    }

    public synchronized static void register(Project project) {
        assert !INSTANCES.containsKey(project);
        WatcherFacade facade = new WatcherFacade(project);
        facade.start();
        INSTANCES.put(project, facade);
    }

    public synchronized static void unregister(Project project) {
        assert INSTANCES.containsKey(project);
        INSTANCES.remove(project).stop();
    }


    public void watch(@NotNull Watchable watchable) {
        DeviceDeclaration device = (DeviceDeclaration) watchable.getPath().getRoot().getContainer();
        Identifier identifier = device.getIdentifier();
        try {
            DeviceConnection connection = DevicesFacade.getInstance().attach(device);
            if (connection != null) {
                connection.addWatch(watchable);
            } else {
                LOG.error("no connection available for " + device.getName());
            }
        } catch (IOException e) {
            LOG.error("on start watching", e);
        }
        Set<WatchableData> watchables = myDevices.computeIfAbsent(identifier, k -> new HashSet<>());
        watchables.add(watchable.serialize());
    }

    public void unwatch(@NotNull Watchable watchable) {
        DeviceDeclaration device = (DeviceDeclaration) watchable.getPath().getRoot().getContainer();
        Identifier identifier = device.getIdentifier();
        try {
            DeviceConnection connection = DevicesFacade.getInstance().attach(device);
            if (connection != null) {
                connection.removeWatch(watchable);
            }
        } catch (IOException e) {
            LOG.error("on remove watching", e);
        }
        Set<WatchableData> watchables = myDevices.get(identifier);
        if (watchables == null) {
            return;
        }
        watchables.remove(watchable.serialize());
        if (watchables.isEmpty()) {
            myDevices.remove(identifier);
        }
    }

    public boolean isWatched(@NotNull Watchable watchable) {
        DeviceDeclaration device = (DeviceDeclaration) watchable.getPath().getRoot().getContainer();
        Identifier identifier = device.getIdentifier();
        Set<WatchableData> watchables = myDevices.get(identifier);
        return watchables != null && watchables.contains(watchable.serialize());
    }

    public void addWatchedValueListener(WatchableData watchable, WatchedValueListener listener) {
        Set<WatchedValueListener> listeners = myWatchedValueListeners.computeIfAbsent(watchable, k -> new HashSet<>());
        listeners.add(listener);
    }

    public void removeWatchedValueListener(WatchableData watchable, WatchedValueListener listener) {
        Set<WatchedValueListener> listeners = myWatchedValueListeners.get(watchable);
        if (listeners == null) {
            return;
        }
        listeners.remove(listener);
        if (listeners.isEmpty()) {
            myWatchedValueListeners.remove(watchable);
        }
    }

    private static Map<WatchableData, String> resolveWatches(DeviceDeclaration device, String watch) {
        try {
            Document doc = JDOMUtil.loadDocument(new ByteArrayInputStream(watch.getBytes()));

            Map<WatchableData, String> watches = new HashMap<>();

            Element watchesElement = doc.getRootElement().getChild("Watches");
            for (Element resourceElement : watchesElement.getChildren("Resource")) {
                final String resourceName = resourceElement.getAttributeValue("name");
                ResourceDeclaration resource = device.getResources().stream().filter(it -> it.getName().equals(resourceName)).findFirst().orElseThrow();
                for (Element fbElement : resourceElement.getChildren("FB")) {
                    final String fbName = fbElement.getAttributeValue("name");
                    FunctionBlockDeclaration fb = resource.allFunctionBlocks().stream().filter(it -> it.getName().equals(fbName)).findFirst().orElseThrow();
                    for (Element portElement : fbElement.getChildren("Port")) {
                        String portName = portElement.getAttributeValue("name");
                        Element dataElement = portElement.getChild("Data");
                        if (dataElement != null) {
                            watches.put(new Watchable(new WatchablePath(resource, fb), portName).serialize(), dataElement.getAttributeValue("value"));
                        }
                    }
                }
            }

            return watches;
        } catch (JDOMException | IOException e) {
            LOG.error("can't resolve watches", e);
            return Collections.emptyMap();
        }
    }

    public void start() {
        if (myThread == null) {
            myThread = watcherThread();
            myThread.start();
            return;
        }
        throw new IllegalStateException("Double initialization");
    }

    public void stop() {
        try {
            if (myThread != null) {
                myThread.interrupt();
                myThread.join();
                myThread = null;
                return;
            }
            throw new IllegalStateException("Stop of non-initialized");
        } catch (InterruptedException e) {
            LOG.error("interrupted during stop", e);
            myThread = null;
        }
    }

    private Thread watcherThread() {
        return new Thread(() -> {
            try {
                while (!Thread.currentThread().isInterrupted()) {
                    myRepository.getMPSRepository().getModelAccess().runReadInEDT(() -> {
                        for (Identifier deviceIdentifier : myDevices.keySet()) {
                            try {
                                DeviceDeclaration device = myRepository.getDeclarationsScope().findDeviceDeclaration(deviceIdentifier);
                                Objects.requireNonNull(device);
                                DeviceConnection connection = DevicesFacade.getInstance().attach(device);
                                if (connection != null) {
                                    for (Map.Entry<WatchableData, String> watchValue : resolveWatches(device, connection.readWatches()).entrySet()) {
                                        Set<WatchedValueListener> listeners = myWatchedValueListeners.get(watchValue.getKey());
                                        for (WatchedValueListener listener : listeners) {
                                            listener.onValueChanged(watchValue.getValue());
                                        }
                                    }
                                }
                            } catch (IOException e) {
                                LoggingRuntime.logMsgView(Level.ERROR, "During readWatches", WatcherFacade.class, e, null);
                            }
                        }
                    });

                    Thread.sleep(100);
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        });
    }

    public Thread myThread;
}
