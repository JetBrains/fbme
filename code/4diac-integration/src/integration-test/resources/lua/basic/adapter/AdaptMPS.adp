<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE AdapterType SYSTEM "https://www.holobloc.com/xml/LibraryElement.dtd">

<AdapterType Name="Adapt">
	<InterfaceList>
		<EventInputs>
			<Event Name="input_event1">
				<With Var="input_data1" />
			</Event>
			<Event Name="input_event2">
				<With Var="input_data2" />
			</Event>
			<Event Name="input_event3" />
		</EventInputs>
		<EventOutputs>
			<Event Name="output_event1">
				<With Var="output_data1" />
			</Event>
			<Event Name="output_event2">
				<With Var="output_data2" />
				<With Var="output_data3" />
			</Event>
		</EventOutputs>
		<InputVars>
			<VarDeclaration Name="input_data1" Type="WSTRING" />
			<VarDeclaration Name="input_data2" Type="TIME" />
			<VarDeclaration Name="input_data3" Type="BOOL" />
		</InputVars>
		<OutputVars>
			<VarDeclaration Name="output_data1" Type="DWORD" />
			<VarDeclaration Name="output_data2" Type="INT" />
			<VarDeclaration Name="output_data3" Type="BOOL" />
		</OutputVars>
	</InterfaceList>
</AdapterType>

