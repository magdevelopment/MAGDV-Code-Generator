package ${packageName}.${subPackage}

import com.arellomobile.mvp.InjectViewState
import ${applicationPackage}.infrastructure.errors.ErrorResolver
<#if viewType == "activity">
import ${applicationPackage}.infrastructure.injection.scopes.ActivityScope
<#else>
import ${applicationPackage}.infrastructure.injection.scopes.FragmentScope
</#if>
import ${applicationPackage}.presentation.common.viper.AbstractViperPresenter
import javax.inject.Inject


@<#if viewType == "activity">ActivityScope<#else>FragmentScope</#if>
@InjectViewState
class ${moduleName}Presenter @Inject constructor(
    private val interactor: ${moduleName}Interactor,
    private val router: I${moduleName}Router,
    private val errorResolver: ErrorResolver) : AbstractViperPresenter<I${moduleName}View>() {

    override fun onFirstViewAttach() {

    }
}
