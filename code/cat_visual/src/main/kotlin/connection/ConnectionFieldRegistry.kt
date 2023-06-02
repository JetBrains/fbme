package connection

import connection.field.ConnectionField
import connection.field.TYPE_ID
import connection.provider.ConnectionProvider
import connection.provider.UDPConnectionProvider


class ConnectionFieldRegistry {
    private val providerRegistry: MutableMap<Pair<String, Int>, ConnectionProvider> = mutableMapOf()
    private val fieldRegistry: MutableMap<String, Pair<ConnectionField<out Any>,ConnectionProvider> > = mutableMapOf()

    fun getConnection(name: String, type: TYPE_ID, host: String, port: Int): Pair<ConnectionField<out Any>,ConnectionProvider> {
        if (name in fieldRegistry) {
            return fieldRegistry[name]!!
        }
        val providerAddress = Pair(host, port)
        val provider = providerRegistry.computeIfAbsent(providerAddress, { UDPConnectionProvider(port, host) })
        val field = ConnectionField.create(type)
        val connection = Pair(field, provider)
        fieldRegistry[name] = connection
        return connection
    }

    fun getConnection(name: String): Pair<ConnectionField<out Any>,ConnectionProvider>? {
        if (name in fieldRegistry) {
            return fieldRegistry[name]!!
        }
        return null
    }

    fun getField(name: String): ConnectionField<out Any>? {
        if (name in fieldRegistry) {
            return fieldRegistry[name]!!.first
        }
        return null
    }

    fun getConnector(hostPort: Pair<String, Int>): ConnectionProvider? {
        if (hostPort in providerRegistry) {
            return providerRegistry[hostPort]!!
        }
        return null
    }
}