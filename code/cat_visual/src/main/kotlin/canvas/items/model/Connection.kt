package canvas.items.model

import kotlinx.serialization.Serializable
import serializer.SerializationUtils
import java.util.UUID

@Serializable
data class Input(
    @Serializable(with = SerializationUtils.UUIDSerializer::class)
    val id: UUID,
    val type: TypeConnection,
)

@Serializable
data class Output(
    @Serializable(with = SerializationUtils.UUIDSerializer::class)
    val id: UUID,
    val type: TypeConnection,
)

@Serializable
enum class TypeConnection {
    BOOL,
    STRING,
    INT,
    FLOAT
}

