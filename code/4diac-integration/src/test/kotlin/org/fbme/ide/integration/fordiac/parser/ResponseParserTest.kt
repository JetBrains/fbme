package org.fbme.ide.integration.fordiac.parser

import com.fasterxml.jackson.core.exc.StreamReadException
import com.fasterxml.jackson.databind.DatabindException
import org.fbme.ide.integration.fordiac.parser.ErrorReason.*
import org.fbme.ide.integration.fordiac.parser.ResponseParser.parseFBListResponse
import org.fbme.ide.integration.fordiac.parser.ResponseParser.parseIDResponse
import org.fbme.ide.integration.fordiac.parser.ResponseParser.parseNameListResponse
import org.fbme.ide.integration.fordiac.parser.exceptions.ResponseParserException
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.assertThrows

class ResponseParserTest {

    @Test
    fun `id response`() {
        val xmlResponse = "<Response ID=\"6\"/>"
        val actualResponse = parseIDResponse(rawResponse = xmlResponse)
        val expected = IDResponse(id = 6, errorReason = NULL)
        assertEquals(expected, actualResponse)
    }

    @Test
    fun `unsupported type response`() {
        val xmlResponse = "<Response ID=\"7\" Reason=\"UNSUPPORTED_TYPE\"/>"
        val actualResponse = parseIDResponse(rawResponse = xmlResponse)
        val expected = IDResponse(id = 7, errorReason = UNSUPPORTED_TYPE)
        assertEquals(expected, actualResponse)
    }

    @Test
    fun `unsupported command response`() {
        val xmlResponse = "<Response ID=\"7\" Reason=\"UNSUPPORTED_CMD\"/>"
        val actualResponse = parseIDResponse(rawResponse = xmlResponse)
        val expected = IDResponse(id = 7, errorReason = UNSUPPORTED_COMMAND)
        assertEquals(expected, actualResponse)
    }

    @Test
    fun `name list response`() {
        val xmlResponse =
            """
            <Response ID="2">

              <NameList>
                ANY_ADAPTER, ATimeOut, ARTimeOut
              </NameList>

            </Response>
            """
        val actualResponse = parseNameListResponse(rawResponse = xmlResponse)
        val expected =
            NameListResponse(
                IDResponse(id = 2, errorReason = NULL),
                names = listOf("ANY_ADAPTER", "ATimeOut", "ARTimeOut")
            )
        assertEquals(expected, actualResponse)
    }

    @Test
    fun `fb list response`() {
        val xmlResponse =
            """
            <Response ID="3">

                <FBList>
                
                  <FB name="EMB_RES" type="EMB_RES"/>
                
                  <FB name="EMB_RES_1" type="EMB_RES"/>
                
                </FBList>
                
            </Response>
            """
        val actualResponse = parseFBListResponse(rawResponse = xmlResponse)
        val expected =
            FBListResponse(
                IDResponse(id = 3, errorReason = NULL),
                functionBlockNames = listOf(FB("EMB_RES", "EMB_RES"), FB("EMB_RES_1", "EMB_RES"))
            )
        assertEquals(expected, actualResponse)
    }

    @Test
    fun `id response incorrect xml format`() {
        val xmlResponse = "<Response ID=\"6\"/"
        val exception = assertThrows<ResponseParserException> { parseIDResponse(rawResponse = xmlResponse) }
        assert(exception.message!!.startsWith("Invalid XML content: Unexpected end of input block in start tag"))
        assert(exception.cause is StreamReadException)
    }

    @Test
    fun `id response incorrect structure`() {
        val xmlResponse = "<Response name=\"EMB_RES\" ID=\"6\"/>"
        val exception = assertThrows<ResponseParserException> { parseIDResponse(rawResponse = xmlResponse) }
        assert(
            exception.message!!.startsWith(
                "XML structure does not match expected structure for result type:" +
                        " Unrecognized field \"name\""
            )
        )
        assert(exception.cause is DatabindException)
    }

    @Test
    fun `id response unknown error reason type`() {
        val xmlResponse = "<Response ID=\"7\" Reason=\"?\"/>"
        val exception = assertThrows<ResponseParserException> { parseIDResponse(rawResponse = xmlResponse) }
        assert(exception.message!!.contains("Failed recognising value of Reason: '?'"))
        assert(exception.cause is DatabindException)
    }
}
