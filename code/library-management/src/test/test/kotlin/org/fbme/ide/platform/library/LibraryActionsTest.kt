package org.fbme.ide.platform.library.actions

import com.intellij.openapi.actionSystem.AnActionEvent
import com.intellij.openapi.fileChooser.FileChooser
import jetbrains.mps.ide.actions.MPSCommonDataKeys
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.Solution
import junit.framework.TestCase.assertEquals
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.junit.Test
import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.Test
import org.junit.runner.RunWith
import org.mockito.Mockito.mock

@RunWith(PlatformTestRunner::class)
class LibraryActionsTest {

    @Test
    fun testNewLibraryAction() {
        // Arrange
        val newLibraryAction = NewLibraryAction()
        val event = mock(AnActionEvent::class.java)

        // Setup mocks:
        val project = mock(MPSProject::class.java)
        `when`(event.getData(MPSCommonDataKeys.MPS_PROJECT)).thenReturn(project)
        // mock dialog to set module name and location
        val cfg = mock(NameLocationPanel::class.java)
        `when`(NewModuleDialog.projectHome(project)).thenReturn("solutions")
        `when`(cfg.withDefaults("NewSolution", "solutions")).thenReturn(cfg)
        val dialog = mock(NewModuleDialog::class.java)
        `when`(NewModuleDialog(project, cfg)).thenReturn(dialog)
        val model = mock(SModel::class.java)
        val result = mock(Solution::class.java)
        val modelRoot = mock(DefaultModelRoot::class.java)
        `when`(result.modelRoots).thenReturn(setOf(modelRoot))
        `when`(modelRoot.createModel(SModelName("NewLibrary@content"), null, Iec61499ModelFactory.DST, Iec61499ModelFactory.TYPE)).thenReturn(model)
        val repository = mock(PlatformRepository::class.java)
        `when`(PlatformRepositoryProvider.getInstance(project)).thenReturn(repository)
        val facet = mock(ModuleFacetBase::class.java)
        `when`(result.getFacet(Iec61499Facet.FACET_TYPE)).thenReturn(facet)
        val modelImporter = mock(ModelImporter::class.java)
        `when`(ModelImporter(it)).thenReturn(modelImporter)


        // Act
        newLibraryAction.actionPerformed(event)

        // Assert
        // Add your assertions here based on the expected outcome of the action

        assertNotNull(model)
        assertEquals("NewLibrary@Content", model.getName().getValue())
        verify(result).setFacet(Iec61499Facet.FACET_TYPE, facet)
        verify(modelImporter, times(1)).execute()
        verify(project).addModule(result)


    }

    @Test
    fun testExportLibraryAction() {
        // Arrange
        val exportLibraryAction = ExportLibraryAction()
        val event = mock(AnActionEvent::class.java)

        // Setup mocks:
        val project = mock(MPSProject::class.java)
        `when`(event.getData(MPSCommonDataKeys.MPS_PROJECT)).thenReturn(project)
        val solution = mock(Solution::class.java)
        // Assuming that the solution is selected in the project pane
        `when`(ProjectPane.getInstance(project).selectedSolution).thenReturn(solution)
        // mock mpsProject to get the project
        `when`(event.getData(MPSCommonDataKeys.MPS_PROJECT)).thenReturn(project)
        // mock ideaProject to get the project base path
        val ideaProject = mock(IdeaProject::class.java)
        `when`(project.project).thenReturn(ideaProject)
        `when`(ideaProject.basePath).thenReturn("/path/to/project")
        // mock module name
        `when`(solution.moduleName).thenReturn("NewLibrary")

        // Act
        exportLibraryAction.actionPerformed(event)

        // Assert
        verify(solution).exportLibrary()
        assertTrue(solution.isExported)
        verify(project).refresh()

        // check that the zip file is created
        val zipFile = File("/path/to/project/NewLibrary.zip")
        assertTrue(zipFile.exists())

    }

    @Test
    fun testImportLibraryAction() {
        // Arrange
        val importLibraryAction = ImportLibraryAction()
        val event = mock(AnActionEvent::class.java)

        // Setup mocks:
        val project = mock(MPSProject::class.java)
        `when`(event.getData(MPSCommonDataKeys.MPS_PROJECT)).thenReturn(project)
        val solution = mock(Solution::class.java)
        `when`(ProjectPane.getInstance(project).selectedSolution).thenReturn(solution)
        `when`(event.getData(MPSCommonDataKeys.MPS_PROJECT)).thenReturn(mpsProject)
        val fileChooser = mock(FileChooser::class.java)
        `when`(FileChooser.chooseFile(any(), any(), any())).thenReturn(VirtualFile("code/platform/src/test/resources/Library.zip"))

        // Act
        importLibraryAction.actionPerformed(event)

        // Assert
        verify(solution).importLibrary()
        assertTrue(solution.isImported)
        verify(project).refresh()

        val extractedDir = File("code/platform/src/test/resources/Library")
        assertTrue(extractedDir.exists())
        val fbtFile = File("code/platform/src/test/resources/Library/models/SampleFbType.fbt")
        assertTrue(fbtFile.exists())
        // remove the extracted directory
        extractedDir.delete()


        verify(result).setFacet(Iec61499Facet.FACET_TYPE, facet)
        verify(modelImporter, times(1)).execute()
        verify(project).addModule(result)

        verify(project).addModule(module)
        assertTrue(project.modules.size() == 1)

        assertEquals("NewLibrary", mpsProject.modules[0].moduleName)

    }

    @Test
    fun testNewLibImportExport() {
        val newLibraryAction = NewLibraryAction()
        val exportLibraryAction = ExportLibraryAction()
        val importLibraryAction = ImportLibraryAction()
        val event = mock(AnActionEvent::class.java)

        // Setup mocks:
        val project = mock(MPSProject::class.java)
        `when`(event.getData(MPSCommonDataKeys.MPS_PROJECT)).thenReturn(project)
        val solution = mock(Solution::class.java)
        `when`(ProjectPane.getInstance(project).selectedSolution).thenReturn(solution)
        `when`(event.getData(MPSCommonDataKeys.MPS_PROJECT)).thenReturn(project)
        val ideaProject = mock(IdeaProject::class.java)
        `when`(project.project).thenReturn(ideaProject)
        `when`(ideaProject.basePath).thenReturn("/path/to/project")
        `when`(solution.moduleName).thenReturn("NewLibrary")
        val fileChooser = mock(FileChooser::class.java)
        `when`(FileChooser.chooseFile(any(), any(), any())).thenReturn(VirtualFile("code/platform/src/test/resources/NewLibrary.zip"))

        // Act
        newLibraryAction.actionPerformed(event)
        exportLibraryAction.actionPerformed(event)
        importLibraryAction.actionPerformed(event)

        // Assert
        verify(solution).exportLibrary()
        assertTrue(solution.isExported)
        verify(project).refresh()

        val zipFile = File("/code/platform/src/test/resources/NewLibrary.zip")
        assertTrue(zipFile.exists())

        verify(solution).importLibrary()
        assertTrue(solution.isImported)
        verify(project).refresh()

        val extractedDir = File("code/platform/src/test/resources/Library")
        assertTrue(extractedDir.exists())
        val fbtFile = File("code/platform/src/test/resources/Library/models/SampleFbType.fbt")
        assertTrue(fbtFile.exists())

        verify(result).setFacet(Iec61499Facet.FACET_TYPE, facet)
        verify(modelImporter, times(1)).execute()
        verify(project).addModule(result)

        verify(project).addModule(module)
        assertTrue(project.modules.size() == 1)

        assertEquals("NewLibrary", mpsProject.modules[0].moduleName)
    }

}