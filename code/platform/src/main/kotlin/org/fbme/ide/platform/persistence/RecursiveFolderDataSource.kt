package org.fbme.ide.platform.persistence

import com.intellij.openapi.util.io.FileUtil
import com.intellij.openapi.util.io.FileUtilRt
import jetbrains.mps.extapi.persistence.DataSourceBase
import jetbrains.mps.extapi.persistence.FileDataSource
import jetbrains.mps.extapi.persistence.FileSystemBasedDataSource
import jetbrains.mps.internal.collections.runtime.ListSequence
import jetbrains.mps.internal.collections.runtime.SetSequence
import jetbrains.mps.vfs.IFile
import jetbrains.mps.vfs.refresh.CachingFileSystem
import jetbrains.mps.vfs.refresh.FileListeningPreferences
import jetbrains.mps.vfs.refresh.FileSystemEvent
import jetbrains.mps.vfs.refresh.FileSystemListener
import org.jetbrains.mps.openapi.persistence.DataSourceListener
import org.jetbrains.mps.openapi.persistence.MultiStreamDataSource
import org.jetbrains.mps.openapi.persistence.MultiStreamDataSourceListener
import org.jetbrains.mps.openapi.persistence.StreamDataSource
import org.jetbrains.mps.openapi.persistence.datasource.DataSourceType
import org.jetbrains.mps.openapi.util.ProgressMonitor
import java.io.File
import java.util.*
import java.util.function.Predicate
import java.util.stream.Collectors
import java.util.stream.Stream
import java.util.stream.StreamSupport
import kotlin.streams.asStream

class RecursiveFolderDataSource @JvmOverloads constructor(
    val rootFolder: IFile,
    private val childFilter: (IFile) -> Boolean = { true }
) : DataSourceBase(), MultiStreamDataSource, FileSystemListener, FileSystemBasedDataSource {
    private val lock = Any()
    private val listeners: MutableList<DataSourceListener> = ArrayList()

    @Volatile
    private var lastAddRemove: Long = -1L

    init {
        require(!(rootFolder.exists() && !rootFolder.isDirectory)) { "Could not create FolderDataSource with regular file: $rootFolder" }
    }

    private fun isIncluded(file: IFile): Boolean {
        return childFilter(file)
    }

    private val descendantFiles: Sequence<IFile>
        get() = getDescendantFiles(rootFolder)

    private fun getDescendantFiles(file: IFile): Sequence<IFile> {
        return file.children!!.asSequence().flatMap { child: IFile ->
            if (child.isDirectory) {
                return@flatMap getDescendantFiles(child)
            } else {
                return@flatMap sequenceOf(child)
            }
        }
    }

    override fun isReadOnly(): Boolean {
        return rootFolder.isPackaged
    }

    override fun getLocation(): String {
        return rootFolder.toString()
    }

    override fun getSubStreams(): Stream<StreamDataSource> = descendantFiles
        .filter { file: IFile -> isIncluded(file) }
        .map { file: IFile -> DescendantFileDataSource(file, rootFolder) }
        .asStream()

    override fun getStreamByNameOrCreate(name: String): StreamDataSource {
        return (if (getStreamByName(name) != null) getStreamByName(name) else DescendantFileDataSource(
            rootFolder.getDescendant(name), rootFolder
        )) as StreamDataSource
    }

    override fun getTimestamp(): Long {
        var max = lastAddRemove
        var any = false
        for (file in descendantFiles) {
            if (isIncluded(file)) {
                any = true
                val timestamp = file.lastModified()
                if (timestamp > max) {
                    max = timestamp
                }
            }
        }
        return if (any) max else -1L
    }

    override fun addListener(listener: DataSourceListener) {
        synchronized(lock) {
            if (listeners.isEmpty()) {
                val fs = rootFolder.fileSystem
                if (fs is CachingFileSystem) {
                    fs.addListener(this)
                }
            }
            listeners.add(listener)
        }
    }

    override fun removeListener(listener: DataSourceListener) {
        synchronized(lock) {
            listeners.remove(listener)
            if (listeners.isEmpty()) {
                val fs = rootFolder.fileSystem
                if (fs is CachingFileSystem) {
                    fs.removeListener(this)
                }
            }
        }
    }

    override fun getFileToListen(): IFile {
        return rootFolder
    }

    override fun listeningPreferences(): FileListeningPreferences {
        return FileListeningPreferences.construct().notifyOnDescendantRemoval().notifyOnDescendantCreation()
            .notifyOnDescendantChange().notifyOnAncestorChange().build()
    }

    override fun delete(): Boolean {
        return if (this.isReadOnly) {
            false
        } else {
            descendantFiles.filter(childFilter).forEach { file: IFile -> file.deleteIfExists() }
            lastAddRemove = -1L
            true
        }
    }

    private fun getStreamName(file: IFile): String {
        return FileUtilRt.getRelativePath(rootFolder.path, file.path, File.separatorChar)!!
    }

    override fun update(monitor: ProgressMonitor, event: FileSystemEvent) {
        val affectedStreams: MutableSet<String> = HashSet()
        for (file in SetSequence.fromSet(event.changed)) {
            if (isIncluded(file)) {
                affectedStreams.add(getStreamName(file))
                break
            }
        }
        for (file in SetSequence.fromSet(event.created)) {
            if (isIncluded(file)) {
                affectedStreams.add(getStreamName(file))
                lastAddRemove = Date().time
                break
            }
        }
        for (file in SetSequence.fromSet(event.removed)) {
            if (isIncluded(file)) {
                affectedStreams.add(getStreamName(file))
                lastAddRemove = Date().time
                break
            }
        }
        fireChanged(monitor, affectedStreams)
    }

    private fun fireChanged(monitor: ProgressMonitor, streams: Iterable<String>) {
        var listeners: ArrayList<DataSourceListener>
        synchronized(lock) { listeners = ArrayList(this.listeners) }
        monitor.start("Reloading", listeners.size)
        try {
            for (l in ListSequence.fromList(listeners)) {
                monitor.advance(1)
                if (l is MultiStreamDataSourceListener) {
                    l.changed(this, streams)
                } else {
                    l.changed(this)
                }
            }
        } finally {
            monitor.done()
        }
    }

    override fun exists(): Boolean {
        return this.subStreams.anyMatch { (it as? FileSystemBasedDataSource)?.exists() ?: false }
    }

    override fun physicalCopy(parentFolder: IFile): FileSystemBasedDataSource? {
        val res = rootFolder.copy(parentFolder)
        return if (res != null) FileDataSource(parentFolder.findChild(rootFolder.name)) else null
    }

    override fun getAffectedFiles(): Collection<IFile> {
        return setOf(rootFolder)
    }

    override fun getType(): DataSourceType {
        return TYPE
    }

    private class DescendantFileDataSource(file: IFile, private val baseFolder: IFile) : FileDataSource(file) {
        override fun getStreamName(): String {
            return FileUtil.getRelativePath(baseFolder.path, file.path, '/')!!
        }

        override fun equals(other: Any?): Boolean {
            if (this === other) {
                return true
            }
            if (other == null || this.javaClass != other.javaClass) {
                return false
            }
            val that = other as DescendantFileDataSource
            return file == that.file
        }

        override fun hashCode(): Int {
            return file.hashCode()
        }
    }

    companion object {
        val TYPE = DataSourceType { "Recursive Folder Data Source Type" }
    }
}