package org.fbme.integration.nxt.importer;

import jetbrains.mps.smodel.SModelId;
import jetbrains.mps.smodel.tempmodel.TempModuleOptions;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;
import jetbrains.mps.util.JDOMUtil;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.platform.converter.PlatformConverter;
import org.fbme.ide.platform.testing.PlatformTestBase;
import org.fbme.ide.platform.testing.PlatformTestRunner;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.parser.RootConverter;
import org.jdom.JDOMException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;

@RunWith(PlatformTestRunner.class)
public class BasicFbTypeNxtImporterTest extends PlatformTestBase {

    @BeforeClass
    public static void setup() {
        PlatformConverter.installConfigFactory(NxtImporterConfiguration.FACTORY);
    }

    @Test
    public void parseTest1() {
        /*InputStream stream = BasicFbTypeNxtImporterTest.class.getResourceAsStream("/CSWI_Agent.fbt" );
        getProject().getModelAccess().executeCommand(() -> {
            org.jetbrains.mps.openapi.model.SModel model = TemporaryModels.getInstance().create(false, false, null, TempModuleOptions.forDefaultModule());
            FBTypeDeclaration fbType = createConverter(stream, model.getReference()).convertFBType();
            Assert.assertNotNull(fbType);
            model.addRootNode(((PlatformElement) fbType).getNode());

            modelSetup(model);

            var network = ((CompositeFBTypeDeclaration) fbType).getNetwork();
            var factory = getFactory();
            CompositeCreator creator = new CompositeCreator();
            creator.launch(network, model, factory);
        });*/


//        InputStream stream = BasicFbTypeNxtImporterTest.class.getResourceAsStream("/CSWI_Agent.fbt");
//        FBTypeDeclaration fbType = createConverter(stream).convertFBType();
    }

    private void modelSetup(SModel model) {
        List<String> filenames = Arrays.asList("boolMerge.fbt", "CloseOpen.fbt", "CSWI_Interpreter.fbt",
                "CSWI_Plan_FaultIsolation.fbt", "CSWI_Plan_FaultLocated.fbt", "CSWI_Plan_GetHelp.fbt", "CSWI_Plan_ProvideAlternativeSupply.fbt",
                "CSWI_Plan_Restore.fbt", "CSWI_Reactive_FaultIsolatedKeeper.fbt", "CSWI_Reactive_operateXCBR.fbt", "CSWI_Tie_Agent.fbt",
                "CSWITie_Interpreter.fbt", "E_DELAY.fbt", "FaultRestore.fbt", "IntentionStack.fbt", "mergeEventBool.fbt", "mergeRealBool.fbt", "PIOC_Agent.fbt",
                "PIOC_Interpreter.fbt", "PIOC_Plan_LocateFault.fbt", "PIOC_Plan_Lockout.fbt", "PIOC_Plan_Restore.fbt",
                "PIOC_Reactive_StateKeeper.fbt", "PIOC_Reactive_StateKeeper_v1.fbt", "PTRC_Agent.fbt", "PTRC_reactive.fbt",
                "publish_5_5.fbt", "RealMerge.fbt", "RREC_Agent.fbt", "RREC_Reactive.fbt", "stringMerge.fbt", "Subscribe_5_5.fbt",
                "TCTR_Agent.fbt", "TCTR_reactive_Fault.fbt", "TCTR_Reactive_StateChange.fbt", "Tie_Interpreter.fbt",
                "Tie_Plan_FindAlternativeSupply.fbt", "Tie_Plan_Help.fbt", "Tie_Plan_InAlternativeSupplyMode.fbt", "Tie_Plan_Restore.fbt",
                "Tie_Reactive_OperateLocalXCBR.fbt", "XCBR_Agent.fbt", "XCBR_Rective_Operate.fbt");
        for (String filename : filenames) {
            addNodeToModel(model, "/" + filename);
        }
    }

    private void addNodeToModel(SModel model, String filename) {
        InputStream stream = BasicFbTypeNxtImporterTest.class.getResourceAsStream(filename);
        FBTypeDeclaration fbType = createConverter(stream, model.getReference()).convertFBType();
        model.addRootNode(((PlatformElement) fbType).getNode());
    }

    private RootConverter createConverter(InputStream stream, SModelReference reference) {
        try {
            return PlatformConverter.create(getRepository(), reference, JDOMUtil.loadDocument(stream));
        } catch (JDOMException | IOException e) {
            throw new IllegalStateException(e);
        }
    }

    @NotNull
    private SModelReference getTestModel() {
        return new jetbrains.mps.smodel.SModelReference(null, SModelId.generate(), new SModelName("testModel" ));
    }
}
