buildscript {
    repositories {
        google() // ✅ Required for Firebase & Android Gradle plugins
        mavenCentral()
    }
    dependencies {
        // ✅ Google Services Plugin (for Firebase)
        classpath("com.google.gms:google-services:4.4.2")

        // ✅ Kotlin Plugin (latest stable)
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:2.1.0")

        // ✅ Android Gradle Plugin (ensure compatibility with AGP 8.5+)
        classpath("com.android.tools.build:gradle:8.5.2")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// ✅ Define custom build directories (helps keep builds organized)
val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

// ✅ Ensure app module is evaluated first
subprojects {
    project.evaluationDependsOn(":app")
}

// ✅ Clean task
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
