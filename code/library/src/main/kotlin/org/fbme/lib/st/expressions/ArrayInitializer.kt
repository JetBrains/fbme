package org.fbme.lib.st.expressions

interface ArrayInitializer : ParameterValue {
    val initialElements : MutableList<ParameterValue>
    override val value : Array<Any?>
        get() {
            return initialElements.map { it.value }.toTypedArray()
        }
}
