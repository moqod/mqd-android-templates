def daggerVersion = '2.11'

compile "com.google.dagger:dagger:$daggerVersion"
<#if backwardsCompatibility>
compile "com.google.dagger:dagger-android-support:$daggerVersion"
<#else>
compile "com.google.dagger:dagger-android:$daggerVersion"
</#if>
annotationProcessor "com.google.dagger:dagger-compiler:$daggerVersion"
provided "org.glassfish:javax.annotation:10.0-b28"