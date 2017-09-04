package ${packageName};

import javax.inject.Inject;

import ru.terrakok.cicerone.Router;

public class ${className}Router implements I${className}Router {

    private Router router;

    @Inject
    public ${className}Router(Router router) {
        this.router = router;
    }

    @Override
    public void back() {
        router.exit();
    }
}