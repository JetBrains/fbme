# FBME 

**FBME** (Function Blocks Modelling Environment) is an IDE for IEC 61499 standard built on top of 
[JetBrains MPS](https://www.jetbrains.com/mps) language workbench.

### Opening MPS project first time

- Pre-installed JRE 11 is required
- Install [JetBrains MPS 2021.3.*](https://www.jetbrains.com/mps/download)
- Run `./gradlew build`
- Open project with MPS
- Configure "source" plugins:
  - Invoke `Help -> Edit Custom VM Options...` action
  - Set `idea.plugins.path` VM option to:
    ```
    -Didea.plugins.path=<project-root>/build/src-plugins
    ```
- Restart MPS

### Building the standalone IDE

- Run `./gradlew buildRcpDistrib`