<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:033fa9ec-1120-40c6-8124-b58f4474b999(org.fbme.ide.build.plugins)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="177eUH8B7jw">
    <property role="2DA0ip" value="../.." />
    <property role="TrG5h" value="fbme_source_plugins" />
    <node concept="1E1JtA" id="177eUH8B7m3" role="3989C9">
      <property role="TrG5h" value="org.fbme.lib" />
      <property role="3LESm3" value="1db6de07-b355-4c0f-9979-75b4ac1e8215" />
      <property role="BnDLt" value="true" />
      <node concept="1BurEX" id="2g7iZ5XX_es" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_et" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_eu" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_ev" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_ew" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.library" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_ex" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_eL" role="2Ry0An">
                    <property role="2Ry0Am" value="antlr4-runtime-4.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="2g7iZ5XX_d8" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_d9" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_df" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_dk" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_dp" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.library" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_du" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_dz" role="2Ry0An">
                    <property role="2Ry0Am" value="library.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="DMI5IaKFsE" role="3989C9">
      <property role="TrG5h" value="org.fbme.platform.lib" />
      <property role="3LESm3" value="ce018f97-56b9-4ee7-9b5f-2d462b6628bf" />
      <property role="BnDLt" value="true" />
      <node concept="1BurEX" id="2g7iZ5XX_d_" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_dA" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_dB" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_dC" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_dD" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.platform" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_dE" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_dN" role="2Ry0An">
                    <property role="2Ry0Am" value="language.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="2g7iZ5XX_dP" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_dQ" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_dR" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_dS" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_dT" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.platform" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_dU" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_ea" role="2Ry0An">
                    <property role="2Ry0Am" value="platform.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="6AO1fiEOKn8" role="3989C9">
      <property role="TrG5h" value="org.fbme.scenes.lib" />
      <property role="3LESm3" value="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9" />
      <property role="BnDLt" value="true" />
      <node concept="1BurEX" id="2g7iZ5XX_ec" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_ed" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_ee" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_ef" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_eg" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.scenes" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_eh" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_eq" role="2Ry0An">
                    <property role="2Ry0Am" value="scenes.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="6AO1fiESjIi" role="3989C9">
      <property role="TrG5h" value="org.fbme.richediting.lib" />
      <property role="3LESm3" value="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5" />
      <property role="BnDLt" value="true" />
      <node concept="1BurEX" id="2g7iZ5XX_f1" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_f2" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_f3" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_f4" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_f5" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.richediting" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_f6" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_ff" role="2Ry0An">
                    <property role="2Ry0Am" value="org.eclipse.elk.alg.common-0.7.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="2g7iZ5XX_fh" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_fi" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_fj" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_fk" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_fl" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.richediting" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_fm" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_fA" role="2Ry0An">
                    <property role="2Ry0Am" value="org.eclipse.elk.alg.layered-0.7.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="2g7iZ5XX_fC" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_fD" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_fE" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_fF" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_fG" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.richediting" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_fH" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_g4" role="2Ry0An">
                    <property role="2Ry0Am" value="org.eclipse.elk.core-0.7.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="2g7iZ5XX_g6" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_g7" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_g8" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_g9" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_ga" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.richediting" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_gb" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_gD" role="2Ry0An">
                    <property role="2Ry0Am" value="org.eclipse.elk.graph-0.7.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="2g7iZ5XX_gF" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_gG" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_gH" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_gI" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_gJ" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.richediting" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_gK" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_hl" role="2Ry0An">
                    <property role="2Ry0Am" value="org.eclipse.emf.common-2.12.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="2g7iZ5XX_hn" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_ho" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_hp" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_hq" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_hr" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.richediting" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_hs" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_i8" role="2Ry0An">
                    <property role="2Ry0Am" value="org.eclipse.emf.ecore-2.12.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="2g7iZ5XX_ia" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_ib" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_ic" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_id" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_ie" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.richediting" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_if" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_j2" role="2Ry0An">
                    <property role="2Ry0Am" value="org.eclipse.emf.ecore.xmi-2.12.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="2g7iZ5XX_j4" role="3bR37C">
        <node concept="55IIr" id="2g7iZ5XX_j5" role="1BurEY">
          <node concept="2Ry0Ak" id="2g7iZ5XX_j6" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2g7iZ5XX_j7" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2g7iZ5XX_j8" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.richediting" />
                <node concept="2Ry0Ak" id="2g7iZ5XX_j9" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2g7iZ5XX_k6" role="2Ry0An">
                    <property role="2Ry0Am" value="richediting.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="2Ine_yKUjxR" role="3989C9">
      <property role="TrG5h" value="org.fbme.integration.nxt.lib" />
      <property role="3LESm3" value="00c8d7a5-e1fd-4a2c-bbdf-9d0d4ac80c94" />
      <property role="BnDLt" value="true" />
      <node concept="1BurEX" id="2Ine_yKUjxS" role="3bR37C">
        <node concept="55IIr" id="2Ine_yKUjxT" role="1BurEY">
          <node concept="2Ry0Ak" id="2Ine_yKUjxU" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="2Ine_yKUjxV" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="2Ine_yKUjxW" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.integration.nxt" />
                <node concept="2Ry0Ak" id="2Ine_yKUjxX" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2Ine_yKUj_8" role="2Ry0An">
                    <property role="2Ry0Am" value="nxt-integration.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="1EO1wDljU1B" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.smv-debugger.lib" />
      <property role="3LESm3" value="ea81373a-529d-4e5f-a3cf-1e9d8c08983c" />
      <node concept="1BurEX" id="1EO1wDlp0$U" role="3bR37C">
        <node concept="55IIr" id="1EO1wDlp0$V" role="1BurEY">
          <node concept="2Ry0Ak" id="1EO1wDlp0$W" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="1EO1wDlp0$X" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="1EO1wDlp0$Y" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.smvDebugger" />
                <node concept="2Ry0Ak" id="1EO1wDlp0$Z" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1EO1wDlp0_8" role="2Ry0An">
                    <property role="2Ry0Am" value="smv-debugger.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="1EO1wDljBs3" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.samples.statistics.lib" />
      <property role="3LESm3" value="7e52736a-b7d3-42d5-9933-2a61cbc70441" />
      <node concept="1BurEX" id="1EO1wDlp0_a" role="3bR37C">
        <node concept="55IIr" id="1EO1wDlp0_u" role="1BurEY">
          <node concept="2Ry0Ak" id="1EO1wDlp0_v" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="1EO1wDlp0_w" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="1EO1wDlp0_x" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.statistsics" />
                <node concept="2Ry0Ak" id="1EO1wDlp0_y" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1EO1wDlp0_z" role="2Ry0An">
                    <property role="2Ry0Am" value="statistics-plugin.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="4YrY9S5MVXg" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.debugger.lib" />
      <property role="3LESm3" value="c6b02c2c-6484-48c4-ab6e-40937aeede2e" />
      <node concept="1BurEX" id="5H1yg74QXi9" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXia" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXie" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXij" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXiy" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXiB" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXiG" role="2Ry0An">
                    <property role="2Ry0Am" value="animation-core-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXiI" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXiJ" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXiK" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXiL" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXiM" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXiN" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXj3" role="2Ry0An">
                    <property role="2Ry0Am" value="animation-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXj5" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXj6" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXj7" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXj8" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXj9" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXja" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXjx" role="2Ry0An">
                    <property role="2Ry0Am" value="debugger.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXjz" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXj$" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXj_" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXjA" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXjB" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXjC" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXk6" role="2Ry0An">
                    <property role="2Ry0Am" value="desktop-jvm-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXk8" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXk9" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXka" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXkb" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXkc" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXkd" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXkM" role="2Ry0An">
                    <property role="2Ry0Am" value="foundation-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXkO" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXkP" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXkQ" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXkR" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXkS" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXkT" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXl_" role="2Ry0An">
                    <property role="2Ry0Am" value="foundation-layout-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXmX" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXmY" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXmZ" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXn0" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXn1" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXn2" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXnP" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-coroutines-core-jvm-1.5.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXnR" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXnS" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXnT" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXnU" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXnV" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXnW" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXoQ" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-coroutines-swing-1.5.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXoS" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXoT" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXoU" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXoV" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXoW" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXoX" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXpY" role="2Ry0An">
                    <property role="2Ry0Am" value="material-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXq0" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXq1" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXq2" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXq3" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXq4" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXq5" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXrd" role="2Ry0An">
                    <property role="2Ry0Am" value="material-icons-core-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXrf" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXrg" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXrh" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXri" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXrj" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXrk" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXsz" role="2Ry0An">
                    <property role="2Ry0Am" value="material-icons-extended-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXs_" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXsA" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXsB" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXsC" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXsD" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXsE" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXu0" role="2Ry0An">
                    <property role="2Ry0Am" value="material-ripple-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXu2" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXu3" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXu4" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXu5" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXu6" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXu7" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXv$" role="2Ry0An">
                    <property role="2Ry0Am" value="runtime-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXvA" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXvB" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXvC" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXvD" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXvE" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXvF" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXxf" role="2Ry0An">
                    <property role="2Ry0Am" value="runtime-saveable-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXxh" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXxi" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXxj" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXxk" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXxl" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXxm" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXz1" role="2Ry0An">
                    <property role="2Ry0Am" value="skiko-jvm-0.5.9.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXz3" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXz4" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXz5" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXz6" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXz7" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXz8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QX$U" role="2Ry0An">
                    <property role="2Ry0Am" value="skiko-jvm-runtime-macos-arm64-0.5.9.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QX$W" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QX$X" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QX$Y" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QX$Z" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QX_0" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QX_1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXAU" role="2Ry0An">
                    <property role="2Ry0Am" value="ui-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXAW" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXAX" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXAY" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXAZ" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXB0" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXB1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXD1" role="2Ry0An">
                    <property role="2Ry0Am" value="ui-geometry-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXD3" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXD4" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXD5" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXD6" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXD7" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXD8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXFf" role="2Ry0An">
                    <property role="2Ry0Am" value="ui-graphics-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXFh" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXFi" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXFj" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXFk" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXFl" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXFm" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXH$" role="2Ry0An">
                    <property role="2Ry0Am" value="ui-text-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXHA" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXHB" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXHC" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXHD" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXHE" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXHF" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXK0" role="2Ry0An">
                    <property role="2Ry0Am" value="ui-tooling-preview-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXK2" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXK3" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXK4" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXK5" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXK6" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXK7" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXMz" role="2Ry0An">
                    <property role="2Ry0Am" value="ui-unit-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1BurEX" id="5H1yg74QXM_" role="3bR37C">
        <node concept="55IIr" id="5H1yg74QXMA" role="1BurEY">
          <node concept="2Ry0Ak" id="5H1yg74QXMB" role="iGT6I">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5H1yg74QXMC" role="2Ry0An">
              <property role="2Ry0Am" value="src-plugins" />
              <node concept="2Ry0Ak" id="5H1yg74QXMD" role="2Ry0An">
                <property role="2Ry0Am" value="fbme.debugger" />
                <node concept="2Ry0Ak" id="5H1yg74QXME" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5H1yg74QXPd" role="2Ry0An">
                    <property role="2Ry0Am" value="ui-util-desktop-1.0.0-beta5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="177eUH8B7jx" role="auvoZ" />
    <node concept="1l3spV" id="177eUH8B7jy" role="1l3spN">
      <node concept="398223" id="1wt__nLa3Ty" role="39821P">
        <node concept="3_J27D" id="1wt__nLa3T$" role="Nbhlr">
          <node concept="3Mxwew" id="1wt__nLa3TC" role="3MwsjC">
            <property role="3MwjfP" value="fbme.library" />
          </node>
        </node>
        <node concept="398223" id="1wt__nLa3U6" role="39821P">
          <node concept="3_J27D" id="1wt__nLa3U7" role="Nbhlr">
            <node concept="3Mxwew" id="1wt__nLa3Ua" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="1wt__nLa3Uc" role="39821P">
            <ref role="L2wRA" node="177eUH8B7m3" resolve="org.fbme.lib" />
          </node>
        </node>
        <node concept="398223" id="2g7iZ5XXA5J" role="39821P">
          <node concept="3_J27D" id="2g7iZ5XXA5L" role="Nbhlr">
            <node concept="3Mxwew" id="2g7iZ5XXA5T" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXA5V" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXA62" role="28jJRO">
              <node concept="2Ry0Ak" id="1EO1wDlkleN" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="1EO1wDlkleW" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="1EO1wDlkleX" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.library" />
                    <node concept="2Ry0Ak" id="1EO1wDlkleY" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="1EO1wDlkleZ" role="2Ry0An">
                        <property role="2Ry0Am" value="antlr4-runtime-4.5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXA6e" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXA6f" role="28jJRO">
              <node concept="2Ry0Ak" id="1EO1wDlklfg" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="1EO1wDlklfh" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="1EO1wDlklfi" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.library" />
                    <node concept="2Ry0Ak" id="1EO1wDlklfj" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="1EO1wDlklfk" role="2Ry0An">
                        <property role="2Ry0Am" value="library.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="6AO1fiEOKmt" role="39821P">
        <node concept="398223" id="6AO1fiEOKmx" role="39821P">
          <node concept="3_J27D" id="6AO1fiEOKmy" role="Nbhlr">
            <node concept="3Mxwew" id="6AO1fiEOKmz" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="6AO1fiEOKm$" role="39821P">
            <ref role="L2wRA" node="DMI5IaKFsE" resolve="org.fbme.platform.lib" />
          </node>
        </node>
        <node concept="398223" id="2g7iZ5XXA6F" role="39821P">
          <node concept="3_J27D" id="2g7iZ5XXA6G" role="Nbhlr">
            <node concept="3Mxwew" id="2g7iZ5XXA6H" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXA6I" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXA6J" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXA6K" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXA6L" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXA6M" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.platform" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXA6N" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXA7h" role="2Ry0An">
                        <property role="2Ry0Am" value="language.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXA6P" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXA6Q" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXA6R" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXA6S" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXA6T" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.platform" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXA6U" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXA7j" role="2Ry0An">
                        <property role="2Ry0Am" value="platform.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="6AO1fiEOKmv" role="Nbhlr">
          <node concept="3Mxwew" id="6AO1fiEOKmw" role="3MwsjC">
            <property role="3MwjfP" value="fbme.platform" />
          </node>
        </node>
      </node>
      <node concept="398223" id="DMI5IaKFsU" role="39821P">
        <node concept="3_J27D" id="DMI5IaKFsV" role="Nbhlr">
          <node concept="3Mxwew" id="DMI5IaKFsW" role="3MwsjC">
            <property role="3MwjfP" value="fbme.scenes" />
          </node>
        </node>
        <node concept="398223" id="DMI5IaKFsX" role="39821P">
          <node concept="3_J27D" id="DMI5IaKFsY" role="Nbhlr">
            <node concept="3Mxwew" id="DMI5IaKFsZ" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="DMI5IaKFt0" role="39821P">
            <ref role="L2wRA" node="6AO1fiEOKn8" resolve="org.fbme.scenes.lib" />
          </node>
        </node>
        <node concept="398223" id="2g7iZ5XXA8$" role="39821P">
          <node concept="3_J27D" id="2g7iZ5XXA8_" role="Nbhlr">
            <node concept="3Mxwew" id="2g7iZ5XXA8A" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXA8B" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXA8C" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXA8D" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXA8E" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXA8F" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.scenes" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXA8G" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXA9a" role="2Ry0An">
                        <property role="2Ry0Am" value="scenes.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="2ol5rn4WA1P" role="39821P">
        <node concept="3_J27D" id="2ol5rn4WA1Q" role="Nbhlr">
          <node concept="3Mxwew" id="2ol5rn4WA1R" role="3MwsjC">
            <property role="3MwjfP" value="fbme.richediting" />
          </node>
        </node>
        <node concept="398223" id="2ol5rn4WA1S" role="39821P">
          <node concept="3_J27D" id="2ol5rn4WA1T" role="Nbhlr">
            <node concept="3Mxwew" id="2ol5rn4WA1U" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="2ol5rn4WA1V" role="39821P">
            <ref role="L2wRA" node="6AO1fiESjIi" resolve="org.fbme.richediting.lib" />
          </node>
        </node>
        <node concept="398223" id="2g7iZ5XXA9v" role="39821P">
          <node concept="3_J27D" id="2g7iZ5XXA9w" role="Nbhlr">
            <node concept="3Mxwew" id="2g7iZ5XXA9x" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXA9y" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXA9z" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXA9$" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXA9_" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXA9A" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.richediting" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXA9B" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXA9R" role="2Ry0An">
                        <property role="2Ry0Am" value="org.eclipse.elk.alg.common-0.7.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXA9T" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXA9U" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXA9V" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXA9W" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXA9X" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.richediting" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXA9Y" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXAae" role="2Ry0An">
                        <property role="2Ry0Am" value="org.eclipse.elk.alg.layered-0.7.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXAag" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXAah" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXAai" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXAaj" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXAak" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.richediting" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXAal" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXAaG" role="2Ry0An">
                        <property role="2Ry0Am" value="org.eclipse.elk.core-0.7.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXAaI" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXAaJ" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXAaK" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXAaL" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXAaM" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.richediting" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXAaN" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXAbh" role="2Ry0An">
                        <property role="2Ry0Am" value="org.eclipse.elk.graph-0.7.1.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXAbj" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXAbk" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXAbl" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXAbm" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXAbn" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.richediting" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXAbo" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXAbX" role="2Ry0An">
                        <property role="2Ry0Am" value="org.eclipse.emf.common-2.12.0.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXAbZ" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXAc0" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXAc1" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXAc2" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXAc3" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.richediting" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXAc4" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXAcK" role="2Ry0An">
                        <property role="2Ry0Am" value="org.eclipse.emf.ecore-2.12.0.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXAcM" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXAcN" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXAcO" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXAcP" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXAcQ" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.richediting" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXAcR" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXAdE" role="2Ry0An">
                        <property role="2Ry0Am" value="org.eclipse.emf.ecore.xmi-2.12.0.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="2g7iZ5XXAdG" role="39821P">
            <node concept="55IIr" id="2g7iZ5XXAdH" role="28jJRO">
              <node concept="2Ry0Ak" id="2g7iZ5XXAdI" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2g7iZ5XXAdJ" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2g7iZ5XXAdK" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.richediting" />
                    <node concept="2Ry0Ak" id="2g7iZ5XXAdL" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2g7iZ5XXAeF" role="2Ry0An">
                        <property role="2Ry0Am" value="richediting.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="2Ine_yKUj_h" role="39821P">
        <node concept="3_J27D" id="2Ine_yKUj_i" role="Nbhlr">
          <node concept="3Mxwew" id="2Ine_yKUj_j" role="3MwsjC">
            <property role="3MwjfP" value="fbme.integration.nxt" />
          </node>
        </node>
        <node concept="398223" id="2Ine_yKUj_k" role="39821P">
          <node concept="3_J27D" id="2Ine_yKUj_l" role="Nbhlr">
            <node concept="3Mxwew" id="2Ine_yKUj_m" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="2Ine_yKUj_n" role="39821P">
            <ref role="L2wRA" node="2Ine_yKUjxR" resolve="org.fbme.integration.nxt.lib" />
          </node>
        </node>
        <node concept="398223" id="2Ine_yKUj_o" role="39821P">
          <node concept="3_J27D" id="2Ine_yKUj_p" role="Nbhlr">
            <node concept="3Mxwew" id="2Ine_yKUj_q" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="2Ine_yKUj_r" role="39821P">
            <node concept="55IIr" id="2Ine_yKUj_s" role="28jJRO">
              <node concept="2Ry0Ak" id="2Ine_yKUj_t" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="2Ine_yKUj_u" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="2Ine_yKUj_v" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.integration.nxt" />
                    <node concept="2Ry0Ak" id="2Ine_yKUj_w" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="2Ine_yKUjDo" role="2Ry0An">
                        <property role="2Ry0Am" value="nxt-integration.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="1EO1wDljBn$" role="39821P">
        <node concept="3_J27D" id="1EO1wDljBn_" role="Nbhlr">
          <node concept="3Mxwew" id="1EO1wDljBnA" role="3MwsjC">
            <property role="3MwjfP" value="fbme.statistics" />
          </node>
        </node>
        <node concept="398223" id="1EO1wDljBnB" role="39821P">
          <node concept="3_J27D" id="1EO1wDljBnC" role="Nbhlr">
            <node concept="3Mxwew" id="1EO1wDljBnD" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="1EO1wDljBnE" role="39821P">
            <ref role="L2wRA" node="1EO1wDljBs3" resolve="org.fbme.samples.statistics.lib" />
          </node>
        </node>
        <node concept="398223" id="1EO1wDljBnF" role="39821P">
          <node concept="3_J27D" id="1EO1wDljBnG" role="Nbhlr">
            <node concept="3Mxwew" id="1EO1wDljBnH" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="1EO1wDljBnI" role="39821P">
            <node concept="55IIr" id="1EO1wDljBnJ" role="28jJRO">
              <node concept="2Ry0Ak" id="1EO1wDljBnK" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="1EO1wDljBnL" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="1EO1wDljBnM" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.statistsics" />
                    <node concept="2Ry0Ak" id="1EO1wDljBnN" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="1EO1wDljBtJ" role="2Ry0An">
                        <property role="2Ry0Am" value="statistics-plugin.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="1EO1wDljTYw" role="39821P">
        <node concept="3_J27D" id="1EO1wDljTYx" role="Nbhlr">
          <node concept="3Mxwew" id="1EO1wDljTYy" role="3MwsjC">
            <property role="3MwjfP" value="fbme.smvDebugger" />
          </node>
        </node>
        <node concept="398223" id="1EO1wDljTYz" role="39821P">
          <node concept="3_J27D" id="1EO1wDljTY$" role="Nbhlr">
            <node concept="3Mxwew" id="1EO1wDljTY_" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="1EO1wDlp0$R" role="39821P">
            <ref role="L2wRA" node="1EO1wDljU1B" resolve="org.fbme.smv-debugger.lib" />
          </node>
        </node>
        <node concept="398223" id="1EO1wDljTYB" role="39821P">
          <node concept="3_J27D" id="1EO1wDljTYC" role="Nbhlr">
            <node concept="3Mxwew" id="1EO1wDljTYD" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="1EO1wDljTYE" role="39821P">
            <node concept="55IIr" id="1EO1wDljTYF" role="28jJRO">
              <node concept="2Ry0Ak" id="1EO1wDljTYG" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="1EO1wDljTYH" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="1EO1wDljTYI" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.smvDebugger" />
                    <node concept="2Ry0Ak" id="1EO1wDljTYJ" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="1EO1wDljU4U" role="2Ry0An">
                        <property role="2Ry0Am" value="smv-debugger.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="4YrY9S5MW2B" role="39821P">
        <node concept="3_J27D" id="4YrY9S5MW2D" role="Nbhlr">
          <node concept="3Mxwew" id="4YrY9S5MW5B" role="3MwsjC">
            <property role="3MwjfP" value="fbme.debugger" />
          </node>
        </node>
        <node concept="398223" id="4YrY9S5MW7q" role="39821P">
          <node concept="3_J27D" id="4YrY9S5MW7s" role="Nbhlr">
            <node concept="3Mxwew" id="4YrY9S5MW7_" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="7ZpdjDjcLBP" role="39821P">
            <node concept="55IIr" id="7ZpdjDjcLBT" role="28jJRO">
              <node concept="2Ry0Ak" id="7ZpdjDjcLBZ" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWcy" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWcz" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWc$" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWc_" role="2Ry0An">
                        <property role="2Ry0Am" value="debugger.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWcI" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWcJ" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWcK" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWcL" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWcM" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWcN" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWcO" role="2Ry0An">
                        <property role="2Ry0Am" value="animation-core-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWf7" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWf8" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWf9" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWfa" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWfb" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWfc" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWfd" role="2Ry0An">
                        <property role="2Ry0Am" value="animation-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWm7" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWm8" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWm9" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWma" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWmb" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWmc" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWmd" role="2Ry0An">
                        <property role="2Ry0Am" value="desktop-jvm-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWqK" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWqL" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWqM" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWqN" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWqO" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWqP" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWqQ" role="2Ry0An">
                        <property role="2Ry0Am" value="foundation-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWvr" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWvs" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWvt" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWvu" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWvv" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWvw" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWvx" role="2Ry0An">
                        <property role="2Ry0Am" value="foundation-layout-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MW$8" role="39821P">
            <node concept="55IIr" id="4YrY9S5MW$9" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MW$a" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MW$b" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MW$c" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MW$d" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MW$e" role="2Ry0An">
                        <property role="2Ry0Am" value="kotlinx-coroutines-core-jvm-1.5.2.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWCR" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWCS" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWCT" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWCU" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWCV" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWCW" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWCX" role="2Ry0An">
                        <property role="2Ry0Am" value="kotlinx-coroutines-swing-1.5.2.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWHC" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWHD" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWHE" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWHF" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWHG" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWHH" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWHI" role="2Ry0An">
                        <property role="2Ry0Am" value="material-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWK8" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWK9" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWKa" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWKb" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWKc" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWKd" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWKe" role="2Ry0An">
                        <property role="2Ry0Am" value="material-icons-core-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWP9" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWPa" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWPb" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWPc" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWPd" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWPe" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWPf" role="2Ry0An">
                        <property role="2Ry0Am" value="material-icons-extended-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWUc" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWUd" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWUe" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWUf" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWUg" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWUh" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWUi" role="2Ry0An">
                        <property role="2Ry0Am" value="material-ripple-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MWZh" role="39821P">
            <node concept="55IIr" id="4YrY9S5MWZi" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MWZj" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MWZk" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MWZl" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MWZm" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MWZn" role="2Ry0An">
                        <property role="2Ry0Am" value="runtime-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MX4o" role="39821P">
            <node concept="55IIr" id="4YrY9S5MX4p" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MX4q" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MX4r" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MX4s" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MX4t" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MX4u" role="2Ry0An">
                        <property role="2Ry0Am" value="runtime-saveable-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MXbT" role="39821P">
            <node concept="55IIr" id="4YrY9S5MXbU" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MXbV" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MXbW" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MXbX" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MXbY" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MXbZ" role="2Ry0An">
                        <property role="2Ry0Am" value="skiko-jvm-0.5.9.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MXgS" role="39821P">
            <node concept="55IIr" id="4YrY9S5MXgT" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MXgU" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MXgV" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MXgW" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MXgX" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MXgY" role="2Ry0An">
                        <property role="2Ry0Am" value="skiko-jvm-runtime-macos-arm64-0.5.9.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MXlT" role="39821P">
            <node concept="55IIr" id="4YrY9S5MXlU" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MXlV" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MXlW" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MXlX" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MXlY" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MXlZ" role="2Ry0An">
                        <property role="2Ry0Am" value="ui-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MXqW" role="39821P">
            <node concept="55IIr" id="4YrY9S5MXqX" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MXqY" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MXqZ" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MXr0" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MXr1" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MXr2" role="2Ry0An">
                        <property role="2Ry0Am" value="ui-geometry-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MXw1" role="39821P">
            <node concept="55IIr" id="4YrY9S5MXw2" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MXw3" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MXw4" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MXw5" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MXw6" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MXw7" role="2Ry0An">
                        <property role="2Ry0Am" value="ui-graphics-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MXE7" role="39821P">
            <node concept="55IIr" id="4YrY9S5MXE8" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MXE9" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MXEa" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MXEb" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MXEc" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MXEd" role="2Ry0An">
                        <property role="2Ry0Am" value="ui-text-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MXJg" role="39821P">
            <node concept="55IIr" id="4YrY9S5MXJh" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MXJi" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MXJj" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MXJk" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MXJl" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MXJm" role="2Ry0An">
                        <property role="2Ry0Am" value="ui-tooling-preview-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MYvZ" role="39821P">
            <node concept="55IIr" id="4YrY9S5MYw0" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MYw1" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MYw2" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MYw3" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MYw4" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MYw5" role="2Ry0An">
                        <property role="2Ry0Am" value="ui-unit-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4YrY9S5MY_c" role="39821P">
            <node concept="55IIr" id="4YrY9S5MY_d" role="28jJRO">
              <node concept="2Ry0Ak" id="4YrY9S5MY_e" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4YrY9S5MY_f" role="2Ry0An">
                  <property role="2Ry0Am" value="src-plugins" />
                  <node concept="2Ry0Ak" id="4YrY9S5MY_g" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.debugger" />
                    <node concept="2Ry0Ak" id="4YrY9S5MY_h" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="4YrY9S5MY_i" role="2Ry0An">
                        <property role="2Ry0Am" value="ui-util-desktop-1.0.0-beta5.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="398223" id="4YrY9S5MW5R" role="39821P">
          <node concept="L2wRC" id="4YrY9S5MW61" role="39821P">
            <ref role="L2wRA" node="4YrY9S5MVXg" resolve="org.fbme.debugger.lib" />
          </node>
          <node concept="3_J27D" id="4YrY9S5MW5S" role="Nbhlr">
            <node concept="3Mxwew" id="4YrY9S5MW5X" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3b7kt6" id="1wt__nLa3Tu" role="10PD9s" />
    <node concept="398rNT" id="1mPaNys5H5I" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="1mPaNys6fxP" role="398pKh">
        <node concept="2Ry0Ak" id="1mPaNys6fxS" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="60wxHLH9ueR" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2021.2" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

