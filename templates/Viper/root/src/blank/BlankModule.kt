package com.magdv.express.courier.presentation.blank

import com.magdv.express.courier.presentation.common.IBaseView
import dagger.Binds
import dagger.Module
import dagger.Provides


@Module(includes = arrayOf(BlankModule.Declarations::class))
class BlankModule {

    @Provides
    fun provideBlankView(presenter: BlankPresenter): IBaseView {
        return presenter.viewState
    }

    @Module
    interface Declarations {

        @Binds
        fun bindBlankRouter(router: BlankRouter): IBlankRouter
    }
}
