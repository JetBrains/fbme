package org.fbme.ide.integration.fordiac.parser

import com.fasterxml.jackson.core.exc.StreamReadException
import com.fasterxml.jackson.databind.DatabindException
import com.fasterxml.jackson.dataformat.xml.XmlMapper
import org.fbme.ide.integration.fordiac.parser.exceptions.ResponseParserException

/**
 * ResponseParser is responsible for parsing XML responses from the 4diac FORTE into corresponding data classes.
 */
object ResponseParser {
    private val mapper: XmlMapper = XmlMapper()

    /**
     * Parses the provided XML string into an object of type T.
     * @param rawResponse The raw XML response string.
     * @param clazz The class of the object to parse the XML into.
     * @return An object of type T parsed from the XML response.
     * @throws ResponseParserException If there is an issue parsing the XML.
     */
    private fun <T> parseXML(rawResponse: String, clazz: Class<T>): T {
        return try {
            mapper.readValue(rawResponse, clazz)
        } catch (e: StreamReadException) {
            throw ResponseParserException(message = "Invalid XML content: ${e.message}", cause = e)
        } catch (e: DatabindException) {
            throw ResponseParserException(
                message = "XML structure does not match expected structure for result type: ${e.message}",
                cause = e
            )
        }
    }

    /**
     * Parses the provided XML response string into an IDResponse object.
     * @param rawResponse The raw XML response string.
     * @return An IDResponse object parsed from the XML response.
     * @throws ResponseParserException If there is an issue parsing the XML.
     */
    fun parseIDResponse(rawResponse: String): IDResponse =
        parseXML(rawResponse = rawResponse, clazz = IDResponse::class.java)

    /**
     * Parses the provided XML response string into a NameListResponse object.
     * @param rawResponse The raw XML response string.
     * @return A NameListResponse object parsed from the XML response.
     * @throws ResponseParserException If there is an issue parsing the XML.
     */
    fun parseNameListResponse(rawResponse: String): NameListResponse =
        parseXML(rawResponse = rawResponse, clazz = NameListResponse::class.java)

    /**
     * Parses the provided XML response string into an FBListResponse object.
     * @param rawResponse The raw XML response string.
     * @return An FBListResponse object parsed from the XML response.
     * @throws ResponseParserException If there is an issue parsing the XML.
     */
    fun parseFBListResponse(rawResponse: String): FBListResponse =
        parseXML(rawResponse = rawResponse, clazz = FBListResponse::class.java)
}
