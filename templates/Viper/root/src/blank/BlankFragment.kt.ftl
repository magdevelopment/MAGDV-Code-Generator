package ${packageName}.${subPackage}

import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.View
import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter
import ${applicationPackage}.R
import ${applicationPackage}.presentation.common.Layout
import ${applicationPackage}.presentation.common.viper.AbstractViperFragment

@Layout(R.layout.fragment)
class ${moduleName}Fragment : AbstractViperFragment<${moduleName}Presenter>(),
                              I${moduleName}View {

    //TODO Don't forget to register in ActivityModule

    @InjectPresenter
    lateinit var presenter: ${moduleName}Presenter

    @ProvidePresenter
    override fun providePresenter(): ${moduleName}Presenter {
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
            return ${moduleName}Fragment()
        }
    }
}
