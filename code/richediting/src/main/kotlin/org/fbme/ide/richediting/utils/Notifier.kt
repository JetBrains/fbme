package org.fbme.ide.richediting.utils

import com.intellij.notification.NotificationGroupManager
import com.intellij.notification.NotificationType
import com.intellij.openapi.project.Project

object Notifier {
    private const val NOTIFICATION_GROUP = "Custom"

    fun showWarning(message: String, project: Project) {
        NotificationGroupManager
                .getInstance()
                .getNotificationGroup(NOTIFICATION_GROUP)
                .createNotification(message, NotificationType.WARNING)
                .notify(project)
    }
}
