package org.fbme.scenes.controllers

import org.jetbrains.mps.openapi.module.SRepository
import java.awt.Point

class DefaultLayoutModel<T>(private val repository: SRepository) : ROLayoutModelBase<T>(), LayoutModel<T> {
    private val componentSettings: MutableMap<T, LayoutSetting> = HashMap()
    private var handle: DefaultLayoutMovementHandle? = null

    override fun components(): Set<T> {
        return componentSettings.keys
    }

    override fun addComponent(component: T, setting: LayoutSetting) {
        componentSettings[component] = setting
        val bounds = setting.bounds
        fireAdded(component, bounds.x, bounds.y)
    }

    override fun removeComponent(component: T) {
        componentSettings.remove(component)
        fireRemoved(component)
    }

    override fun findAt(x: Int, y: Int): T? {
        for ((component, setting) in componentSettings) {
            if (setting.bounds.contains(x, y) && setting.canStartMoveAt(x, y)) {
                return component
            }
        }
        return null
    }

    override fun moveComponents(components: Set<T>): LayoutMovementHandle {
        return DefaultLayoutMovementHandle(components).also { handle = it }
    }

    override fun getActivePosition(component: T): Point {
        val modelPosition = getModelPosition(component)
        val handle = handle
        if (handle != null && handle.componentsToMove.contains(component)) {
            modelPosition.translate(handle.deltaX, handle.deltaY)
        }
        return modelPosition
    }

    override fun getTracePosition(component: T): Point? {
        val handle = handle
        if (handle != null && handle.componentsToMove.contains(component)) {
            return getModelPosition(component)
        }
        return null
    }

    private fun getModelPosition(component: T): Point {
        val setting = componentSettings[component] ?: return ZERO_ZERO
        return setting.bounds.location
    }

    private inner class DefaultLayoutMovementHandle(val componentsToMove: Set<T>) :
        LayoutMovementHandle {
        var deltaX = 0
        var deltaY = 0
        override fun cancel() {
            handle = null
        }

        override fun complete() {
            handle = null
            repository.modelAccess.executeCommandInEDT {
                fireMoved(componentsToMove, deltaX, deltaY, true)
                for (component in componentsToMove) {
                    val setting = componentSettings[component] ?: error("Settings not found")
                    val bounds = setting.bounds
                    setting.moveTo(bounds.x + deltaX, bounds.y + deltaY)
                }
            }
        }

        override fun moveTo(dx: Int, dy: Int) {
            deltaX = dx
            deltaY = dy
            fireMoved(componentsToMove, deltaX, deltaY, false)
        }
    }

    companion object {
        private val ZERO_ZERO = Point(0, 0)
    }
}
