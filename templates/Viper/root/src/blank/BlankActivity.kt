package com.magdv.express.courier.presentation.blank

import android.content.Context
import android.content.Intent
import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter
import com.magdv.express.courier.R
import com.magdv.express.courier.presentation.common.Layout
import com.magdv.express.courier.presentation.common.viper.AbstractViperActivity
import org.jetbrains.anko.intentFor

//TODO Don't forget to register in AndroidManifest and in ActivityBinderModule
@Layout(R.layout.activity_base)
class BlankActivity : AbstractViperActivity<BlankPresenter, BlankNavigator>(),
                      IBlankView {

    @InjectPresenter
    override lateinit var presenter: BlankPresenter

    @ProvidePresenter
    override fun providePresenter(): BlankPresenter {
        return presenterProvider.get()
    }

    companion object {
        fun createIntent(context: Context): Intent {
            return context.intentFor<BlankActivity>()
        }
    }
}
