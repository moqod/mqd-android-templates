<?xml version="1.0"?>
<recipe>
    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/classes/Component.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}Component.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
