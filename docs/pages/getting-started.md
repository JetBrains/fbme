---
title: Getting Started
permalink: getting-started.html
---

FBME is an open-source cross-platform IDE that run on the Windows, macOS, and Linux operating systems.

Currently, FBME is in pre-release development. You can give it a try by downloading one of the latest builds:

* [Windows](https://teamcity.jetbrains.com/guestAuth/repository/download/MPS_Fbme_PublishArtifacts/.lastPinned/fbme-%7Bbuild.number%7D.win.zip)
* [Linux](https://teamcity.jetbrains.com/guestAuth/repository/download/MPS_Fbme_PublishArtifacts/.lastPinned/fbme-%7Bbuild.number%7D.tar.gz)
* [Mac OS](https://teamcity.jetbrains.com/guestAuth/repository/download/MPS_Fbme_PublishArtifacts/.lastPinned/fbme-%7Bbuild.number%7D.macos.zip)

### New project

To start new project, open FBME and choose _Create New Project_.
In the project creation wizard, select _System Configuration_ and specify name and location for your project.
After pressing _OK_, FBME will create fresh project with a single empty system configuration.

For learning how to develop IEC 61499 systems with FBME follow [Blinking Sample](blinking-sample.md) tutorial.

### Import from Nxt Studio

FBME can import project from other IEC 61499 development tools, such as NxtStudio.
To import your project from NxtStudio, open FBME and choose _Create New Project_.
In the project creation wizard, select _Import NxtStudio project_ and specify name and location for your new project,
as long as location to original NxtStudio project.
After pressing _OK_, FBME will create fresh project with systems and types copied from original project.
FBME will also automatically update your function blocks to comply with current standard specification.

### Samples

Samples will upcoming in future builds of FBME to make you learning experience of an IDE easier.
