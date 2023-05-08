package org.fbme.scenes.controllers

abstract class ROLayoutModelBase<T> : ROLayoutModel<T> {
    private val listeners: MutableSet<ROLayoutModel.Listener<T>> = HashSet()
    protected fun fireMoved(components: Set<T>, dx: Int, dy: Int, completed: Boolean) {
        for (listener in listeners) {
            listener.onComponentsMoved(components, dx, dy, completed)
        }
    }

    protected fun fireAdded(component: T, x: Int, y: Int) {
        for (listener in listeners) {
            listener.onComponentAdded(component, x, y)
        }
    }

    protected fun fireRemoved(component: T) {
        for (listener in listeners) {
            listener.onComponentRemoved(component)
        }
    }

    override fun addListener(listener: ROLayoutModel.Listener<T>) {
        listeners.add(listener)
    }

    override fun removeListener(listener: ROLayoutModel.Listener<T>) {
        listeners.remove(listener)
    }
}
