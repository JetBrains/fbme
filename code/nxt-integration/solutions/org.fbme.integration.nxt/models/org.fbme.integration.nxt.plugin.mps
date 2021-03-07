<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fa1d0806-1ef2-432a-bb40-cd4f72545972(org.fbme.integration.nxt.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
  </languages>
  <imports>
    <import index="dyp1" ref="a4712a21-b0bb-4e62-8857-e1c5ecf8c0ea/java:org.fbme.integration.nxt.importer.idea(org.fbme.integration.nxt/)" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="4sMntFAig8l">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="2uRRBC" id="7i2nuYeqflU">
    <property role="TrG5h" value="ImporterByDefaultIdeaEnabler Plug-in" />
    <node concept="2uRRBj" id="7i2nuYeqflV" role="2uRRBE">
      <node concept="3clFbS" id="7i2nuYeqflW" role="2VODD2">
        <node concept="3clFbF" id="2fDoQnfOrsg" role="3cqZAp">
          <node concept="2YIFZM" id="6UJN_xtecPa" role="3clFbG">
            <ref role="37wK5l" to="dyp1:~ImporterByDefaultIdeaEnabler.install()" resolve="install" />
            <ref role="1Pybhc" to="dyp1:~ImporterByDefaultIdeaEnabler" resolve="ImporterByDefaultIdeaEnabler" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="2fDoQnfOdbZ" role="2uRRBF">
      <node concept="3clFbS" id="2fDoQnfOdc0" role="2VODD2">
        <node concept="3clFbF" id="6UJN_xtecVF" role="3cqZAp">
          <node concept="2YIFZM" id="6UJN_xtecWi" role="3clFbG">
            <ref role="37wK5l" to="dyp1:~ImporterByDefaultIdeaEnabler.uninstall()" resolve="uninstall" />
            <ref role="1Pybhc" to="dyp1:~ImporterByDefaultIdeaEnabler" resolve="ImporterByDefaultIdeaEnabler" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

