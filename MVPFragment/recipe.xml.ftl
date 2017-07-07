<?xml version="1.0"?>
<recipe>
    <#include "fragment_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Fragment.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />

    <instantiate from="src/app_package/classes/MvpContract.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${fragmentClass}Contract.java" />

    <instantiate from="src/app_package/classes/Component.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/${fragmentClass}Component.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${underscoreToCamelCase(classToResource(fragmentClass))}Presenter.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />

</recipe>
