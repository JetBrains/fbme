package org.fbme.integration.nxt.importer;

import jetbrains.mps.smodel.tempmodel.TempModuleOptions;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.platform.converter.PlatformConverter;
import org.fbme.ide.platform.testing.LoadFrom;
import org.fbme.ide.platform.testing.PlatformTestBase;
import org.fbme.ide.platform.testing.PlatformTestRunner;
import org.fbme.integration.nxt.importer.converter.NetworkConverter;
import org.fbme.integration.nxt.importer.graph.model.Graph;
import org.fbme.integration.nxt.importer.network.NetworksAnalyser;
import org.fbme.integration.nxt.importer.network.RefactoringRequest;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.mps.openapi.model.SModel;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import static org.fbme.ide.platform.converter.PlatformConverter.STANDARD_CONFIG_FACTORY;

@RunWith(PlatformTestRunner.class)
@LoadFrom(module = "org.fbme.integration.nxt")
public class NetworkTest extends PlatformTestBase {
    @Test
    public void convertTest() {
        getProject().getModelAccess().executeCommandInEDT(() -> {
            org.jetbrains.mps.openapi.model.SModel model = TemporaryModels.getInstance().create(false, false, null, TempModuleOptions.forDefaultModule());
            addNodeToModel(model, "/btb1.fbt", STANDARD_CONFIG_FACTORY);
            addNodeToModel(model, "/btb2.fbt", STANDARD_CONFIG_FACTORY);
            addNodeToModel(model, "/btb3.fbt", STANDARD_CONFIG_FACTORY);

            CompositeFBTypeDeclaration compositeFB = (CompositeFBTypeDeclaration) addNodeToModel(model, "/ctb1.fbt", STANDARD_CONFIG_FACTORY);

            FBNetwork network = compositeFB.getNetwork();
            NetworkConverter converter = new NetworkConverter();
            Graph graph = converter.convert(network);

            Assert.assertEquals(network.getFunctionBlocks().size(), graph.getVertices().size());
            Assert.assertEquals(6, graph.getWeightedEdges().size());
        });
    }

    @Test
    public void networksAnalyserTest1() {
        getProject().getModelAccess().executeCommandInEDT(() -> {
            org.jetbrains.mps.openapi.model.SModel model = TemporaryModels.getInstance().create(false, false, null, TempModuleOptions.forDefaultModule());
            addNodeToModel(model, "/BasicTestBlock1.fbt", STANDARD_CONFIG_FACTORY);
            CompositeFBTypeDeclaration compositeFB1 = (CompositeFBTypeDeclaration) addNodeToModel(model, "/CompositeTestBlock1.fbt", STANDARD_CONFIG_FACTORY);
            CompositeFBTypeDeclaration compositeFB2 = (CompositeFBTypeDeclaration) addNodeToModel(model, "/CompositeTestBlock2.fbt", STANDARD_CONFIG_FACTORY);
            List<CompositeFBTypeDeclaration> typeDeclarations = List.of(compositeFB1, compositeFB2);

            List<FBNetwork> networks =
                    typeDeclarations.stream().map(CompositeFBTypeDeclaration::getNetwork).collect(Collectors.toList());
            FBNetwork networkOne = networks.get(0);
            FBNetwork networkTwo = networks.get(1);
            Assert.assertEquals(2, networkOne.getFunctionBlocks().size());
            Assert.assertEquals(2, networkTwo.getFunctionBlocks().size());

            NetworksAnalyser analyser = new NetworksAnalyser();
            List<RefactoringRequest> requests = analyser.collectRequests(networks);
            Assert.assertEquals(1, requests.size());

            var factory = getFactory();
            CompositeFBTypeDeclaration compositeFB = analyser.processRequest(requests.get(0), model, factory);
            Assert.assertNotNull(compositeFB);

            FBNetwork compositeFBNetwork = compositeFB.getNetwork();
            int portCount = compositeFB.getInputEvents().size() + compositeFB.getOutputEvents().size() +
                    compositeFB.getInputParameters().size() + compositeFB.getOutputParameters().size();

            Assert.assertEquals(1, networkOne.getFunctionBlocks().size());
            Assert.assertEquals(compositeFB, networkOne.getFunctionBlocks().get(0).getTypeReference().getTarget());
            Assert.assertEquals(1, networkTwo.getFunctionBlocks().size());
            Assert.assertEquals(compositeFB, networkTwo.getFunctionBlocks().get(0).getTypeReference().getTarget());
            Assert.assertEquals(2, compositeFBNetwork.getFunctionBlocks().size());
            Assert.assertEquals(portCount, compositeFBNetwork.getEndpointCoordinates().size());
        });
    }

    @Test
    public void networksAnalyserTest2() {
        getProject().getModelAccess().executeCommandInEDT(() -> {
            org.jetbrains.mps.openapi.model.SModel model = TemporaryModels.getInstance().create(false, false, null, TempModuleOptions.forDefaultModule());
            addNodeToModel(model, "/BasicTestBlock1.fbt", STANDARD_CONFIG_FACTORY);
            addNodeToModel(model, "/BasicTestBlock2.fbt", STANDARD_CONFIG_FACTORY);
            addNodeToModel(model, "/BasicTestBlock3.fbt", STANDARD_CONFIG_FACTORY);
            CompositeFBTypeDeclaration compositeFB1 = (CompositeFBTypeDeclaration) addNodeToModel(model, "/CompositeTestBlock3.fbt", STANDARD_CONFIG_FACTORY);
            CompositeFBTypeDeclaration compositeFB2 = (CompositeFBTypeDeclaration) addNodeToModel(model, "/CompositeTestBlock4.fbt", STANDARD_CONFIG_FACTORY);
            CompositeFBTypeDeclaration compositeFB3 = (CompositeFBTypeDeclaration) addNodeToModel(model, "/CompositeTestBlock5.fbt", STANDARD_CONFIG_FACTORY);
            List<CompositeFBTypeDeclaration> typeDeclarations = List.of(compositeFB1, compositeFB2, compositeFB3);

            List<FBNetwork> networks =
                    typeDeclarations.stream().map(CompositeFBTypeDeclaration::getNetwork).collect(Collectors.toList());
            FBNetwork networkOne = networks.get(0);
            FBNetwork networkTwo = networks.get(1);
            FBNetwork networkThree = networks.get(2);
            Assert.assertEquals(3, networkOne.getFunctionBlocks().size());
            Assert.assertEquals(3, networkTwo.getFunctionBlocks().size());
            Assert.assertEquals(2, networkThree.getFunctionBlocks().size());

            NetworksAnalyser analyser = new NetworksAnalyser();
            List<RefactoringRequest> requests = analyser.collectRequests(networks);
            Assert.assertEquals(1, requests.size());

            var factory = getFactory();
            CompositeFBTypeDeclaration compositeFB = analyser.processRequest(requests.get(0), model, factory);
            Assert.assertNotNull(compositeFB);

            FBNetwork compositeFBNetwork = compositeFB.getNetwork();
            int portCount = compositeFB.getInputEvents().size() + compositeFB.getOutputEvents().size() +
                    compositeFB.getInputParameters().size() + compositeFB.getOutputParameters().size();

            Assert.assertEquals(2, networkOne.getFunctionBlocks().size());
            Assert.assertEquals(compositeFB, networkOne.getFunctionBlocks().get(1).getTypeReference().getTarget());
            Assert.assertEquals(2, networkTwo.getFunctionBlocks().size());
            Assert.assertEquals(compositeFB, networkTwo.getFunctionBlocks().get(1).getTypeReference().getTarget());
            Assert.assertEquals(1, networkThree.getFunctionBlocks().size());
            Assert.assertEquals(compositeFB, networkThree.getFunctionBlocks().get(0).getTypeReference().getTarget());
            Assert.assertEquals(2, compositeFBNetwork.getFunctionBlocks().size());
            Assert.assertEquals(portCount, compositeFBNetwork.getEndpointCoordinates().size());
        });
    }

    @Test
    public void networksAnalyserTest3() {
        getProject().getModelAccess().executeCommandInEDT(() -> {
            org.jetbrains.mps.openapi.model.SModel model = TemporaryModels.getInstance().create(false, false, null, TempModuleOptions.forDefaultModule());
            addNodeToModel(model, "/btb1.fbt", STANDARD_CONFIG_FACTORY);
            addNodeToModel(model, "/btb2.fbt", STANDARD_CONFIG_FACTORY);
            addNodeToModel(model, "/btb3.fbt", STANDARD_CONFIG_FACTORY);
            CompositeFBTypeDeclaration compositeFB1 = (CompositeFBTypeDeclaration) addNodeToModel(model, "/ctb1.fbt", STANDARD_CONFIG_FACTORY);
            List<FBNetwork> networks = List.of(compositeFB1.getNetwork());

            Assert.assertEquals(9, compositeFB1.getNetwork().getFunctionBlocks().size());

            NetworksAnalyser analyser = new NetworksAnalyser();
            var factory = getFactory();
            int requestSize = analyser.process(networks, model, factory);
            Assert.assertEquals(1, requestSize);
            Assert.assertEquals(3, compositeFB1.getNetwork().getFunctionBlocks().size());
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
