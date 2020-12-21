package org.fbme.ide.platform.adapters;


import org.fbme.ide.platform.testing.PlatformTestBase;
import org.fbme.ide.platform.testing.PlatformTestRunner;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(PlatformTestRunner.class)
public class IEC61499FactoryTest extends PlatformTestBase {

    @Test
    public void createAdapterTypeDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestAdapterTypeDeclaration");
        AdapterTypeDeclaration element = getFactory().createAdapterTypeDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestAdapterTypeDeclaration", element.getName());
    }

    @Test
    public void createAlgorithmDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestAlgorithmDeclaration");
        AlgorithmDeclaration element = getFactory().createAlgorithmDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestAlgorithmDeclaration", element.getName());
    }

    @Test
    public void createStAlgorithmBody() {
        AlgorithmBody.ST element = getFactory().createAlgorithmBody(AlgorithmLanguage.ST);
        Assert.assertNotNull(element);
        Assert.assertSame(AlgorithmLanguage.ST, element.getLanguage());
    }

    @Test
    public void createApplicationDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestApplicationDeclaration");
        ApplicationDeclaration element = getFactory().createApplicationDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestApplicationDeclaration", element.getName());
    }

    @Test
    public void createBasicFBTypeDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestBasicFBTypeDeclaration");
        BasicFBTypeDeclaration element = getFactory().createBasicFBTypeDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestBasicFBTypeDeclaration", element.getName());
    }

    @Test
    public void createCompositeFBTypeDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestCompositeFBTypeDeclaration");
        CompositeFBTypeDeclaration element = getFactory().createCompositeFBTypeDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestCompositeFBTypeDeclaration", element.getName());
    }

    @Test
    public void createDeviceDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestDeviceDeclaration");
        DeviceDeclaration element = getFactory().createDeviceDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestDeviceDeclaration", element.getName());
    }

    @Test
    public void createDeviceTypeDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestDeviceTypeDeclaration");
        DeviceTypeDeclaration element = getFactory().createDeviceTypeDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestDeviceTypeDeclaration", element.getName());
    }

    @Test
    public void createParameterAssignment() {
        ParameterAssignment element = getFactory().createParameterAssignment();
        Assert.assertNotNull(element);
    }

    @Test
    public void createEventAssociation() {
        EventAssociation element = getFactory().createEventAssociation();
        Assert.assertNotNull(element);
    }

    @Test
    public void createEventDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestEventDeclaration");
        EventDeclaration element = getFactory().createEventDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestEventDeclaration", element.getName());
    }

    @Test
    public void createFBTypeReference() {
        FBTypeReference element = getFactory().createFBTypeReference();
        Assert.assertNotNull(element);
    }

    @Test
    public void createLink() {
        Link element = getFactory().createLink();
        Assert.assertNotNull(element);
    }

    @Test
    public void createMapping() {
        Mapping element = getFactory().createMapping();
        Assert.assertNotNull(element);
    }

    @Test
    public void createParameterDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestParameterDeclaration");
        ParameterDeclaration element = getFactory().createParameterDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestParameterDeclaration", element.getName());
    }

    @Test
    public void createResourceDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestResourceDeclaration");
        ResourceDeclaration element = getFactory().createResourceDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestResourceDeclaration", element.getName());
    }

    @Test
    public void createResourceTypeDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestResourceTypeDeclaration");
        ResourceTypeDeclaration element = getFactory().createResourceTypeDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestResourceTypeDeclaration", element.getName());
    }

    @Test
    public void createResourceTypeReference() {
        ResourceTypeReference element = getFactory().createResourceTypeReference();
        Assert.assertNotNull(element);
    }

    @Test
    public void createSegmentDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestSegmentDeclaration");
        SegmentDeclaration element = getFactory().createSegmentDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestSegmentDeclaration", element.getName());
    }

    @Test
    public void createSegmentTypeDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestSegmentTypeDeclaration");
        SegmentTypeDeclaration element = getFactory().createSegmentTypeDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestSegmentTypeDeclaration", element.getName());
    }

    @Test
    public void createServiceInterfaceFBTypeDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestServiceInterfaceFBTypeDeclaration");
        ServiceInterfaceFBTypeDeclaration element = getFactory().createServiceInterfaceFBTypeDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestServiceInterfaceFBTypeDeclaration", element.getName());
    }

    @Test
    public void createSubapplicationTypeDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestSubapplicationTypeDeclaration");
        SubapplicationTypeDeclaration element = getFactory().createSubapplicationTypeDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestSubapplicationTypeDeclaration", element.getName());
    }

    @Test
    public void createSystemDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestSystemDeclaration");
        SystemDeclaration element = getFactory().createSystemDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestSystemDeclaration", element.getName());
    }

    @Test
    public void createStateAction() {
        StateAction element = getFactory().createStateAction();
        Assert.assertNotNull(element);
    }

    @Test
    public void createStateDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestStateDeclaration");
        StateDeclaration element = getFactory().createStateDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestStateDeclaration", element.getName());
    }

    @Test
    public void createStateTransition() {
        StateTransition element = getFactory().createStateTransition();
        Assert.assertNotNull(element);
    }

    @Test
    public void createFunctionBlockDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestFunctionBlockDeclaration");
        FunctionBlockDeclaration element = getFactory().createFunctionBlockDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestFunctionBlockDeclaration", element.getName());
    }

    @Test
    public void createSubapplicationDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestSubapplicationDeclaration");
        SubapplicationDeclaration element = getFactory().createSubapplicationDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestSubapplicationDeclaration", element.getName());
    }

    @Test
    public void createPlugDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestPlugDeclaration");
        PlugDeclaration element = getFactory().createPlugDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestPlugDeclaration", element.getName());
    }

    @Test
    public void createSocketDeclaration() {
        StringIdentifier identifier = new StringIdentifier("TestSocketDeclaration");
        SocketDeclaration element = getFactory().createSocketDeclaration(identifier);
        Assert.assertNotNull(element);
        Assert.assertEquals("TestSocketDeclaration", element.getName());
    }

    @Test
    public void createFBNetworkConnection() {
        FBNetworkConnection element = getFactory().createFBNetworkConnection(EntryKind.DATA);
        Assert.assertNotNull(element);
        Assert.assertSame(EntryKind.DATA, element.getKind());
    }
}
