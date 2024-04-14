package org.fbme.ide.richediting.utils

import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.stringify.RootDeclarationPrinter
import org.jdom.Document
import org.jdom.output.Format
import org.jdom.output.XMLOutputter
import org.jetbrains.kotlin.utils.addToStdlib.cast
import org.jetbrains.mps.openapi.model.SModel
import org.junit.Test
import org.junit.runner.RunWith
import kotlin.test.assertEquals
import kotlin.test.assertNotNull


//@LoadFrom("org.fbme.richediting.lib")
@RunWith(PlatformTestRunner::class)
class ExtendedAdapterUtilsTest : PlatformTestBase() {
    private val extendedAdapterUtils = ExtendedAdapterUtils(factory, stFactory, repository, ::getPublishSubscribeBlock)
    private val publishSubscribeMap: Map<String, FBTypeDeclaration> = mapOf(
        "PUBLISH_5" to rootConverterByPath("/source/publishSubscribes/PUBLISH_5.fbt").convertFBType(),
        "SUBSCRIBE_5" to rootConverterByPath("/source/publishSubscribes/SUBSCRIBE_5.fbt").convertFBType()
    )

    private fun getPublishSubscribeBlock(name: String): FBTypeDeclaration {
        return checkNotNull(publishSubscribeMap[name])
    }

    @Test
    fun testRevealDeclarations() {
        val sourcePath = "/source/testRevealDeclarations"
        val resultPath = "/results/testRevealDeclarations"
        val extendedAdapterType = rootConverterByPath("$sourcePath/EA.eadp").convertExtendedAdapterType()
        val leftBlock = createDocumentByPath("$resultPath/EA_network1.fbt")
        val rightBlock = createDocumentByPath("$resultPath/EA_network2.fbt")
        val leftAdapter = createDocumentByPath("$resultPath/Left_EA.adp")
        val middleAdapter = createDocumentByPath("$resultPath/Middle_EA.adp")
        val rightAdapter = createDocumentByPath("$resultPath/Right_EA.adp")
        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((extendedAdapterType as PlatformElement).node)
            val revealDeclarations = extendedAdapterUtils.revealDeclarations(extendedAdapterType, null)

            assertEqualStrings(leftBlock, assertNotNull(revealDeclarations.leftBlockDeclaration).toDocument())
            assertEqualStrings(rightBlock, assertNotNull(revealDeclarations.rightBlockDeclaration).toDocument())
            assertEqualStrings(leftAdapter, revealDeclarations.leftAdapter.toDocument())
            assertEqualStrings(middleAdapter, revealDeclarations.middleAdapter.toDocument())
            assertEqualStrings(rightAdapter, revealDeclarations.rightAdapter.toDocument())
        }
    }

    @Test
    fun testRevealAdapter() {
        val sourcePath = "/source/testRevealAdapter"
        val resultPath = "/results/testRevealAdapter"
        val extendedAdapterType = rootConverterByPath("$sourcePath/EA.eadp").convertExtendedAdapterType()
        val example = rootConverterByPath("$sourcePath/CompositeBlock.fbt").convertFBType()
        val baseBlock = rootConverterByPath("$sourcePath/BaseBlock.fbt").convertFBType()
        val leftBlock = createDocumentByPath("$resultPath/EA_network1.fbt")
        val rightBlock = createDocumentByPath("$resultPath/EA_network2.fbt")
        val leftAdapter = createDocumentByPath("$resultPath/Left_EA.adp")
        val middleAdapter = createDocumentByPath("$resultPath/Middle_EA.adp")
        val rightAdapter = createDocumentByPath("$resultPath/Right_EA.adp")
        val routerAdapter = createDocumentByPath("$resultPath/RouterAdapter_EA.adp")

        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((baseBlock as PlatformElement).node)
            model.addRootNode((extendedAdapterType as PlatformElement).node)
            model.addRootNode((example as PlatformElement).node)

            val revealDeclarations = extendedAdapterUtils.revealAdapter(extendedAdapterType, model)

            assertEqualStrings(leftBlock, assertNotNull(revealDeclarations.leftBlockDeclaration).toDocument())
            assertEqualStrings(rightBlock, assertNotNull(revealDeclarations.rightBlockDeclaration).toDocument())
            assertEqualStrings(leftAdapter, revealDeclarations.leftAdapter.toDocument())
            assertEqualStrings(middleAdapter, revealDeclarations.middleAdapter.toDocument())
            assertEqualStrings(rightAdapter, revealDeclarations.rightAdapter.toDocument())
            assertEqualStrings(routerAdapter, assertNotNull(revealDeclarations.routerAdapter?.toDocument()))
            checkNode(model, "$resultPath/CompositeBlock.fbt", "CompositeBlock")
            checkNode(model, "$resultPath/EA_2_leftSwitch.fbt", "EA_2_leftSwitch")
            checkNode(model, "$resultPath/EA_2_rightSwitch.fbt", "EA_2_rightSwitch")
            checkNode(model, "$resultPath/EA_2_router.fbt", "EA_2_router")
        }
    }

    @Test
    fun testRevealAdapterWithNetLeft() {
        val sourcePath = "/source/testRevealAdapter"
        val resultPath = "/results/testRevealAdapter"
        val networkPath = "/results/resourceNetworkBlocks"
        val extendedAdapterType = rootConverterByPath("$sourcePath/EA.eadp").convertExtendedAdapterType()
        val composite = rootConverterByPath("$sourcePath/CompositeBlockWithoutConnections.fbt").convertFBType()
        val baseBlock = rootConverterByPath("$sourcePath/BaseBlock.fbt").convertFBType()
        val routerAdapter = createDocumentByPath("$resultPath/RouterAdapter_EA.adp")

        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((baseBlock as PlatformElement).node)
            model.addRootNode((extendedAdapterType as PlatformElement).node)
            model.addRootNode((composite as PlatformElement).node)
            model.addRootNode((publishSubscribeMap["PUBLISH_5"] as PlatformElement).node)
            model.addRootNode((publishSubscribeMap["SUBSCRIBE_5"] as PlatformElement).node)
            val revealDeclarations = extendedAdapterUtils.revealDeclarations(extendedAdapterType, model)
            val functionBlockDeclaration =
                composite.cast<CompositeFBTypeDeclaration>().network.functionBlocks.first { it.name == "BaseBlock1" }
            extendedAdapterUtils.revealAdapterWithNet(
                revealResult = revealDeclarations,
                block = functionBlockDeclaration,
                port = functionBlockDeclaration.type.plugPorts[0],
                count = 2,
                model = model,
            )

            assertEqualStrings(routerAdapter, assertNotNull(revealDeclarations.routerAdapter?.toDocument()))
            checkNode(model, "$networkPath/LeftCompositeBlockWithoutConnections.fbt", "CompositeBlockWithoutConnections")
            checkNode(model, "$networkPath/EA_LeftPublishSubscribeAdapter_0.fbt", "EA_LeftPublishSubscribeAdapter_0")
            checkNode(model, "$networkPath/EA_EventToNumberAdapter_4.fbt", "EA_EventToNumberAdapter_4")
            checkNode(model, "$networkPath/EA_NumberToEventAdapter_4.fbt", "EA_NumberToEventAdapter_4")
        }
    }

    @Test
    fun testRevealAdapterWithNetRight() {
        val sourcePath = "/source/testRevealAdapter"
        val resultPath = "/results/testRevealAdapter"
        val networkPath = "/results/resourceNetworkBlocks"
        val extendedAdapterType = rootConverterByPath("$sourcePath/EA.eadp").convertExtendedAdapterType()
        val composite = rootConverterByPath("$sourcePath/CompositeBlockWithoutConnections.fbt").convertFBType()
        val baseBlock = rootConverterByPath("$sourcePath/BaseBlock.fbt").convertFBType()
        val routerAdapter = createDocumentByPath("$resultPath/RouterAdapter_EA.adp")

        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())
            model.addRootNode((baseBlock as PlatformElement).node)
            model.addRootNode((extendedAdapterType as PlatformElement).node)
            model.addRootNode((composite as PlatformElement).node)
            model.addRootNode((publishSubscribeMap["PUBLISH_5"] as PlatformElement).node)
            model.addRootNode((publishSubscribeMap["SUBSCRIBE_5"] as PlatformElement).node)
            val revealDeclarations = extendedAdapterUtils.revealDeclarations(extendedAdapterType, model)
            val functionBlockDeclaration =
                composite.cast<CompositeFBTypeDeclaration>().network.functionBlocks.first { it.name == "BaseBlock1" }
            extendedAdapterUtils.revealAdapterWithNet(
                revealResult = revealDeclarations,
                block = functionBlockDeclaration,
                port = functionBlockDeclaration.type.socketPorts[0],
                count = 2,
                model = model,
            )

            assertEqualStrings(routerAdapter, assertNotNull(revealDeclarations.routerAdapter?.toDocument()))
            checkNode(model, "$networkPath/RightCompositeBlockWithoutConnections.fbt", "CompositeBlockWithoutConnections")
            checkNode(model, "$networkPath/EA_RightPublishSubscribeAdapter_1.fbt", "EA_RightPublishSubscribeAdapter_1")
            checkNode(model, "$networkPath/EA_EventToNumberAdapter_4.fbt", "EA_EventToNumberAdapter_4")
            checkNode(model, "$networkPath/EA_NumberToEventAdapter_4.fbt", "EA_NumberToEventAdapter_4")
        }
    }

    private fun checkNode(model: SModel, path: String, nodeName: String) {
        val example = createDocumentByPath(path)
        val nodes = model.rootNodes.toList()
        assertEqualStrings(
            example,
            assertNotNull(repository.adapterOrNull<Declaration>(
                nodes.first { it.name == nodeName }
            )).toDocument()
        )
    }
}

private fun assertEqualStrings(expected: Document, actual: Document) =
    assertEquals(toString(expected), toString(actual))

private fun toString(document: Document): String = XMLOutputter(Format.getPrettyFormat()).outputString(document)

private fun Declaration.toDocument(): Document = RootDeclarationPrinter(this).print()
