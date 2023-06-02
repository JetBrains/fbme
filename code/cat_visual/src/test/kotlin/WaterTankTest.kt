import connection.field.ConnectionField
import kotlin.concurrent.thread

val client = buildMappingClient("src/main/kotlin/example/WATER_TANK/WATER_TANK.xml", "src/main/kotlin/example/WATER_TANK/WATER_TANK_CONF.xml", mode = "")


val TANK_VOLUME = 100
val MAX_TEMP = 100

var isInlet: FieldWithCallback<Boolean> = FieldWithCallback(client.getField("stateInlet") as ConnectionField<Boolean>,
    {client.sendValue("stateInlet")})
var isHeat: FieldWithCallback<Boolean> = FieldWithCallback(client.getField("stateHeat") as ConnectionField<Boolean>,
    {client.sendValue("stateHeat")})
var isOutlet: FieldWithCallback<Boolean> = FieldWithCallback(client.getField("stateOutlet") as ConnectionField<Boolean>,
    {client.sendValue("stateOutlet")})
var lamp1: FieldWithCallback<Boolean> = FieldWithCallback(client.getField("lampIndicator1") as ConnectionField<Boolean>,
    {client.sendValue("lampIndicator1")})
var lamp2: FieldWithCallback<Boolean> = FieldWithCallback(client.getField("lampIndicator2") as ConnectionField<Boolean>,
    {client.sendValue("lampIndicator2")})
var tankIndicator: FieldWithCallback<Float> = FieldWithCallback(client.getField("tankIndicator") as ConnectionField<Float>,
    {client.sendValue("tankIndicator")})
var outputIndicator: FieldWithCallback<Float> = FieldWithCallback(client.getField("outputIndicator") as ConnectionField<Float>,
    {client.sendValue("outputIndicator")})
var knob1: FieldWithCallback<Int> = FieldWithCallback(client.getField("knob1") as ConnectionField<Int>, {
    runUpdate()
})
var knob2: FieldWithCallback<Int> = FieldWithCallback(client.getField("knob2") as ConnectionField<Int>, {
    runUpdate()
})


fun runSimulation(){
    client.retrieveValues(mapOf(Pair("knob1", {knob1.callback(0)}), Pair("knob2", {knob2.callback(0)})), false)
}

fun runUpdate() {
    if (knob1.field.getValue() == 0) {
        return
    }
    if (isInlet.field.getValue() || isHeat.field.getValue() || isOutlet.field.getValue()) {
        return
    }
    isInlet.field.setValue(true)
    isInlet.callback(true)
    lamp1.field.setValue(true)
    lamp1.callback(true)
    var currTankState = 0
    while (currTankState < TANK_VOLUME) {
        currTankState += knob1.field.getValue() / 2
        tankIndicator.field.setValue(currTankState.toFloat())
        tankIndicator.callback(currTankState.toFloat())
        Thread.sleep( 500)
    }
    isInlet.field.setValue(false)
    isInlet.callback(false)
    lamp1.field.setValue(false)
    lamp1.callback(false)
    isHeat.field.setValue(true)
    isHeat.callback(true)
    var currTemp = knob2.field.getValue()
    while (currTemp < MAX_TEMP) {
        currTemp += 10
        outputIndicator.field.setValue(currTemp.toFloat())
        outputIndicator.callback(currTemp.toFloat())
        Thread.sleep(500)
    }
    isHeat.field.setValue(false)
    isHeat.callback(false)
    isOutlet.field.setValue(true)
    isOutlet.callback(true)
    lamp2.field.setValue(true)
    lamp2.callback(true)
    currTankState = TANK_VOLUME
    while (currTankState > 0) {
        currTankState -= knob1.field.getValue() / 2
        tankIndicator.field.setValue(currTankState.toFloat())
        tankIndicator.callback(currTankState.toFloat())
        Thread.sleep( 500)
    }
    isOutlet.field.setValue(false)
    isOutlet.callback(false)
    lamp2.field.setValue(false)
    lamp2.callback(false)
    outputIndicator.field.setValue(0f)
    outputIndicator.callback(0f)
}

fun main() {
    runSimulation()
}