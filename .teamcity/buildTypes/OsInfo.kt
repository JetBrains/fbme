package buildTypes

enum class OsInfo(
    val presentation: String,
    val jbrAlias: String,
    val taskSuffix: String,
    val artifactSuffix: String
) {
    MacOs("MacOS", "osx", "Macos", "macos"),
    Linux("Linux", "linux", "Linux", "linux"),
    Windows("Windows", "windows", "Windows", "windows")
}
