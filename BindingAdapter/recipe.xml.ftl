<?xml version="1.0"?>
<recipe>
    <#include "item_layout_recipe.xml.ftl" />

    <instantiate from="root/src/app_package/Adapter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />

	<open file="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />
	<open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

</recipe>
