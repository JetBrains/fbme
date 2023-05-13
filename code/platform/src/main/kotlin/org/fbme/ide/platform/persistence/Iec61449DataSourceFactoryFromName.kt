package org.fbme.ide.platform.persistence

import jetbrains.mps.extapi.persistence.FileDataSource
import jetbrains.mps.extapi.persistence.SourceRoot
import jetbrains.mps.extapi.persistence.datasource.DataSourceFactoryFromName
import org.jetbrains.mps.openapi.model.SModelName
import org.jetbrains.mps.openapi.persistence.DataSource

object Iec61449DataSourceFactoryFromName : DataSourceFactoryFromName {

    override fun getType() = Iec61499ModelFactory.DST

    override fun create(name: SModelName, sourceRoot: SourceRoot): DataSource {
        val descendant = sourceRoot.absolutePath.getDescendant(name.longName + "/" + Iec61499ModelFactory.HEADER_FILE)
        return FileDataSource(descendant)
    }
}

