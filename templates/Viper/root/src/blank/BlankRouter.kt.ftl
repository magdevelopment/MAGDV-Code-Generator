package ${packageName}.${subPackage}

import ${applicationPackage}.presentation.common.BaseRouter
import ru.terrakok.cicerone.Router
import javax.inject.Inject

class ${moduleName}Router @Inject constructor(router: Router) : BaseRouter(router),
                                                                I${moduleName}Router
