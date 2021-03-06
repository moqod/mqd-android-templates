## Installation:

Templates need to copy into Android Studio installation folder:

*OSX*

```
/Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities
```

*Windows*

```
TBD
```

***

# MVPSetup

 This template creates basic project structure and contains common libraries and tools that help us to speed up initial project setup. So this template contains basic Dagger boilerplate and base classes for android framework components (Activty, Fragment). Also this template uses the following tools that perform static code analysis: Android Lint, FindBug, PDM, CPD.

 Here is a project structure that creates:

 ```
 rootProject
    |   - .gitlab-ci.yml
    |   - build.sh
    |   - build_customer.sh
    |   - deploy.sh
    |   - deploy_customer.sh
    |   - check.sh
    +-- tools
    |   +-- config
    |       - lint.xml
    |   - git-version.gradle
    |   - icon-badge.gradle
    |   - lint.gradle
    |   - localise.gradle
    +-- app
    |   +-- dependencies
    |       - dagger.gradle
    |       - debugging.gradle
    |       - multidex.gradle
    |       - rx.gradle
    |       - support.gradle
    |   - debug.keystore
    |   +-- com.moqod.android.app
    |       +-- debug
    |           - DebugTools.java
    |       +-- release
    |           - DebugTools.java
    |       +-- main
    |           - App.java
    |           +-- di
    |               +-- activity
    |                   - ActivityBindingsModule.java
    |                   - ActivityScope.java
    |               +-- app
    |                   - AppComponent.java
    |                   - AppModule.java
    |               +-- fragment
    |                   - FragmentScope.java
    |           +-- presentation
    |               +-- common
    |                   - BaseActivity.java
    |                   - BaseFragment.java
    |                   - BasePresenter.java
    |               +-- activity_main
    |                   - MainActivity.java
    |                   - MainActivityComponent.java              

```


# MVPActivity

This template creates the following classes structure:

```
+-- feature_package_name
|   - FeatureActivity.java
|   - FeatureActivityComponent.java

```

# MVPFragment

This template creates the following classes structure:

```
+-- feature_package_name
|   +-- injection
|       - FeatureFragmentComponent.java
|   - CustomFragment.java
|   - CustomFragmentContract.java
|   - CustomPresenter.java

```
