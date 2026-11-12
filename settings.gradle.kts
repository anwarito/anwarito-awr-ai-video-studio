pluginManagement {
    repositories { google(); mavenCentral(); gradlePluginPortal() }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google(); mavenCentral()
        maven("https://alphacephei.com/maven/")   // fallback host for the Vosk speech library
    }
}
rootProject.name = "AWR AI VIDEO STUDIO"
include(":app")
