package org.fbme.ide.platform.testing

import jetbrains.mps.project.Project
import jetbrains.mps.tool.environment.Environment
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory
import org.junit.After
import org.junit.Before

abstract class PlatformTestBase {
    var environment: Environment? = null
    protected var project: Project? = null
    protected val repository: PlatformRepository
        get() = PlatformRepositoryProvider.getInstance(project)
    protected val factory: IEC61499Factory
        get() = repository.ieC61499Factory
    protected val stFactory: STFactory
        get() = repository.stFactory

    @Before
    fun initProject() {
        project = environment!!.createEmptyProject()
        PlatformRepositoryProvider.init(project)
    }

    @After
    fun disposeProject() {
        environment!!.closeProject(project!!)
    }
}