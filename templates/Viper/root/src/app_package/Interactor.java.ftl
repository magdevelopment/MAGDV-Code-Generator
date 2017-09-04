package ${packageName};

import javax.inject.Inject;
import javax.inject.Named;

import rx.Observable;
import rx.Scheduler;

public class ${className}Interactor extends Interactor<Void, Void> {
   
    @Inject
    public ${className}Interactor(@Named(DomainModule.JOB) Scheduler jobScheduler,
                                @Named(DomainModule.UI) Scheduler uiScheduler,
                                NetworkConnectionManager manager) {
        super(jobScheduler, uiScheduler, manager);        
    }

    @Override
    protected Observable<Void> buildObservable(Void param) {
        return null;
    }
}