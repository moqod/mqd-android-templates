def daggerVersion = '2.12'

implementation "com.google.dagger:dagger:$daggerVersion"
<#if backwardsCompatibility>
implementation "com.google.dagger:dagger-android-support:$daggerVersion"
<#else>
implementation "com.google.dagger:dagger-android:$daggerVersion"
</#if>
annotationProcessor "com.google.dagger:dagger-compiler:$daggerVersion"
compileOnly "org.glassfish:javax.annotation:10.0-b28"
