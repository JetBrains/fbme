package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.expressions.BinaryOperation
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractFBDConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.smvDebugger.fb2smv.MainConverter
import org.fbme.smvDebugger.fb2smv.SMVCompositeFBConverter
import org.fbme.smvDebugger.fb2smv.SMVFunctionBlockConverter

class FB2SPIN : AbstractFBDConverter("pml") {
    override fun compositeFBConversion(compositeFb: CompositeFBTypeDeclaration) {
        (compositeFBConverter as SPINCompositeFBConverter).fb = compositeFb
        (compositeFBConverter as SPINCompositeFBConverter).convert()
    }

    override fun basicFBConversion(fb: FBTypeDescriptor) {
        (basicFBConverter as SPINFunctionBlockConverter).fb = fb.declaration as BasicFBTypeDeclaration
        (basicFBConverter as SPINFunctionBlockConverter).convert()
    }

    init {
        data = VerifiersData(
            typesMap = mapOf(
                ElementaryType.BOOL to "bit",
                ElementaryType.INT to "int",
                ElementaryType.BYTE to "byte"
            ),
            typesInitValMap = mapOf(
                ElementaryType.BOOL to "0",
                ElementaryType.INT to "0",
                ElementaryType.BYTE to "0",
            ),
            binaryOperationsConvertionMap = mapOf(
                BinaryOperation.AND to "&&",
                BinaryOperation.OR to "||",
                BinaryOperation.EQ to "==",
                BinaryOperation.GT to ">",
                BinaryOperation.GTE to ">=",
                BinaryOperation.LT to "<",
                BinaryOperation.LTE to "<=",
                BinaryOperation.NEQ to "!=",
                BinaryOperation.ADD to "+",
                BinaryOperation.SUB to "-",
                BinaryOperation.MUL to "*",
                BinaryOperation.DIV to "/",
                BinaryOperation.MOD to "%",
            ),
            false
        ) { false }
        basicFBConverter = SPINFunctionBlockConverter(data!!)
        (basicFBConverter as SPINFunctionBlockConverter).buf = buf
        compositeFBConverter = SPINCompositeFBConverter(data!!)
        (compositeFBConverter as SPINCompositeFBConverter).buf = buf
        mainFunction = MainConverter(data!!)
    }
}