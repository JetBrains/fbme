package org.fbme.scenes.controllers

import java.awt.Point
import java.util.function.BiFunction
import java.util.function.Function

class ExtendedLayoutModel<ResT, ExtT : ResT, OrigT : ResT>(
    private val baseModel: LayoutModel<OrigT>,
    private val extensionPositionProvider: BiFunction<ExtT, Point, Point>,
    private val extensionsProvider: Function<OrigT, Set<ExtT>>
) : ROLayoutModelBase<ResT>() {
    private val extensions: MutableMap<OrigT, Set<ExtT>> = HashMap()
    private val extensionOrigin: MutableMap<ExtT, OrigT> = HashMap()
    private fun addComponent(component: OrigT, x: Int, y: Int) {
        val extensions = extensionsProvider.apply(component)
        this.extensions[component] = extensions
        val componentPosition = Point(x, y)
        for (extension in extensions) {
            extensionOrigin[extension] = component
            val extensionPosition = extensionPositionProvider.apply(extension, componentPosition)
            fireAdded(extension, extensionPosition.x, extensionPosition.y)
        }
    }

    override fun components(): Set<ResT> {
        val res = HashSet<ResT>()
        res.addAll(baseModel.components())
        res.addAll(extensionOrigin.keys)
        return res
    }

    override fun findAt(x: Int, y: Int): ResT? {
        // FIXME has to employ myExtensionBoundsProvider to handle extensions also
        return baseModel.findAt(x, y)
    }

    override fun getActivePosition(component: ResT): Point {
        if (extensions.containsKey(component)) {
            return baseModel.getActivePosition(component as OrigT)
        }
        val origPosition = baseModel.getActivePosition(extensionOrigin[component] ?: error("Component not found"))
        return extensionPositionProvider.apply(component as ExtT, origPosition)
    }

    override fun getTracePosition(component: ResT): Point? {
        if (extensions.containsKey(component)) {
            return baseModel.getTracePosition(component as OrigT)
        }
        val origPosition = baseModel.getTracePosition(extensionOrigin[component] ?: error("Component not found"))
        return origPosition?.let { extensionPositionProvider.apply(component as ExtT, origPosition) }
    }

    init {
        for (component in baseModel.components()) {
            val activePosition = baseModel.getActivePosition(component)
            addComponent(component, activePosition.x, activePosition.y)
        }
        baseModel.addListener(object : ROLayoutModel.Listener<OrigT> {
            override fun onComponentAdded(component: OrigT, x: Int, y: Int) {
                fireAdded(component, x, y)
                addComponent(component, x, y)
            }

            override fun onComponentRemoved(component: OrigT) {
                fireRemoved(component)
                val extensions = extensionsProvider.apply(component)
                this@ExtendedLayoutModel.extensions.remove(component)
                for (extension in extensions) {
                    extensionOrigin.remove(extension)
                    fireRemoved(extension)
                }
            }

            override fun onComponentsMoved(components: Set<OrigT>, dx: Int, dy: Int, completed: Boolean) {
                val all = HashSet<ResT>(components)
                for (component in components) {
                    val ext = extensions[component]
                    if (ext != null) {
                        all.addAll(ext)
                    }
                }
                fireMoved(all, dx, dy, completed)
            }
        })
    }
}
