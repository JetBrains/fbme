package org.fbme.ide.integration.fordiac.lua

import io.mockk.every
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind.*
import org.junit.jupiter.api.Test

class BlockConstantsTest {
    private val block: BasicFBTypeDeclaration = createBasicFBTypeDeclarationMock()

    @Test
    fun `global ECC state variables`() {
        val ecc = let {
            val state1 = createStateDeclarationMock(index = 0, name = "STATE1")
            val state2 = createStateDeclarationMock(index = 1, name = "STATE2")
            val state3 = createStateDeclarationMock(index = 2, name = "STATE3")
            createECCMock(
                states = mutableListOf(state1, state2, state3)
            )
        }

        every { block.ecc } returns ecc

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("FB_STATE", "STATE3")

        val expected = listOf(
            "local FB_STATE = 0",
            "local ECC_STATE1 = 0",
            "local ECC_STATE2 = 1",
            "local ECC_STATE3 = 2",
        )

        verifyResults(expected, actual)
    }


    @Test
    fun `global event input variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            eventInputPorts = listOf(
                FBPortDescriptor(
                    name = "event1",
                    connectionKind = EVENT,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "event2",
                    connectionKind = EVENT,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        every { block.typeDescriptor } returns typeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("event1", "event2")

        val expected = listOf(
            "local EI_event1 = 0",
            "local EI_event2 = 1",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }


    @Test
    fun `global event output variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            eventOutputPorts = listOf(
                FBPortDescriptor(
                    name = "event1",
                    connectionKind = EVENT,
                    position = 0,
                    isInput = false,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "event2",
                    connectionKind = EVENT,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = null
                )
            )
        )

        every { block.typeDescriptor } returns typeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("event1", "event2")

        val expected = listOf(
            "local EO_event1 = 0",
            "local EO_event2 = 1",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global data input variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            dataInputPorts = listOf(
                FBPortDescriptor(
                    name = "data1",
                    connectionKind = DATA,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "data2",
                    connectionKind = DATA,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        every { block.typeDescriptor } returns typeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("data1", "data2")

        val expected = listOf(
            "local DI_data1 = 33554432",
            "local DI_data2 = 33554433",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global data output variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            dataOutputPorts = listOf(
                FBPortDescriptor(
                    name = "data1",
                    connectionKind = DATA,
                    position = 0,
                    isInput = false,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "data2",
                    connectionKind = DATA,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = null
                )
            )
        )

        every { block.typeDescriptor } returns typeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .firstOccurrenceSublist("data1", "data2")

        val expected = listOf(
            "local DO_data1 = 67108864",
            "local DO_data2 = 67108865",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global socket event input variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            eventInputPorts = listOf(
                FBPortDescriptor(
                    name = "event1",
                    connectionKind = EVENT,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "event2",
                    connectionKind = EVENT,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        val adapterTypeDeclaration = createAdapterTypeDeclarationMock(typeDescriptor, StringIdentifier("id"))

        val socketTypeDescriptor = createFBTypeDescriptorMock(
            socketPorts = listOf(
                FBPortDescriptor(
                    name = "socket1",
                    connectionKind = ADAPTER,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "socket2",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            )
        )

        every { block.typeDescriptor } returns socketTypeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("event1", "event2", occurrenceNumTo = 2)

        val expected = listOf(
            "local AEI_socket1_event1 = 805306368",
            "local AEI_socket1_event2 = 805306369",
            "local AEI_socket2_event1 = 805371904",
            "local AEI_socket2_event2 = 805371905",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global socket event output variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            eventOutputPorts = listOf(
                FBPortDescriptor(
                    name = "event1",
                    connectionKind = EVENT,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "event2",
                    connectionKind = EVENT,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        val adapterTypeDeclaration = createAdapterTypeDeclarationMock(typeDescriptor, StringIdentifier("id"))

        val socketTypeDescriptor = createFBTypeDescriptorMock(
            socketPorts = listOf(
                FBPortDescriptor(
                    name = "socket1",
                    connectionKind = ADAPTER,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "socket2",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            )
        )

        every { block.typeDescriptor } returns socketTypeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("event1", "event2", occurrenceNumTo = 2)

        val expected = listOf(
            "local AEO_socket1_event1 = 134217728",
            "local AEO_socket1_event2 = 134217729",
            "local AEO_socket2_event1 = 134283264",
            "local AEO_socket2_event2 = 134283265",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global socket data input variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            dataInputPorts = listOf(
                FBPortDescriptor(
                    name = "data1",
                    connectionKind = DATA,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "data2",
                    connectionKind = DATA,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        val adapterTypeDeclaration = createAdapterTypeDeclarationMock(typeDescriptor, StringIdentifier("id"))

        val socketTypeDescriptor = createFBTypeDescriptorMock(
            socketPorts = listOf(
                FBPortDescriptor(
                    name = "socket1",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "socket2",
                    connectionKind = ADAPTER,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            )
        )

        every { block.typeDescriptor } returns socketTypeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("data1", "data2", occurrenceNumTo = 2)

        val expected = listOf(
            "local ADI_socket1_data1 = 167837697",
            "local ADI_socket1_data2 = 167837698",
            "local ADI_socket2_data1 = 167903233",
            "local ADI_socket2_data2 = 167903234",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global socket data output variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            dataOutputPorts = listOf(
                FBPortDescriptor(
                    name = "data1",
                    connectionKind = DATA,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "data2",
                    connectionKind = DATA,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        val adapterTypeDeclaration = createAdapterTypeDeclarationMock(typeDescriptor, StringIdentifier("id"))

        val socketTypeDescriptor = createFBTypeDescriptorMock(
            socketPorts = listOf(
                FBPortDescriptor(
                    name = "socket1",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "socket2",
                    connectionKind = ADAPTER,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            )
        )

        every { block.typeDescriptor } returns socketTypeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("data1", "data2", occurrenceNumTo = 2)

        val expected = listOf(
            "local ADO_socket1_data1 = 201392129",
            "local ADO_socket1_data2 = 201392130",
            "local ADO_socket2_data1 = 201457665",
            "local ADO_socket2_data2 = 201457666",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global plug event input variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            eventInputPorts = listOf(
                FBPortDescriptor(
                    name = "event1",
                    connectionKind = EVENT,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "event2",
                    connectionKind = EVENT,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        val adapterTypeDeclaration = createAdapterTypeDeclarationMock(typeDescriptor, StringIdentifier("id"))

        val plugTypeDescriptor = createFBTypeDescriptorMock(
            plugPorts = listOf(
                FBPortDescriptor(
                    name = "plug1",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "plug2",
                    connectionKind = ADAPTER,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            )
        )

        every { block.typeDescriptor } returns plugTypeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("event1", "event2", occurrenceNumTo = 2)

        val expected = listOf(
            "local AEI_plug1_event1 = 805371905",
            "local AEI_plug1_event2 = 805371906",
            "local AEI_plug2_event1 = 805437441",
            "local AEI_plug2_event2 = 805437442",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global plug event output variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            eventOutputPorts = listOf(
                FBPortDescriptor(
                    name = "event1",
                    connectionKind = EVENT,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "event2",
                    connectionKind = EVENT,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        val adapterTypeDeclaration = createAdapterTypeDeclarationMock(typeDescriptor, StringIdentifier("id"))

        val plugTypeDescriptor = createFBTypeDescriptorMock(
            plugPorts = listOf(
                FBPortDescriptor(
                    name = "plug1",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "plug2",
                    connectionKind = ADAPTER,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            )
        )

        every { block.typeDescriptor } returns plugTypeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("event1", "event2", occurrenceNumTo = 2)

        val expected = listOf(
            "local AEO_plug1_event1 = 134283265",
            "local AEO_plug1_event2 = 134283266",
            "local AEO_plug2_event1 = 134348801",
            "local AEO_plug2_event2 = 134348802",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global plug data input variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            dataInputPorts = listOf(
                FBPortDescriptor(
                    name = "data1",
                    connectionKind = DATA,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "data2",
                    connectionKind = DATA,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        val adapterTypeDeclaration = createAdapterTypeDeclarationMock(typeDescriptor, StringIdentifier("id"))

        val plugTypeDescriptor = createFBTypeDescriptorMock(
            plugPorts = listOf(
                FBPortDescriptor(
                    name = "plug1",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "plug2",
                    connectionKind = ADAPTER,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            )
        )

        every { block.typeDescriptor } returns plugTypeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("data1", "data2", occurrenceNumTo = 2)

        val expected = listOf(
            "local ADI_plug1_data1 = 167837697",
            "local ADI_plug1_data2 = 167837698",
            "local ADI_plug2_data1 = 167903233",
            "local ADI_plug2_data2 = 167903234",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global plug data output variables`() {
        val typeDescriptor = createFBTypeDescriptorMock(
            dataOutputPorts = listOf(
                FBPortDescriptor(
                    name = "data1",
                    connectionKind = DATA,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "data2",
                    connectionKind = DATA,
                    position = 2,
                    isInput = false,
                    isValid = true,
                    declaration = null
                )
            )
        )

        val adapterTypeDeclaration = createAdapterTypeDeclarationMock(typeDescriptor, StringIdentifier("id"))

        val plugTypeDescriptor = createFBTypeDescriptorMock(
            plugPorts = listOf(
                FBPortDescriptor(
                    name = "plug1",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "plug2",
                    connectionKind = ADAPTER,
                    position = 2,
                    isInput = false,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            )
        )

        every { block.typeDescriptor } returns plugTypeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("data1", "data2", occurrenceNumTo = 2)

        val expected = listOf(
            "local ADO_plug1_data1 = 201392129",
            "local ADO_plug1_data2 = 201392130",
            "local ADO_plug2_data1 = 201457665",
            "local ADO_plug2_data2 = 201457666",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    @Test
    fun `global socket and plug variables`() {
        val adapterTypeDescriptor = createFBTypeDescriptorMock(
            dataInputPorts = listOf(
                FBPortDescriptor(
                    name = "data1",
                    connectionKind = DATA,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "data2",
                    connectionKind = DATA,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            ),
            dataOutputPorts = listOf(
                FBPortDescriptor(
                    name = "data1",
                    connectionKind = DATA,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "data2",
                    connectionKind = DATA,
                    position = 2,
                    isInput = false,
                    isValid = true,
                    declaration = null
                )
            ),
            eventInputPorts = listOf(
                FBPortDescriptor(
                    name = "event1",
                    connectionKind = EVENT,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "event2",
                    connectionKind = EVENT,
                    position = 2,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            ),
            eventOutputPorts = listOf(
                FBPortDescriptor(
                    name = "event1",
                    connectionKind = EVENT,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = "event2",
                    connectionKind = EVENT,
                    position = 2,
                    isInput = false,
                    isValid = true,
                    declaration = null
                )
            )
        )

        val adapterTypeDeclaration = createAdapterTypeDeclarationMock(adapterTypeDescriptor, StringIdentifier("id"))

        val blockTypeDescriptor = createFBTypeDescriptorMock(
            socketPorts = listOf(
                FBPortDescriptor(
                    name = "socket1",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "socket2",
                    connectionKind = ADAPTER,
                    position = 2,
                    isInput = false,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            ),
            plugPorts = listOf(
                FBPortDescriptor(
                    name = "plug1",
                    connectionKind = ADAPTER,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                ),
                FBPortDescriptor(
                    name = "plug2",
                    connectionKind = ADAPTER,
                    position = 2,
                    isInput = false,
                    isValid = true,
                    declaration = adapterTypeDeclaration
                )
            )
        )

        every { block.typeDescriptor } returns blockTypeDescriptor

        val actual = BasicFBTypeLuaTranslator.translate(block)
            .toComparableList()
            .occurrenceSublist("AEO_socket1_event1", "ADI_plug2_data2")

        val expected = listOf(
            "local AEO_socket1_event1 = 134414337",
            "local AEO_socket1_event2 = 134414338",
            "local AEI_socket1_event1 = 805502977",
            "local AEI_socket1_event2 = 805502978",
            "local ADO_socket1_data1 = 201523201",
            "local ADO_socket1_data2 = 201523202",
            "local ADI_socket1_data1 = 167968769",
            "local ADI_socket1_data2 = 167968770",

            "local AEO_socket2_event1 = 134479873",
            "local AEO_socket2_event2 = 134479874",
            "local AEI_socket2_event1 = 805568513",
            "local AEI_socket2_event2 = 805568514",
            "local ADO_socket2_data1 = 201588737",
            "local ADO_socket2_data2 = 201588738",
            "local ADI_socket2_data1 = 168034305",
            "local ADI_socket2_data2 = 168034306",

            "local AEO_plug1_event1 = 134283265",
            "local AEO_plug1_event2 = 134283266",
            "local AEI_plug1_event1 = 805371905",
            "local AEI_plug1_event2 = 805371906",
            "local ADO_plug1_data1 = 201392129",
            "local ADO_plug1_data2 = 201392130",
            "local ADI_plug1_data1 = 167837697",
            "local ADI_plug1_data2 = 167837698",

            "local AEO_plug2_event1 = 134348801",
            "local AEO_plug2_event2 = 134348802",
            "local AEI_plug2_event1 = 805437441",
            "local AEI_plug2_event2 = 805437442",
            "local ADO_plug2_data1 = 201457665",
            "local ADO_plug2_data2 = 201457666",
            "local ADI_plug2_data1 = 167903233",
            "local ADI_plug2_data2 = 167903234",
        )

        checkUniqueValues(lst = expected)

        verifyResults(expected, actual)
    }

    private fun checkUniqueValues(lst: List<String>, delimiter: String = " ", fieldIndex: Int = 3) {
        assert(lst.map { it.split(delimiter)[fieldIndex] }.toSet().size == lst.size)
    }
}
