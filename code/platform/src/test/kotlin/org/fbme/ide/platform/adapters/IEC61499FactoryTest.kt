package org.fbme.ide.platform.adapters

import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.PlatformTestRunner
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(PlatformTestRunner::class)
class IEC61499FactoryTest : PlatformTestBase() {
    @Test
    fun createAdapterTypeDeclaration() {
        val identifier = StringIdentifier("TestAdapterTypeDeclaration")
        val element = factory.createAdapterTypeDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestAdapterTypeDeclaration", element.name)
    }

    @Test
    fun createAlgorithmDeclaration() {
        val identifier = StringIdentifier("TestAlgorithmDeclaration")
        val element = factory.createAlgorithmDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestAlgorithmDeclaration", element.name)
    }

    @Test
    fun createStAlgorithmBody() {
        val element = factory.createAlgorithmBody(AlgorithmLanguage.ST)
        Assert.assertNotNull(element)
        Assert.assertSame(AlgorithmLanguage.ST, element.language)
    }

    @Test
    fun createApplicationDeclaration() {
        val identifier = StringIdentifier("TestApplicationDeclaration")
        val element = factory.createApplicationDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestApplicationDeclaration", element.name)
    }

    @Test
    fun createBasicFBTypeDeclaration() {
        val identifier = StringIdentifier("TestBasicFBTypeDeclaration")
        val element = factory.createBasicFBTypeDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestBasicFBTypeDeclaration", element.name)
    }

    @Test
    fun createCompositeFBTypeDeclaration() {
        val identifier = StringIdentifier("TestCompositeFBTypeDeclaration")
        val element = factory.createCompositeFBTypeDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestCompositeFBTypeDeclaration", element.name)
    }

    @Test
    fun createDeviceDeclaration() {
        val identifier = StringIdentifier("TestDeviceDeclaration")
        val element = factory.createDeviceDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestDeviceDeclaration", element.name)
    }

    @Test
    fun createDeviceTypeDeclaration() {
        val identifier = StringIdentifier("TestDeviceTypeDeclaration")
        val element = factory.createDeviceTypeDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestDeviceTypeDeclaration", element.name)
    }

    @Test
    fun createParameterAssignment() {
        val element = factory.createParameterAssignment()
        Assert.assertNotNull(element)
    }

    @Test
    fun createEventAssociation() {
        val element = factory.createEventAssociation()
        Assert.assertNotNull(element)
    }

    @Test
    fun createEventDeclaration() {
        val identifier = StringIdentifier("TestEventDeclaration")
        val element = factory.createEventDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestEventDeclaration", element.name)
    }

    @Test
    fun createFBTypeReference() {
        val element = factory.createFBTypeReference()
        Assert.assertNotNull(element)
    }

    @Test
    fun createLink() {
        val element = factory.createLink()
        Assert.assertNotNull(element)
    }

    @Test
    fun createMapping() {
        val element = factory.createMapping()
        Assert.assertNotNull(element)
    }

    @Test
    fun createParameterDeclaration() {
        val identifier = StringIdentifier("TestParameterDeclaration")
        val element = factory.createParameterDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestParameterDeclaration", element.name)
    }

    @Test
    fun createResourceDeclaration() {
        val identifier = StringIdentifier("TestResourceDeclaration")
        val element = factory.createResourceDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestResourceDeclaration", element.name)
    }

    @Test
    fun createResourceTypeDeclaration() {
        val identifier = StringIdentifier("TestResourceTypeDeclaration")
        val element = factory.createResourceTypeDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestResourceTypeDeclaration", element.name)
    }

    @Test
    fun createResourceTypeReference() {
        val element = factory.createResourceTypeReference()
        Assert.assertNotNull(element)
    }

    @Test
    fun createSegmentDeclaration() {
        val identifier = StringIdentifier("TestSegmentDeclaration")
        val element = factory.createSegmentDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestSegmentDeclaration", element.name)
    }

    @Test
    fun createSegmentTypeDeclaration() {
        val identifier = StringIdentifier("TestSegmentTypeDeclaration")
        val element = factory.createSegmentTypeDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestSegmentTypeDeclaration", element.name)
    }

    @Test
    fun createServiceInterfaceFBTypeDeclaration() {
        val identifier = StringIdentifier("TestServiceInterfaceFBTypeDeclaration")
        val element = factory.createServiceInterfaceFBTypeDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestServiceInterfaceFBTypeDeclaration", element.name)
    }

    @Test
    fun createSubapplicationTypeDeclaration() {
        val identifier = StringIdentifier("TestSubapplicationTypeDeclaration")
        val element = factory.createSubapplicationTypeDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestSubapplicationTypeDeclaration", element.name)
    }

    @Test
    fun createSystemDeclaration() {
        val identifier = StringIdentifier("TestSystemDeclaration")
        val element = factory.createSystemDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestSystemDeclaration", element.name)
    }

    @Test
    fun createStateAction() {
        val element = factory.createStateAction()
        Assert.assertNotNull(element)
    }

    @Test
    fun createStateDeclaration() {
        val identifier = StringIdentifier("TestStateDeclaration")
        val element = factory.createStateDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestStateDeclaration", element.name)
    }

    @Test
    fun createStateTransition() {
        val element = factory.createStateTransition()
        Assert.assertNotNull(element)
    }

    @Test
    fun createFunctionBlockDeclaration() {
        val identifier = StringIdentifier("TestFunctionBlockDeclaration")
        val element = factory.createFunctionBlockDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestFunctionBlockDeclaration", element.name)
    }

    @Test
    fun createSubapplicationDeclaration() {
        val identifier = StringIdentifier("TestSubapplicationDeclaration")
        val element = factory.createSubapplicationDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestSubapplicationDeclaration", element.name)
    }

    @Test
    fun createPlugDeclaration() {
        val identifier = StringIdentifier("TestPlugDeclaration")
        val element = factory.createPlugDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestPlugDeclaration", element.name)
    }

    @Test
    fun createSocketDeclaration() {
        val identifier = StringIdentifier("TestSocketDeclaration")
        val element = factory.createSocketDeclaration(identifier)
        Assert.assertNotNull(element)
        Assert.assertEquals("TestSocketDeclaration", element.name)
    }

    @Test
    fun createFBNetworkConnection() {
        val element = factory.createFBNetworkConnection(EntryKind.DATA)
        Assert.assertNotNull(element)
        Assert.assertSame(EntryKind.DATA, element.kind)
    }
}
