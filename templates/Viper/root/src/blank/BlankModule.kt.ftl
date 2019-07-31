package ${packageName}.${subPackage}

import dagger.Binds
import dagger.Module
import dagger.Provides

@Module
abstract class ${moduleName}Module {

    @Binds
    abstract fun bindRouter(impl: ${moduleName}RouterImpl): ${moduleName}Router

    @Module
    companion object {

        @Provides
        @JvmStatic
        fun provideExample(): Int {
            return 0
        }
    }
}
