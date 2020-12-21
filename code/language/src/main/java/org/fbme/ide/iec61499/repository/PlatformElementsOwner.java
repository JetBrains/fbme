package org.fbme.ide.iec61499.repository;

import org.fbme.lib.common.Element;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.st.STFactory;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.HashMap;
import java.util.Map;

public class PlatformElementsOwner {
    private final Map<SNode, Element> myElements = new HashMap<>();
    private final PlatformElementAdapter myAdapter = MpsBridge.createElementAdapter(this);

    public <T> T getAdapter(SNode node, Class<T> requiredClass) {
        if (node == null) {
            return null;
        }
        Object adapter = myElements.computeIfAbsent(node, this::adapt);
        if (adapter == null) {
            myElements.remove(node);
        }
        if (requiredClass.isInstance(adapter)) {
            //noinspection unchecked
            return (T) adapter;
        }
        return null;
    }

    private Element adapt(SNode node) {
        return myAdapter.adapt(node);
    }

    public void dispose() {
        myElements.clear();
    }

    public IEC61499Factory getIEC61499Factory() {
        return MpsBridge.createIec61499Factory(this);
    }

    public STFactory getSTFactory() {
        return MpsBridge.createStFactory(this);
    }

}
