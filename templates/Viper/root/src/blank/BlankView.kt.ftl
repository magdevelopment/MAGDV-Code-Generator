package ${packageName}.${subPackage}

import ${applicationPackage}.presentation.common.BaseView
import moxy.viewstate.strategy.AddToEndSingleStrategy
import moxy.viewstate.strategy.StateStrategyType

@StateStrategyType(AddToEndSingleStrategy::class)
interface ${moduleName}View : BaseView
