rootProject.name = "FBME"

include(
    "code:4diac-integration",
    "code:enas",
    "code:language",
    "code:library",
    "code:nxt-integration",
        "code:platform",
    "code:richediting",
    "code:scenes",
    "code:smv-debugger",
    "code:debugger",

    "docs",

    "samples:statistics-plugin",
    "samples:sandbox",
    "samples:smv-debugger"
)
include("code:lib-managment")
findProject(":code:lib-managment")?.name = "lib-managment"
include("code:lib-management")
findProject(":code:lib-management")?.name = "lib-management"
include("code:library-management")
findProject(":code:library-management")?.name = "library-management"
