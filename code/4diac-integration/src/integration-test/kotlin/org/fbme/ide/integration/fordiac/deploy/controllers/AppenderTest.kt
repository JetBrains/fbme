package org.fbme.ide.integration.fordiac.deploy.controllers

import org.apache.logging.log4j.Level.*
import org.apache.logging.log4j.LogManager
import org.apache.logging.log4j.core.LoggerContext
import org.junit.After
import org.junit.Before
import org.junit.Test

class AppenderTest {
    private val logger = LogManager.getLogger(DynamicTypeLoadDeploymentControllerTest::class.qualifiedName)
    private lateinit var testAppender: TestAppender

    @Before
    fun setUp() {
        val context = LogManager.getContext(false) as LoggerContext
        testAppender = context.configuration.appenders["TestAppender"] as TestAppender
    }

    @After
    fun teardown() {
        testAppender.clearLogMessages()
    }

    @Test
    fun info() {
        logger.info("1")
        assert(testAppender.logsOfLevel(INFO).size == 1)
        assert(testAppender.logsOfLevel(WARN).isEmpty())
        assert(testAppender.logsOfLevel(ERROR).isEmpty())
        assert(testAppender.logsOfLevel(DEBUG).isEmpty())
        assert(testAppender.logsOfLevel(TRACE).isEmpty())
    }

    @Test
    fun error() {
        logger.error("1")
        assert(testAppender.logsOfLevel(ERROR).size == 1)
        assert(testAppender.logsOfLevel(INFO).isEmpty())
        assert(testAppender.logsOfLevel(WARN).isEmpty())
        assert(testAppender.logsOfLevel(DEBUG).isEmpty())
        assert(testAppender.logsOfLevel(TRACE).isEmpty())
    }
}