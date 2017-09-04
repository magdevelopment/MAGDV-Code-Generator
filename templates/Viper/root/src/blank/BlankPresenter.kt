package com.magdv.express.courier.presentation.blank

import com.arellomobile.mvp.InjectViewState
import com.magdv.express.courier.infrastructure.errors.ErrorResolver
import com.magdv.express.courier.infrastructure.injection.Scopes.ActivityScope
import com.magdv.express.courier.presentation.common.viper.AbstractViperPresenter
import javax.inject.Inject

@ActivityScope
@InjectViewState
class BlankPresenter @Inject constructor(
    private val interactor: BlankInteractor,
    private val router: IBlankRouter,
    private val errorResolver: ErrorResolver) : AbstractViperPresenter<IBlankView>() {

    override fun onFirstViewAttach() {

    }
}