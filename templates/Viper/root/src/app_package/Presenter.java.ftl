package ${packageName};

import com.arellomobile.mvp.InjectViewState;

import javax.inject.Inject;

@InjectViewState
public class ${className}Presenter extends BasePresenter<I${className}View, I${className}Router> {

    private ${className}Interactor interactor;

    @Inject
    public ${className}Presenter(I${className}Router router, ${className}Interactor interactor) {
        this.setRouter(router);
        this.interactor = interactor;
    }   
}