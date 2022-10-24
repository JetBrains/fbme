package org.fbme.lib.iec61499.declarations

class AlgorithmLanguage<BodyT : AlgorithmBody>(val languageName: String) {
    override fun toString(): String {
        return String.format("AlgorithmLanguage{%s}", languageName)
    }

    companion object {
        @JvmField
        var ST = AlgorithmLanguage<AlgorithmBody.ST>("ST")
        private val ourUnknownLanguages: MutableMap<String, AlgorithmLanguage<AlgorithmBody.Unknown>> = HashMap()

        @JvmStatic
        fun unknown(languageName: String): AlgorithmLanguage<AlgorithmBody.Unknown> {
            return ourUnknownLanguages.computeIfAbsent(languageName) { AlgorithmLanguage(it) }
        }

        @JvmStatic
        fun isUnknown(language: AlgorithmLanguage<*>): Boolean {
            return ourUnknownLanguages[language.languageName] === language
        }
    }
}
