plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services") // ✅ Required for Firebase
}

android {
    namespace = "com.nahrdev.broker"
    compileSdk = 36
    ndkVersion = "28.0.12433566"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
        isCoreLibraryDesugaringEnabled = true // ✅ Enable Java 8+ APIs
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    packagingOptions {
        jniLibs {
            useLegacyPackaging = false // ✅ Required for Android 15 16KB page size support
        }
    }

    defaultConfig {
        applicationId = "com.nahrdev.broker"
        minSdk = flutter.minSdkVersion
        targetSdk = 36
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            storeFile = file("./newBroker.keystore")
            storePassword = "123456"
            keyAlias = "newBroker"
            keyPassword = "123456"
        }
    }

    buildTypes {
        getByName("release") {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = false
            isShrinkResources = false
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // ✅ Use Firebase BOM to automatically manage versions
    implementation(platform("com.google.firebase:firebase-bom:33.3.0"))

    // ✅ Facebook SDK (only one version, remove duplicates)
    implementation("com.facebook.android:facebook-android-sdk:16.3.0")

    // ✅ Support for Java 17 features
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}
