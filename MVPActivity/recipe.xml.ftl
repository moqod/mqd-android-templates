<?xml version="1.0"?>
<recipe>
    <#include "activity_layout_recipe.xml.ftl" />

	<merge from="AndroidManifest_activity.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="src/app_package/classes/SimpleActivity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/classes/SimpleActivityComponent.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}Component.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
