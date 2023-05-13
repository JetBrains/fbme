package org.fbme.ide.platform.persistence

import jetbrains.mps.extapi.model.SModelSimpleHeader
import jetbrains.mps.internal.collections.runtime.ISelector
import jetbrains.mps.internal.collections.runtime.ListSequence
import jetbrains.mps.util.JDOMUtil
import jetbrains.mps.vfs.IFile
import org.jdom.Document
import org.jdom.Element
import org.jdom.JDOMException
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import java.io.IOException
import java.io.InputStream
import java.io.OutputStream
import java.util.*

class Iec61499ModelHeader(reference: SModelReference, val imports: List<SModelReference>) :
    SModelSimpleHeader(reference) {

    @Throws(IOException::class)
    fun save(stream: OutputStream) {
        val modelElement = Element(MODEL_TAG)
        modelElement.setAttribute(REF_ATTR, modelReference.toString())
        for (import in imports) {
            val importElement = Element(IMPORT_TAG)
            importElement.setAttribute(REF_ATTR, import.toString())
            modelElement.addContent(importElement)
        }
        JDOMUtil.writeDocument(Document().setContent(modelElement), stream)
    }

    @Throws(IOException::class)
    fun save(file: IFile) {
        file.openOutputStream().use(::save)
    }

    companion object {
        private const val MODEL_TAG = "iec61499-model"
        private const val IMPORT_TAG = "import"
        private const val REF_ATTR = "ref"

        @Throws(IOException::class)
        fun load(stream: InputStream?): Iec61499ModelHeader {
            val pf = PersistenceFacade.getInstance()
            return try {
                val document = JDOMUtil.loadDocument(stream)
                val modelElement = document.rootElement
                if (modelElement.name != MODEL_TAG) {
                    throw IOException("Malformed xml")
                }
                val ref = pf.createModelReference(modelElement.getAttributeValue(REF_ATTR))
                val importElements = modelElement.getChildren(IMPORT_TAG)
                val imports: List<SModelReference> =
                    ListSequence.fromList(importElements).select(object : ISelector<Element, SModelReference>() {
                        override fun select(it: Element): SModelReference {
                            return pf.createModelReference(it.getAttributeValue(REF_ATTR))
                        }
                    }).toListSequence()
                Iec61499ModelHeader(ref, imports)
            } catch (e: JDOMException) {
                throw IOException("Can not parse xml", e)
            }
        }

        @Throws(IOException::class)
        fun load(file: IFile): Iec61499ModelHeader {
            return file.openInputStream().use(::load)
        }
    }
}