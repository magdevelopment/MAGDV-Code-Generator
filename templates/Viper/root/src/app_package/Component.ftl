package ${packageName};

import dagger.Subcomponent;

@ScreenScope
@Subcomponent(modules = {${className}Module.class})
public interface ${className}Component {
    void inject(${className}Activity activity);

    ${className}Presenter homePresenter();
}