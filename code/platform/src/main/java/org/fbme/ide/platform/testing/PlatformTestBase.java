package org.fbme.ide.platform.testing;


import jetbrains.mps.project.Project;
import jetbrains.mps.tool.environment.*;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.st.STFactory;
import org.junit.After;
import org.junit.Before;


public abstract class PlatformTestBase {

    public Environment myEnvironment;

    public Project myProject;

    protected Project getProject() {
        return myProject;
    }

    protected PlatformRepository getRepository() {
        return PlatformRepositoryProvider.getInstance(myProject);
    }

    protected IEC61499Factory getFactory() {
        return getRepository().getIEC61499Factory();
    }

    protected STFactory getStFactory() {
        return getRepository().getSTFactory();
    }

    @Before
    public void initProject() {
        myProject = myEnvironment.createEmptyProject();
        PlatformRepositoryProvider.init(myProject);
    }

    @After
    public void disposeProject() {
        myEnvironment.closeProject(myProject);
    }
}
