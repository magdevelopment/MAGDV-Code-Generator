<?xml version="1.0"?>
<recipe>

  <#if viewType == "fragment">

	    <instantiate from="root/src/blank/BlankFragment.kt.ftl"
                     to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}Fragment.kt" />

  <#elseif viewType == "dialog">

       <instantiate from="root/src/blank/BlankDialogFragment.kt.ftl"
                     to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}DialogFragment.kt" />

	<#elseif viewType == "activity">

	    <instantiate from="root/src/blank/BlankActivity.kt.ftl"
                     to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}Activity.kt" />

	    <instantiate from="root/src/blank/BlankNavigator.kt.ftl"
                     to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}Navigator.kt" />

	    <instantiate from="root/src/blank/BlankRouter.kt.ftl"
                     to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}Router.kt" />

  </#if>

  <instantiate from="root/src/blank/BlankModule.kt.ftl"
                 to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}Module.kt" />

  <instantiate from="root/src/blank/IBlankView.kt.ftl"
                 to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/I${moduleName}View.kt" />

  <instantiate from="root/src/blank/BlankPresenter.kt.ftl"
                 to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}Presenter.kt" />

	<instantiate from="root/src/blank/IBlankRouter.kt.ftl"
                 to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/I${moduleName}Router.kt" />

 <#if createInteractor>

   <instantiate from="root/src/blank/BlankInteractor.kt.ftl"
                  to="${escapeXmlAttribute(srcOutPath)}/${subPackage}/${moduleName}Interactor.kt" />

 </#if>

</recipe>
