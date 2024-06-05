package org.fbme.ide.integration.fordiac.deploy.controllers

import org.apache.logging.log4j.Level
import org.apache.logging.log4j.core.Filter
import org.apache.logging.log4j.core.Layout
import org.apache.logging.log4j.core.LogEvent
import org.apache.logging.log4j.core.appender.AbstractAppender
import org.apache.logging.log4j.core.config.Property
import org.apache.logging.log4j.core.config.plugins.Plugin
import org.apache.logging.log4j.core.config.plugins.PluginAttribute
import org.apache.logging.log4j.core.config.plugins.PluginElement
import org.apache.logging.log4j.core.config.plugins.PluginFactory
import java.io.Serializable


@Plugin(
    name = "TestAppender",
    category = "Core",
    elementType = "appender",
    printObject = true
)
internal class TestAppender(
    name: String,
    filter: Filter?,
    layout: Layout<out Serializable>?
) : AbstractAppender(name, filter, layout, true, Property.EMPTY_ARRAY) {
    val logMessages = mutableListOf<LogMessage>()

    override fun append(event: LogEvent) {
        val message = layout.toSerializable(event).toString()
        val level = event.level
        logMessages.add(LogMessage(level, message))
    }

    fun clearLogMessages() {
        logMessages.clear()
    }

    fun logsOfLevel(level: Level) = logMessages.filter { it.level == level }

    companion object {
        @PluginFactory
        @JvmStatic
        fun createAppender(
            @PluginAttribute("name") name: String,
            @PluginElement("Filter") filter: Filter?,
            @PluginElement("Layout") layout: Layout<out Serializable>?,
        ): TestAppender =
            TestAppender(name, filter, layout)
    }
}

internal data class LogMessage(val level: Level, val message: String)
