package ${packageName}.${subPackage}

import com.arellomobile.mvp.InjectViewState
<#if moduleType == "fragment">
import ${applicationPackage}.infrastructure.errors.ErrorResolver
import ${applicationPackage}.infrastructure.injection.scopes.FragmentScope
<#elseif moduleType == "activity">
import ${applicationPackage}.infrastructure.injection.scopes.ActivityScope
</#if>
import ${applicationPackage}.presentation.common.viper.AbstractViperPresenter
import javax.inject.Inject


@${moduleTypeUpperCase}Scope
@InjectViewState
class ${moduleName}Presenter @Inject constructor(<#if moduleType == "activity">private val router: I${moduleName}Router) : AbstractViperPresenter<I${moduleName}View>() {

<#elseif moduleType == "fragment">

    private val interactor: ${moduleName}Interactor,
    private val router: I${moduleName}Router,
    private val errorResolver: ErrorResolver) : AbstractViperPresenter<I${moduleName}View>() {

</#if>
    override fun onFirstViewAttach() {

    }
}
