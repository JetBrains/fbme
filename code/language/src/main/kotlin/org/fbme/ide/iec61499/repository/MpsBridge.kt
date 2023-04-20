package org.fbme.ide.iec61499.repository

import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory

abstract class MpsBridge {
    protected abstract fun provideElementAdapter(owner: PlatformElementsOwner): PlatformElementAdapter
    protected abstract fun provideStFactory(owner: PlatformElementsOwner): STFactory
    protected abstract fun provideIec61499Factory(owner: PlatformElementsOwner): IEC61499Factory

    companion object {
        @JvmField
        protected var PROVIDER: MpsBridge? = null
        fun createElementAdapter(owner: PlatformElementsOwner): PlatformElementAdapter {
            return PROVIDER!!.provideElementAdapter(owner)
        }

        fun createStFactory(owner: PlatformElementsOwner): STFactory {
            return PROVIDER!!.provideStFactory(owner)
        }

        fun createIec61499Factory(owner: PlatformElementsOwner): IEC61499Factory {
            return PROVIDER!!.provideIec61499Factory(owner)
        }
    }
}
