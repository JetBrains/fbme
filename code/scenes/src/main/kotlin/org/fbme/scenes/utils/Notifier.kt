package org.fbme.scenes.utils

import com.intellij.notification.NotificationGroupManager
import com.intellij.notification.NotificationType
import com.intellij.openapi.project.Project

object Notifier {
    private const val NOTIFICATION_GROUP = "Custom-scenes"

    fun showWarning(message: String, project: Project? = null) {
        NotificationGroupManager
                .getInstance()
                .getNotificationGroup(NOTIFICATION_GROUP)
                .createNotification(message, NotificationType.WARNING)
                .notify(project)
    }

    fun showInformation(message: String, project: Project? = null) {
        NotificationGroupManager
                .getInstance()
                .getNotificationGroup(NOTIFICATION_GROUP)
                .createNotification(message, NotificationType.INFORMATION)
                .notify(project)
    }

    fun showError(message: String, project: Project? = null) {
        NotificationGroupManager
                .getInstance()
                .getNotificationGroup(NOTIFICATION_GROUP)
                .createNotification(message, NotificationType.ERROR)
                .notify(project)
    }
}
