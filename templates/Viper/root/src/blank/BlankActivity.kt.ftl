package ${packageName}.${subPackage}

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import ${applicationPackage}.R
import dagger.Lazy
import dagger.android.AndroidInjection
import dagger.android.AndroidInjector
import dagger.android.DispatchingAndroidInjector
import dagger.android.HasAndroidInjector
import moxy.MvpAppCompatActivity
import moxy.presenter.InjectPresenter
import moxy.presenter.ProvidePresenter
import ru.terrakok.cicerone.Navigator
import ru.terrakok.cicerone.NavigatorHolder
import ru.terrakok.cicerone.android.support.SupportAppNavigator
import javax.inject.Inject

class ${moduleName}Activity : MvpAppCompatActivity(),
                              ${moduleName}View {

    //TODO Don't forget to register in AndroidManifest and in ActivityBinderModule

    @InjectPresenter
    override lateinit var presenter: ${moduleName}Presenter

    @Inject
    lateinit var navigatorHolder: NavigatorHolder

    @Inject
    lateinit var androidInjector: DispatchingAndroidInjector<Any>

    private val navigator: Navigator = SupportAppNavigator(this, R.id.container)

    private val currentFragment: Fragment?
        get() = supportFragmentManager.findFragmentById(R.id.container)

    @ProvidePresenter
    override fun providePresenter(): ${moduleName}Presenter {
        return presenterProvider.get()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        AndroidInjection.inject(this)
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity)
    }

    companion object {
        fun createIntent(context: Context): Intent {
            return context.intentFor<${moduleName}Activity>()
        }
    }
}
