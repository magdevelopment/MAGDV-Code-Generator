package ${packageName}.${subPackage}

import com.arellomobile.mvp.viewstate.strategy.AddToEndSingleStrategy
import com.arellomobile.mvp.viewstate.strategy.StateStrategyType
import ${applicationPackage}.presentation.common.IBaseView


@StateStrategyType(AddToEndSingleStrategy::class)
interface I${moduleName}View : IBaseView
