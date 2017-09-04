package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.View;

import com.arellomobile.mvp.presenter.InjectPresenter;
import com.arellomobile.mvp.presenter.ProvidePresenter;

@Layout(R.layout.fragment_base)
public class ${className}Fragment extends BaseFragment
        implements I${className}View {

    @InjectPresenter
    ${className}Presenter presenter;

    @ProvidePresenter
    ${className}Presenter providePresenter() {
        return App.getInstance().getComponent().${classNameLower}Presenter();
    }

    public static Fragment newInstance() {
        return new ${className}Fragment();
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
    }   
}
