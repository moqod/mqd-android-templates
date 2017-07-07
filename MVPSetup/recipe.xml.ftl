<?xml version="1.0"?>
<recipe>
<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

	<!-- Start Application -->

	<instantiate from="root/src/app_package/App.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/App.java" />
    <instantiate from="root/src/app_package/DebugTools.java.ftl"
                   to="${escapeXmlAttribute(debugOut)}/DebugTools.java" />
    <instantiate from="root/src/app_package/DebugToolsNoOp.java.ftl"
                   to="${escapeXmlAttribute(releaseOut)}/DebugTools.java" />

    <merge from="root/AndroidManifest_app.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

	<!-- End Application -->

	<!-- Start DI -->

	<instantiate from="root/src/app_package/di/activity/ActivityBindingsModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityBindingsModule.java" />
                   
    <instantiate from="root/src/app_package/di/activity/ActivityScope.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/activity/ActivityScope.java" />

    <instantiate from="root/src/app_package/di/app/AppComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/app/AppComponent.java" />

    <instantiate from="root/src/app_package/di/app/AppModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/app/AppModule.java" />

    <instantiate from="root/src/app_package/di/fragment/FragmentScope.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/fragment/FragmentScope.java" />

	<!-- End DI -->

	<!-- Start presentation common -->

    <instantiate from="root/src/app_package/presentation/common/BaseActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/common/BaseActivity.java" />
                   
    <instantiate from="root/src/app_package/presentation/common/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/common/BasePresenter.java" />

    <instantiate from="root/src/app_package/presentation/common/BaseFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/common/BaseFragment.java" />
	
	<!-- End presentation common -->

	<!-- Start feature -->

    <instantiate from="root/src/app_package/presentation/feature/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/${featureName}/${activityClass}.java" />

    <instantiate from="root/src/app_package/presentation/feature/SimpleActivityComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/${featureName}/${activityClass}Component.java" />

	<merge from="root/AndroidManifest_activity.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

	<!-- End feature -->

	<copy from="root/debug.keystore"
			to="${escapeXmlAttribute(projectOut)}/debug.keystore" />

	<!-- Start Gradle -->

	<merge from="build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />

	<copy from="root/gradle/dependencies/debugging.gradle"
			to="${escapeXmlAttribute(projectOut)}/dependencies/logging.gradle" />
	<copy from="root/gradle/dependencies/support.gradle"
			to="${escapeXmlAttribute(projectOut)}/dependencies/support.gradle" />	
	<copy from="root/gradle/dependencies/rx.gradle"
			to="${escapeXmlAttribute(projectOut)}/dependencies/rx.gradle" />
	<instantiate from="root/gradle/dependencies/dagger.gradle.ftl"
			to="${escapeXmlAttribute(projectOut)}/dependencies/dagger.gradle" />
	<copy from="root/gradle/dependencies/multidex.gradle"
			to="${escapeXmlAttribute(projectOut)}/dependencies/multidex.gradle" />


	<instantiate from="root/gradle/tools/updraft.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/tools/updraft.gradle" />
	<copy from="root/gradle/tools/localise.gradle"
			to="${escapeXmlAttribute(topOut)}/tools/localise.gradle" />
	<copy from="root/gradle/tools/findbugs.gradle"
			to="${escapeXmlAttribute(topOut)}/tools/findbugs.gradle" />
	<copy from="root/gradle/tools/lint.gradle"
			to="${escapeXmlAttribute(topOut)}/tools/lint.gradle" />
	<copy from="root/gradle/tools/icon-badge.gradle"
			to="${escapeXmlAttribute(topOut)}/tools/icon-badge.gradle" />
	<copy from="root/gradle/tools/pmd.gradle"
			to="${escapeXmlAttribute(topOut)}/tools/pmd.gradle" />
	<copy from="root/gradle/tools/git-version.gradle"
			to="${escapeXmlAttribute(topOut)}/tools/git-version.gradle" />

	<copy from="root/gradle/tools/config/pmd-rules.xml"
			to="${escapeXmlAttribute(topOut)}/tools/config/pmd-rules.xml" />
	<copy from="root/gradle/tools/config/lint.xml"
			to="${escapeXmlAttribute(topOut)}/tools/config/lint.xml" />
	<copy from="root/gradle/tools/config/findbugs-filter.xml"
			to="${escapeXmlAttribute(topOut)}/tools/config/findbugs-filter.xml" />
	<copy from="root/gradle/tools/config/cpdhtml.xslt"
			to="${escapeXmlAttribute(topOut)}/tools/config/cpdhtml.xslt" />

	<!-- End Gradle -->

	<!-- Start resources -->
	
	<copy from="root/res/mipmap-hdpi"
			to="${escapeXmlAttribute(resOut)}/mipmap-hdpi" />
	<copy from="root/res/mipmap-xhdpi"
			to="${escapeXmlAttribute(resOut)}/mipmap-xhdpi" />
	<copy from="root/res/mipmap-xxhdpi"
			to="${escapeXmlAttribute(resOut)}/mipmap-xxhdpi" />
	<copy from="root/res/mipmap-xxxhdpi"
			to="${escapeXmlAttribute(resOut)}/mipmap-xxxhdpi" />	
	
	<!-- End resources -->	

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
