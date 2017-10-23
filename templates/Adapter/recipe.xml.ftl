<?xml version="1.0"?>
<recipe>

  <instantiate from="root/src/blank/BlankAdapter.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${moduleName}Adapter.kt" />

  <instantiate from="root/src/blank/BlankDiffCallback.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${moduleName}DiffCallback.kt" />

</recipe>
