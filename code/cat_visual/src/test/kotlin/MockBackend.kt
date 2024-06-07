import connection.AbstractClient
import connection.ConnectionFieldRegistry
import connection.field.ConnectionField
import connection.field.TYPE_ID
import serializer.Mapping
import serializer.PlainMapping
import serializer.getMapping
import serializer.getPlainMapping
import java.io.File

class FieldWithCallback<V>(val field: ConnectionField<V>, val callback: (V) -> Unit)


