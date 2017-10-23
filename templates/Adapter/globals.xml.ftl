<?xml version="1.0"?>
<globals>

    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="resOut" value="${resDir}" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />

    <global id="moduleNameLowerCase" value="${moduleName?lower_case}" />
    <global id="moduleNameUncapFirst" value="${moduleName?uncap_first}" />
    <global id="modelNameLowerCase" value="${modelName?lower_case}" />

</globals>
