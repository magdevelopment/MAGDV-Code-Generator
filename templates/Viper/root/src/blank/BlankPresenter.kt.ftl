package ${packageName}.${subPackage}

import ${applicationPackage}.presentation.common.RxPresenter
import ${applicationPackage}.presentation.common.errors.ErrorResolver
import moxy.InjectViewState
import javax.inject.Inject

@InjectViewState
class ${moduleName}Presenter @Inject constructor(
<#if createInteractor>
    private val interactor: ${moduleName}Interactor,
</#if>
    private val router: ${moduleName}Router,
    private val errorResolver: ErrorResolver
) : RxPresenter<${moduleName}View>() {

    override fun onFirstViewAttach() {

    }
}
