package org.fbme.ide.platform.persistence

import jetbrains.mps.extapi.persistence.datasource.DataSourceFactoryRule
import org.jetbrains.mps.openapi.persistence.datasource.DataSourceType
import java.net.URL

class Iec61499DataSourceFactoryRule : DataSourceFactoryRule {

    override fun spawn(dataSourceType: DataSourceType) =
        if (dataSourceType == Iec61499ModelFactory.DST) Iec61449DataSourceFactoryFromName else null

    @Deprecated("Deprecated in Java")
    override fun spawn(url: URL) = null
}