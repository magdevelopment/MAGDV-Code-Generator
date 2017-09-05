package ${packageName}.${subPackage}

import ${applicationPackage}.presentation.common.BaseAppRouter
import ${applicationPackage}.presentation.common.DefaultRouter
import javax.inject.Inject


class ${moduleName}Router @Inject constructor(router: BaseAppRouter) : DefaultRouter(router),
                                                               I${moduleName}Router
