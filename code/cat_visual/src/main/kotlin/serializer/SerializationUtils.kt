package serializer

import kotlinx.serialization.KSerializer
import kotlinx.serialization.descriptors.PrimitiveKind
import kotlinx.serialization.descriptors.PrimitiveSerialDescriptor
import kotlinx.serialization.encoding.Decoder
import kotlinx.serialization.encoding.Encoder
import java.io.File
import java.util.*

class SerializationUtils {

    object UUIDSerializer : KSerializer<UUID> {
        override val descriptor = PrimitiveSerialDescriptor("UUID", PrimitiveKind.STRING)

        override fun deserialize(decoder: Decoder): UUID {
            return UUID.fromString(decoder.decodeString())
        }

        override fun serialize(encoder: Encoder, value: UUID) {
            encoder.encodeString(value.toString())
        }
    }

    companion object {
        private const val PATH: String = "/Users/sj/IdeaProjects/fbme/code/cat_visual/src/main/kotlin/serializer/saved"

        fun saveSnapshot(json: String) {
            File(PATH, "test.json").writeText(json)
        }

        fun readSnapshot(): String {
            return File(PATH, "test.json").readText()
        }
    }
}