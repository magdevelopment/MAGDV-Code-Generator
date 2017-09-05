package ${packageName}.${subPackage}

import ${applicationPackage}.presentation.common.IBaseView
import dagger.Binds
import dagger.Module
import dagger.Provides


@Module(includes = arrayOf(${moduleName}Module.Declarations::class))
class ${moduleName}Module {

    @Provides
    fun provide${moduleName}View(presenter: ${moduleName}Presenter): IBaseView {
        return presenter.viewState
    }

    @Module
    interface Declarations {

        @Binds
        fun bind${moduleName}Router(router: ${moduleName}Router): I${moduleName}Router
    }
}
