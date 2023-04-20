package org.fbme.smvDebugger.integration

import org.fbme.smvDebugger.model.Counterexample
import org.fbme.smvDebugger.model.CounterexampleParser
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path
import java.util.*

class SmvService(provider: ServicePathProvider) {
    private val fb2SmvService: Fb2SmvService
    private val nuSmvService: NuSmvService
    private val nutracService: NutracService
    private val counterexampleParser: CounterexampleParser
    fun verify(fbPath: Path?, specification: String): Optional<Counterexample> {
        return try {
            val smvPath = fb2SmvService.convertFbToSmv(fbPath)
            val rawCounterexamplePath = nuSmvService.getRawCounterexample(smvPath, specification)
            Files.delete(smvPath)
            if (rawCounterexamplePath.isEmpty) {
                return Optional.empty()
            }
            val csvCounterexamplePath = nutracService.convertToCsv(rawCounterexamplePath.get())
            Files.delete(rawCounterexamplePath.get())
            val lines = Files.readAllLines(csvCounterexamplePath)
            Files.delete(csvCounterexamplePath)
            val counterexample = counterexampleParser.parse(lines)
            Optional.of(counterexample)
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
    }

    fun parseCounterexample(exportedPath: Path?): Counterexample? {
        return try {
            val lines = Files.readAllLines(exportedPath)
            counterexampleParser.parse(lines)
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
    }

    init {
        fb2SmvService = Fb2SmvService(provider.fb2SmvServicePath)
        nuSmvService = NuSmvService(provider.nuSmvServicePath)
        nutracService = NutracService(provider.nutracServicePath)
        counterexampleParser = CounterexampleParser()
    }
}
