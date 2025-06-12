package org.fbme.ide.integration.fordiac.parser

import com.fasterxml.jackson.annotation.JsonCreator
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlRootElement
import org.fbme.ide.integration.fordiac.parser.ErrorReason.NULL
import org.fbme.ide.integration.fordiac.parser.exceptions.ResponseParserException

/**
 * Enum representing different error reasons that can occur in 4diac FORTE XML responses.
 */
enum class ErrorReason {
    NULL,
    UNSUPPORTED_TYPE,
    INVALID_DST,
    NOT_READY,
    UNSUPPORTED_CMD,
    INVALID_OBJECT,
    INVALID_OPERATION,
    OVERFLOW,
    NULL_POINTER,
    INTERRUPTED,
    UNKNOWN,
    INVALID_STATE,
    DUPLICATE_OBJECT,
    NO_SUCH_OBJECT;

    companion object {
        /**
         * Parses a string into an ErrorReason enum.
         * @param reason The string representation of the error reason.
         * @return The ErrorReason enum corresponding to the given string.
         * @throws ResponseParserException If the reason string is not recognized.
         */
        @JvmStatic
        fun fromString(reason: String?): ErrorReason {
            return reason?.let {
                ErrorReason.values().find { it.name == reason }
                    ?: throw ResponseParserException(message = "Failed recognising value of Reason: '$reason'")
            } ?: NULL
        }
    }
}

/**
 * Represents an ID Response received from 4diac FORTE as XML.
 * @property id The ID of the response.
 * @property errorReason The reason for any error associated with the response.
 */
@JacksonXmlRootElement(localName = "Response")
data class IDResponse(
    val id: Long,
    val errorReason: ErrorReason,
) {
    @JsonCreator
    constructor(
        @JacksonXmlProperty(localName = "ID")
        id: Long,
        @JacksonXmlProperty(localName = "Reason")
        errorReason: String?
    ) : this(id, ErrorReason.fromString(errorReason))

    fun didSucceed() = errorReason == NULL
}

private fun String?.parseNameList() = this?.split(", ")?.map(String::trim)?.toList() ?: emptyList()

/**
 * Represents a Name List Response received from 4diac FORTE as XML.
 * @property idResponse The parsed IDResponse instance associated with the name list.
 * @property names The names that were listed in XML body.
 */
@JacksonXmlRootElement(localName = "Response")
data class NameListResponse(
    val idResponse: IDResponse,
    val names: List<String>
) {
    @JsonCreator
    constructor(
        @JacksonXmlProperty(localName = "ID")
        id: Long,
        @JacksonXmlProperty(localName = "Reason")
        errorReason: String?,
        @JacksonXmlProperty(localName = "NameList")
        names: String?
    ) : this(IDResponse(id, errorReason), names.parseNameList())
}

/**
 * Represents an FB List Response received from 4diac FORTE as XML.
 * @property idResponse The parsed IDResponse instance associated with the FB list.
 * @property functionBlockNames The names that were listed in XML body.
 */
@JacksonXmlRootElement(localName = "Response")
data class FBListResponse(
    val idResponse: IDResponse,
    val functionBlockNames: List<FB>
) {
    @JsonCreator
    constructor(
        @JacksonXmlProperty(localName = "ID")
        id: Long,
        @JacksonXmlProperty(localName = "Reason")
        errorReason: String?,
        @JacksonXmlProperty(localName = "FBList")
        functionBlocks: List<FB>
    ) : this(IDResponse(id, errorReason), functionBlocks)
}

/**
 * Represents a Function Block received from 4diac FORTE as XML.
 * @property name The name of the function block.
 * @property type The type of the function block.
 */
@JacksonXmlRootElement(localName = "FB")
data class FB(
    @JacksonXmlProperty(localName = "name")
    val name: String,
    @JacksonXmlProperty(localName = "type")
    val type: String,
)
