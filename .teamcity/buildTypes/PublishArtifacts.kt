package buildTypes

import jetbrains.buildServer.configs.kotlin.DslContext
import jetbrains.buildServer.configs.kotlin.buildFeatures.commitStatusPublisher
import jetbrains.buildServer.configs.kotlin.triggers.vcs

object PublishArtifacts : FbmeBuildType(
    {
        name = "Artifacts"
        type = Type.COMPOSITE

        useSharedBuildNumber()

        features {
            commitStatusPublisher {
                vcsRootExtId = "${DslContext.settingsRoot.id}"
                publisher = github {
                    githubUrl = "https://api.github.com"
                    authType = personalToken {
                        token = "credentialsJSON:f27506e4-f6d8-4a42-8e1a-31d65d35a8f9"
                    }
                }
                param("github_oauth_user", "qradimir")
            }
        }

        triggers {
            vcs { }
        }

        dependencies {
            artifacts(BuildMacosDistribution) { artifactRules = "+:*" }
            artifacts(BuildWindowsDistribution) { artifactRules = "+:*" }
            artifacts(BuildLinuxDistribution) { artifactRules = "+:*" }
        }
    }
)
