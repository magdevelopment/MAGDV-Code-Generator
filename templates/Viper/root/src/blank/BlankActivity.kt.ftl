package ${packageName}.${subPackage}

import android.content.Context
import android.content.Intent
import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter
import ${applicationPackage}.R
import ${applicationPackage}.presentation.common.Layout
import ${applicationPackage}.presentation.common.viper.AbstractViperActivity
import org.jetbrains.anko.intentFor

//TODO Don't forget to register in AndroidManifest and in ActivityBinderModule
@Layout(R.layout.activity_base)
class ${moduleName}Activity : AbstractViperActivity<${moduleName}Presenter, ${moduleName}Navigator>(),
                      I${moduleName}View {

    @InjectPresenter
    override lateinit var presenter: ${moduleName}Presenter

    @ProvidePresenter
    override fun providePresenter(): ${moduleName}Presenter {
        return presenterProvider.get()
    }

    companion object {
        fun createIntent(context: Context): Intent {
            return context.intentFor<${moduleName}Activity>()
        }
    }
}
