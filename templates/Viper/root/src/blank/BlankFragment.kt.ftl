package ${packageName}.${subPackage}

import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import ${applicationPackage}.R
import ${applicationPackage}.presentation.common.MvpFragment
import moxy.presenter.InjectPresenter
import moxy.presenter.ProvidePresenter

class ${moduleName}Fragment : MvpFragment<${moduleName}Presenter>(),
                              ${moduleName}View {

    //TODO Don't forget to register in FragmentBindingModule

    override val layoutRes: Int = R.layout.fragment

    @InjectPresenter
    lateinit var presenter: ${moduleName}Presenter

    @ProvidePresenter
    override fun providePresenter(): ${moduleName}Presenter {
        return presenterProvider.get()
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
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
