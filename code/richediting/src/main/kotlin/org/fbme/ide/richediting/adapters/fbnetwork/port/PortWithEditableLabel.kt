package org.fbme.ide.richediting.adapters.fbnetwork.port

import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.nodeEditor.cells.ModelAccessor
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellAction
import jetbrains.mps.openapi.editor.cells.CellActionType
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclarationWithAdapters
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.jetbrains.mps.openapi.model.SNode

class PortWithEditableLabel(context: EditorContext, node: SNode, port: FBPortDescriptor, declaration: Declaration?) : PortBase(port) {
    val label: EditorCell_Property

    init {
        label = EditorCell_Property(context,
                object : ModelAccessor {
                    override fun getText(): String {
                        port.declaration
                        return port.declaration?.name ?: ""
                    }

                    override fun setText(text: String) {
                        port.declaration?.name = text
                    }

                    override fun isValidText(text: String): Boolean {
                        return true
                    }
                }, node)

        label.setAction(CellActionType.BACKSPACE, object : CellAction {
            override fun getDescriptionText(): String {
               return  "Delete port"
            }

            override fun executeInCommand(): Boolean {
                return true
            }

            override fun canExecute(context: EditorContext): Boolean {
                return port.declaration?.name?.isEmpty() ?: true
            }

            override fun execute(p0: EditorContext?) {
                if (declaration is FBInterfaceDeclaration) {
                    val ports = if (port.isInput) {
                        when (port.connectionKind) {
                            EntryKind.EVENT -> declaration.inputEvents
                            EntryKind.DATA -> declaration.inputParameters
                            else -> if (declaration is FBInterfaceDeclarationWithAdapters) declaration.sockets else mutableListOf()
                        }
                    } else {
                        when (port.connectionKind) {
                            EntryKind.EVENT -> declaration.outputEvents
                            EntryKind.DATA -> declaration.outputParameters
                            else -> if (declaration is FBInterfaceDeclarationWithAdapters) declaration.plugs else mutableListOf()
                        }
                    }

                    ports.remove(port.declaration)
                }
            }
        })
        label.style.set(RichEditorStyleAttributes.PORT, port)
    }
}