package org.fbme.ide.integration.fordiac.translator.lua

import io.mockk.every
import org.fbme.ide.integration.fordiac.translator.lua.AdapterFBTypeTranslator
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind.DATA
import org.fbme.lib.iec61499.fbnetwork.EntryKind.EVENT
import org.fbme.lib.st.types.ElementaryType.*
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test

class AdapterTest {
    private val block = createAdapterTypeDeclarationMock()

    @Test
    fun `input events interface spec`() {
        val inputDataName1 = "input_data1"
        val param1 = createParameterDeclarationMock(name = inputDataName1, type = INT)
        val inputEventName1 = "input_event1"

        val eventDeclaration1 = createEventDeclarationMock(
            name = inputEventName1,
            associations = mutableListOf(
                createEventAssociationMock(createReferenceMock(param1))
            )
        )

        val inputDataName2 = "input_data2"
        val param2 = createParameterDeclarationMock(name = inputDataName2, type = BOOL)
        val inputEventName2 = "input_event2"

        val eventDeclaration2 = createEventDeclarationMock(
            name = inputEventName2,
            associations = mutableListOf(
                createEventAssociationMock(createReferenceMock(param2))
            )
        )

        every { block.inputParameters } returns mutableListOf(param1, param2)

        val typeDescriptor = createFBTypeDescriptorMock(
            eventInputPorts = listOf(
                FBPortDescriptor(
                    name = inputEventName1,
                    connectionKind = EVENT,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = eventDeclaration1
                ),
                FBPortDescriptor(
                    name = inputEventName2,
                    connectionKind = EVENT,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = eventDeclaration2
                )
            ),
            dataInputPorts = listOf(
                FBPortDescriptor(
                    name = inputDataName1,
                    connectionKind = DATA,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = inputDataName2,
                    connectionKind = DATA,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        every { block.socketTypeDescriptor } returns typeDescriptor

        val actual = AdapterFBTypeTranslator.translate(fbTypeDeclaration = block)
            .toComparableList()
            .firstOccurrenceSublist(wordFrom = "numEIs", wordTo = "EIWithIndexes")

        val expected = listOf(
            "  numEIs = 2,",
            "  EINames = {\"input_event1\", \"input_event2\"},",
            "  EIWith = {0, 255, 1, 255},",
            "  EIWithIndexes = {0, 2},",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `output events interface spec`() {
        val outputDataName1 = "output_data1"
        val param1 = createParameterDeclarationMock(name = outputDataName1, type = INT)
        val outputEventName1 = "output_event1"

        val eventDeclaration1 = createEventDeclarationMock(
            name = outputEventName1,
            associations = mutableListOf(
                createEventAssociationMock(createReferenceMock(param1))
            )
        )

        val outputDataName2 = "output_data2"
        val param2 = createParameterDeclarationMock(name = outputDataName2, type = BOOL)
        val outputEventName2 = "output_event2"

        val eventDeclaration2 = createEventDeclarationMock(
            name = outputEventName2,
            associations = mutableListOf(
                createEventAssociationMock(createReferenceMock(param2))
            )
        )

        every { block.outputParameters } returns mutableListOf(param1, param2)

        val typeDescriptor = createFBTypeDescriptorMock(
            eventOutputPorts = listOf(
                FBPortDescriptor(
                    name = outputEventName1,
                    connectionKind = EVENT,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = eventDeclaration1
                ),
                FBPortDescriptor(
                    name = outputEventName2,
                    connectionKind = EVENT,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = eventDeclaration2
                )
            ),
            dataOutputPorts = listOf(
                FBPortDescriptor(
                    name = outputDataName1,
                    connectionKind = DATA,
                    position = 0,
                    isInput = false,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = outputDataName2,
                    connectionKind = DATA,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = null
                )
            )
        )

        every { block.socketTypeDescriptor } returns typeDescriptor

        val actual = AdapterFBTypeTranslator.translate(fbTypeDeclaration = block)
            .toComparableList()
            .firstOccurrenceSublist(wordFrom = "numEOs", wordTo = "EOWithIndexes")

        val expected = listOf(
            "  numEOs = 2,",
            "  EONames = {\"output_event1\", \"output_event2\"},",
            "  EOWith = {0, 255, 1, 255},",
            "  EOWithIndexes = {0, 2},",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `input data interface spec`() {
        val inputDataName1 = "input_data1"
        val param1 = createParameterDeclarationMock(name = inputDataName1, type = WSTRING)

        val inputDataName2 = "input_data2"
        val param2 = createParameterDeclarationMock(name = inputDataName2, type = TIME)

        every { block.inputParameters } returns mutableListOf(param1, param2)

        val typeDescriptor = createFBTypeDescriptorMock(
            dataInputPorts = listOf(
                FBPortDescriptor(
                    name = inputDataName1,
                    connectionKind = DATA,
                    position = 0,
                    isInput = true,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = inputDataName2,
                    connectionKind = DATA,
                    position = 1,
                    isInput = true,
                    isValid = true,
                    declaration = null
                )
            )
        )

        every { block.socketTypeDescriptor } returns typeDescriptor

        val actual = AdapterFBTypeTranslator.translate(fbTypeDeclaration = block)
            .toComparableList()
            .firstOccurrenceSublist(wordFrom = "numDIs", wordTo = "DIDataTypeNames")

        val expected = listOf(
            "  numDIs = 2,",
            "  DINames = {\"input_data1\", \"input_data2\"},",
            "  DIDataTypeNames = {\"WSTRING\", \"TIME\"},",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `output data interface spec`() {
        val outputDataName1 = "output_data1"
        val param1 = createParameterDeclarationMock(name = outputDataName1, type = DWORD)

        val outputDataName2 = "output_data2"
        val param2 = createParameterDeclarationMock(name = outputDataName2, type = INT)

        every { block.outputParameters } returns mutableListOf(param1, param2)

        val typeDescriptor = createFBTypeDescriptorMock(
            dataOutputPorts = listOf(
                FBPortDescriptor(
                    name = outputDataName1,
                    connectionKind = DATA,
                    position = 0,
                    isInput = false,
                    isValid = true,
                    declaration = null
                ),
                FBPortDescriptor(
                    name = outputDataName2,
                    connectionKind = DATA,
                    position = 1,
                    isInput = false,
                    isValid = true,
                    declaration = null
                )
            )
        )

        every { block.socketTypeDescriptor } returns typeDescriptor

        val actual = AdapterFBTypeTranslator.translate(fbTypeDeclaration = block)
            .toComparableList()
            .firstOccurrenceSublist(wordFrom = "numDOs", wordTo = "DODataTypeNames")

        val expected = listOf(
            "  numDOs = 2,",
            "  DONames = {\"output_data1\", \"output_data2\"},",
            "  DODataTypeNames = {\"DWORD\", \"INT\"}",
        )

        verifyResults(expected, actual)
    }

    @Test
    fun `signature interface spec`() {
        val actual = AdapterFBTypeTranslator.translate(fbTypeDeclaration = block)
            .toComparableList()

        require(actual.size > 2) { "interface spec must have more than two lines" }

        val expectedBeginning = "local interfaceSpec = {"
        val expectedInterfaceSpecEnding = "}"
        val expectedBlockEnding = "return {interfaceSpec = interfaceSpec}"

        assertEquals(expectedBeginning, actual[0])
        assertEquals(expectedInterfaceSpecEnding, actual[actual.lastIndex - 1])
        assertEquals(expectedBlockEnding, actual.last())
    }
}
