package com.magdv.express.courier.presentation.blank

import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.View
import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter
import com.magdv.express.courier.R
import com.magdv.express.courier.presentation.authentication.login.LoginFragment
import com.magdv.express.courier.presentation.authentication.login.LoginPresenter
import com.magdv.express.courier.presentation.common.Layout
import com.magdv.express.courier.presentation.common.viper.AbstractViperFragment

//TODO Don't forget to register in ActivityModule
@Layout(R.layout.fragment_login)
class BlankFragment : AbstractViperFragment<LoginPresenter>(), IBlankView {

    @InjectPresenter
    lateinit var presenter: LoginPresenter

    @ProvidePresenter
    override fun providePresenter(): LoginPresenter {
        return presenterProvider.get()
    }

    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initViews()
    }

    private fun initViews() {
        // Init views here
    }

    companion object {
        fun newInstance(): Fragment {
            return LoginFragment()
        }
    }
}
