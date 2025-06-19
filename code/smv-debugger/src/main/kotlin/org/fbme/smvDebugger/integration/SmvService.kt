package org.fbme.smvDebugger.integration

import org.fbme.smvDebugger.model.Counterexample
import org.fbme.smvDebugger.model.CounterexampleParser
import java.io.File
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path
import kotlin.io.path.pathString

class SmvService(provider: ServicePathProvider) {
    private val nuSmvService: NuSmvService
    private val counterexampleParser: CounterexampleParser
    fun verify(fbPath: Path, specification: String): Path? {
        return try {
            //val smvPath = fb2SmvService.convertFbToSmv(fbPath)
            val smvPath = fbPath.pathString.substring(0, fbPath.pathString.lastIndexOf(".")) + ".smv"

            val rawCounterexamplePath = nuSmvService.getRawCounterexample(File(smvPath).toPath(), specification)
        //    Files.delete(smvPath)
            if (rawCounterexamplePath.isEmpty) {
                return null
            }
            return rawCounterexamplePath.get()


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
        nuSmvService = NuSmvService(provider.nuSmvServicePath)
        counterexampleParser = CounterexampleParser()
    }
}
