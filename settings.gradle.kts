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
    "code:bottom-up-building",

    "docs",

    "samples:statistics-plugin",
    "samples:sandbox",
    "samples:smv-debugger"
)
findProject(":code:bottom-up-building")?.name = "bottom-up-building"
