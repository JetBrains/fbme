package org.fbme.ide.platform.deploy.exceptions

import java.io.IOException

class DeploymentException : IOException {
    constructor(message: String?) : super(message)
    constructor(message: String?, cause: Throwable?) : super(message, cause)
}