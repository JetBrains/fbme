package org.fbme.ide.platform.persistence

import jetbrains.mps.extapi.model.CustomPersistenceLoadFacility
import jetbrains.mps.extapi.model.EditableSModelBase
import jetbrains.mps.extapi.model.PersistenceProblem
import jetbrains.mps.extapi.model.SModelSimpleHeader
import jetbrains.mps.persistence.LoadedStrategyAware
import jetbrains.mps.smodel.InvalidSModel
import jetbrains.mps.smodel.SModel
import jetbrains.mps.smodel.loading.ModelLoadingState
import jetbrains.mps.util.IterableUtil
import org.jetbrains.mps.openapi.model.SModel.*
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.persistence.*
import java.util.stream.Collectors
import java.util.stream.Stream
import java.util.stream.StreamSupport

class CustomPersistenceModelWithHeader0(
    private val header: SModelSimpleHeader,
    source: DataSource,
    private val loadFacility: CustomPersistenceLoadFacility
) : EditableSModelBase(header.modelReference, source), LoadedStrategyAware {
    @Volatile
    private var internalModelData: SModel? = null

    private val loadLock = Any()

    private val problems: MutableList<Problem> = ArrayList()

    private fun initializeWithModelData(modelData: SModel) {
        val oldState: ModelLoadingState
        synchronized(loadLock) {
            oldState = loadingState
            internalModelData = modelData
            internalModelData!!.setModelDescriptor(this, nodeEventDispatch)
            loadingState = ModelLoadingState.FULLY_LOADED
        }
        fireModelStateChanged(oldState, loadingState)
    }

    override fun getCurrentModelInternal(): SModel? {
        return internalModelData
    }

    override fun getSModelInternal(): SModel {
        if (myDataIsNotYetLoadedFromSource()) {
            synchronized(loadLock) {
                if (myDataIsNotYetLoadedFromSource()) {
                    readModelData()
                }
            }
        }
        return internalModelData!!
    }

    private fun myDataIsNotYetLoadedFromSource(): Boolean {
        return internalModelData == null
    }

    private fun readModelData() {
        initializeWithModelData(readModelData0())
    }

    private fun readModelData0(): SModel {
        return try {
            loadFacility.readModel(header) as SModel
        } catch (e: ModelLoadException) {
            StubModel(reference, e)
        }
    }

    override fun doUnload() {
        internalModelData = null
    }

    override fun reloadContents() {
        if (!isLoaded) {
            return
        }
        synchronized(loadLock) {
            internalModelData!!.dispose()
            readModelData()
            assert(!isChanged)
            fireModelReplaced()
        }
    }

    @Throws(ModelSaveException::class)
    override fun saveModel(): Boolean {
        val modelData = modelData
        if (modelData is InvalidSModel) {
            // we do not save stub model to not overwrite the real model
            return false
        }
        try {
            loadFacility.writeModel(header, internalModelData!!)
        } catch (e: ModelSaveException) {
            problems.clear()
            problems.addAll(IterableUtil.asList(e.problems))
            throw e
        }
        return false
    }

    override fun getProblems(): Iterable<Problem> {
        val streamFromIterable = StreamSupport.stream(super.getProblems().spliterator(), false)
        val concat = Stream.concat(problems.stream(), streamFromIterable)
        return concat.collect(Collectors.toList())
    }

    private class StubModel constructor(
        modelReference: SModelReference,
        private val cause: ModelLoadException?
    ) : SModel(modelReference), InvalidSModel {
        private val msg: String
            get() = if (cause == null) "Couldn't read model." else "Cannot load. I/O problem: " + cause.message

        override fun getProblems() =
            setOf<Problem>(PersistenceProblem(Problem.Kind.Load, msg, null, true))
    }

    override fun getModelFactory(): ModelFactory {
        return loadFacility.modelFactory
    }

    companion object {
        @Throws(ModelLoadException::class)
        fun readHeaderAndCreate(
            source: DataSource,
            facility: CustomPersistenceLoadFacility
        ): CustomPersistenceModelWithHeader0 {
            val header = facility.readHeader()
            return CustomPersistenceModelWithHeader0(header, source, facility)
        }
    }
}