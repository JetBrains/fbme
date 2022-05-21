package org.fbme.integration.nxt.importer;

import jetbrains.mps.smodel.tempmodel.TempModuleOptions;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.platform.converter.PlatformConverter;
import org.fbme.ide.platform.testing.LoadFrom;
import org.fbme.ide.platform.testing.PlatformTestBase;
import org.fbme.ide.platform.testing.PlatformTestRunner;
import org.fbme.integration.nxt.importer.network.adapter.AdapterCreator;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.jetbrains.mps.openapi.model.SModel;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.util.List;
import java.util.stream.Collectors;

import static org.fbme.ide.platform.converter.PlatformConverter.STANDARD_CONFIG_FACTORY;

@RunWith(PlatformTestRunner.class)
@LoadFrom(module = "org.fbme.integration.nxt")
public class AdapterCreatorTest extends PlatformTestBase {
    @Test
    public void adapterCreationTest() {
        getProject().getModelAccess().executeCommandInEDT(() -> {
            org.jetbrains.mps.openapi.model.SModel model = TemporaryModels.getInstance().create(false, false, null, TempModuleOptions.forDefaultModule());

            addNodeToModel(model, "/btb1.fbt", STANDARD_CONFIG_FACTORY);
            addNodeToModel(model, "/btb2.fbt", STANDARD_CONFIG_FACTORY);
            CompositeFBTypeDeclaration compositeFB = (CompositeFBTypeDeclaration) addNodeToModel(model, "/ctb2.fbt", STANDARD_CONFIG_FACTORY);

            FBNetwork fbNetwork = compositeFB.getNetwork();
            List<FunctionBlockDeclaration> functionBlockDeclarationList = fbNetwork.getFunctionBlocks();
            Assert.assertEquals(2, functionBlockDeclarationList.size());
            Assert.assertEquals(10, fbNetwork.getEventConnections().size());
            Assert.assertEquals(10, fbNetwork.getDataConnections().size());
            Assert.assertEquals(0, fbNetwork.getAdapterConnections().size());

            var factory = getFactory();
            AdapterCreator adapterCreator = new AdapterCreator();
            adapterCreator.create(fbNetwork, functionBlockDeclarationList.get(0), functionBlockDeclarationList.get(1), model, factory);

            Assert.assertEquals(5, fbNetwork.getEventConnections().size());
            Assert.assertEquals(5, fbNetwork.getDataConnections().size());
            Assert.assertEquals(1, fbNetwork.getAdapterConnections().size());

            CompositeFBTypeDeclaration adapterCBDeclaration1 = (CompositeFBTypeDeclaration) fbNetwork.getFunctionBlocks().get(0).getTypeReference().getTarget();
            CompositeFBTypeDeclaration adapterCBDeclaration2 = (CompositeFBTypeDeclaration) fbNetwork.getFunctionBlocks().get(1).getTypeReference().getTarget();

            Assert.assertEquals("btb1_adapter", adapterCBDeclaration1.getName());
            Assert.assertEquals("btb2_adapter", adapterCBDeclaration2.getName());
            Assert.assertEquals(1, adapterCBDeclaration1.getPlugs().size());
            Assert.assertEquals(0, adapterCBDeclaration1.getSockets().size());
            Assert.assertEquals(0, adapterCBDeclaration2.getPlugs().size());
            Assert.assertEquals(1, adapterCBDeclaration2.getSockets().size());
            Assert.assertEquals(adapterCBDeclaration1, functionBlockDeclarationList.get(0).getContainer().getContainer());
            Assert.assertEquals(adapterCBDeclaration2, functionBlockDeclarationList.get(1).getContainer().getContainer());

            FBNetwork adapterNetwork1 = adapterCBDeclaration1.getNetwork();
            FBNetwork adapterNetwork2 = adapterCBDeclaration2.getNetwork();
            Assert.assertEquals(10, adapterNetwork1.getEventConnections().size());
            Assert.assertEquals(10, adapterNetwork1.getDataConnections().size());
            Assert.assertEquals(10, adapterNetwork2.getEventConnections().size());
            Assert.assertEquals(10, adapterNetwork2.getDataConnections().size());
        });
    }

    private FBTypeDeclaration addNodeToModel(
            SModel model,
            String filename,
            PlatformConverter.DefaultConfigurationFactory factory
    ) {
        FBTypeDeclaration fbType = rootConverterByPath(filename, factory).convertFBType();
        Assert.assertNotNull(fbType);
        model.addRootNode(((PlatformElement) fbType).getNode());
        return fbType;
    }
}
