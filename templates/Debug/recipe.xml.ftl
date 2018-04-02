<?xml version="1.0"?>
<recipe>

  <instantiate from="root/src/blank/BlankDebug.kt.ftl"
                 to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}Debug.kt" />

  <open file="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}Debug.kt" />

</recipe>
