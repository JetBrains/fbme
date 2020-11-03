package org.fbme.lib.iec61499.declarations;

import java.util.HashMap;
import java.util.Map;

public class AlgorithmLanguage<BodyT extends AlgorithmBody> {

    private final String myLanguageName;

    public AlgorithmLanguage(String languageName) {
        myLanguageName = languageName;
    }

    public String getLanguageName() {
        return myLanguageName;
    }

    @Override
    public String toString() {
        return String.format("AlgorithmLanguage{%s}", myLanguageName);
    }

    public static AlgorithmLanguage<AlgorithmBody.ST> ST = new AlgorithmLanguage<>("ST");

    private static final Map<String, AlgorithmLanguage<AlgorithmBody.Unknown>> ourUnknownLanguages = new HashMap<>();

    public static AlgorithmLanguage<AlgorithmBody.Unknown> unknown(String languageName) {
        return ourUnknownLanguages.computeIfAbsent(languageName, AlgorithmLanguage::new);
    }

    public static boolean isUnknown(AlgorithmLanguage<?> language) {
        return ourUnknownLanguages.get(language.getLanguageName()) == language;
    }
}
