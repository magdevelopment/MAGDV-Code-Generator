package ${packageName}.${subPackage}

import android.os.Bundle
import android.view.View
import androidx.fragment.app.DialogFragment
import ${applicationPackage}.R
import ${applicationPackage}.presentation.common.MvpDialogFragment
import moxy.presenter.InjectPresenter
import moxy.presenter.ProvidePresenter

class ${moduleName}DialogFragment : MvpDialogFragment<${moduleName}Presenter>(),
                                    ${moduleName}View {

    //TODO Don't forget to register in FragmentModule

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
        const val TAG = TODO Provide Dialog TAG

        fun newInstance(): DialogFragment {
            return ${moduleName}DialogFragment()
        }
    }
}
