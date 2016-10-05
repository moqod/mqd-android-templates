<?xml version="1.0"?>
<recipe>
    <#include "fragment_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Fragment.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />

    <instantiate from="src/app_package/classes/MvpContract.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${underscoreToCamelCase(classToResource(fragmentClass))}MvpContract.java" />

    <instantiate from="src/app_package/classes/Component.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/${underscoreToCamelCase(classToResource(fragmentClass))}StubComponent.java" />

    <instantiate from="src/app_package/classes/Module.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/${underscoreToCamelCase(classToResource(fragmentClass))}Module.java" />

    <instantiate from="src/app_package/classes/Router.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${underscoreToCamelCase(classToResource(fragmentClass))}Router.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${underscoreToCamelCase(classToResource(fragmentClass))}Presenter.java" />

</recipe>
