buildscript {
    repositories {
        jcenter()
    }
    dependencies {
        classpath 'com.jakewharton.hugo:hugo-plugin:1.2.1'
        classpath 'com.github.yuebinyun.debug-badge:debug-badge:0.1.0'
    }
}

apply plugin: 'com.android.application'
apply plugin: 'com.jakewharton.hugo'

<#if localise>
apply from: "$project.rootDir/tools/localise.gradle"
</#if>
apply from: "$project.rootDir/tools/lint.gradle"
apply from: "$project.rootDir/tools/icon-badge.gradle"
//apply from: "$project.rootDir/tools/git-version.gradle" // uncomment when setup git repo will be finished

android {
    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }
    defaultConfig {
        multiDexEnabled true
    }
    signingConfigs {
        debug {
            storeFile file('debug.keystore')
            storePassword 'android'
            keyAlias 'androiddebugkey'
            keyPassword 'android'
        }
        release {
            storeFile file('debug.keystore')
            storePassword 'android'
            keyAlias 'androiddebugkey'
            keyPassword 'android'
        }
    }
    buildTypes {
        debug {
            minifyEnabled false
            shrinkResources false
            signingConfig signingConfigs.debug
        }
        release {
            minifyEnabled true
            shrinkResources true
            signingConfig signingConfigs.release
        }
    }
    productFlavors {
        stage {
            //versionCode gitVersionCode
            //versionName gitVersionName
            buildConfigField("String", "BASE_URL", "\"\"")
            versionNameSuffix "-stage"
            applicationIdSuffix "stage"
        }
        prod {
	        //versionCode gitVersionCode
            //versionName gitVersionName
            buildConfigField("String", "BASE_URL", "\"\"")
        }
        dev {
            //versionCode gitVersionCodeTime
            //versionName gitVersionName
            buildConfigField("String", "BASE_URL", "\"\"")
            versionNameSuffix "-dev"
            applicationIdSuffix "dev"
        }
    }
    dataBinding {
        enabled true
    }
    packagingOptions {
        exclude 'META-INF/LICENSE.txt'
        exclude 'META-INF/LICENSE'
        exclude 'META-INF/NOTICE'
        exclude 'META-INF/NOTICE.txt'
        exclude 'META-INF/services/javax.annotation.processing.Processor'
        exclude 'META-INF/DEPENDENCIES'
        exclude 'META-INF/MANIFEST.MF'
        exclude 'META-INF/rxjava.properties'
        exclude 'pom.xml'
        exclude 'META-INF/LGPL2.1'
    }
}

dependencies {
    androidTestCompile('com.android.support.test.espresso:espresso-core:2.2.2', {
        exclude group: 'com.android.support', module: 'support-annotations'
        exclude module: 'jsr305'
    })

    def tree = fileTree(dir: 'dependencies', include: '**/*.gradle')
    tree.each { File file -> apply from: file, to: dependencies }
}
