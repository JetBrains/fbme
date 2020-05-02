# FBME 

**FBME** (Function Blocks Modelling Environment) is an IDE for IEC 61499 standard built on top of 
[JetBrains MPS](https://www.jetbrains.com/mps) language workbench.

### Opening MPS project first time

- Pre-installed JRE 11 is required
- Install [JetBrains MPS 2019.3.*](https://www.jetbrains.com/mps/download)
- Run `./gradlew generate`
- Open project with MPS

### Building the plugins

- Run `./gradlew buildPlugin`

### Building the standalone IDE

- Run `./gradlew buildRcp`