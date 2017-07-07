<?xml version="1.0"?>
<globals>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    
    <global id="topOut" value="." />
    <global id="debugOut" value="${escapeXmlAttribute(projectOut)}/src/debug/java/${slashedPackageName(packageName)}" />
    <global id="releaseOut" value="${escapeXmlAttribute(projectOut)}/src/release/java/${slashedPackageName(packageName)}" />
    <#include "../common/common_globals.xml.ftl" />
</globals>
