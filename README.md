# IEC 61499 IDE on MPS

### Contributing

- Install [JetBrains MPS 2018.3.*](https://www.jetbrains.com/mps/download)
- Download mbeddr platform plugins  (via `./gradlew downloadDependencies`, plugins expected in `lib/com.mbeddr.platform` folder)
- Copy mbeddr platform plugins into `$MPS_INSTALLATION$/plugins` folder
- Open project with MPS
- Rebuild project

### Building & deploying as MPS Plugin

- Run `./gradlew buildPlugin` in shell
- Select `Run->Run...->Deploy Plugin`run `Deploy Plugin` in MPS