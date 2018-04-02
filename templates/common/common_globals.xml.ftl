<globals>

  <#assign generateKotlin=(((includeKotlinSupport!false) || (language!'Java')?string == 'Kotlin'))>
  <#assign javaOut=(srcOut)>
  <#assign kotlinOut=(srcOut?replace("/java/", "/kotlin/"))>

  <global id="srcOutPath" value="${generateKotlin?string(kotlinOut, javaOut)}" />
  <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />

  <global id="moduleNameLowerCase" value="${moduleName?lower_case}" />
  <global id="moduleNameCamelCase" value="${moduleName?uncap_first}" />

</globals>
