package buildTypes

object BuildNumber : FbmeBuildType(
    {
        type = Type.COMPOSITE
        name = "Generate build number"
        buildNumberPattern = "0.1.%build.counter%"
    }
)
