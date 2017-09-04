package ${packageName};

import dagger.Module;
import dagger.Provides;
import ru.terrakok.cicerone.Router;

@Module
public class ${className}Module {
    @Provides
    @ScreenScope
    I${className}Router provides${className}Router(Router router) {
        return new MainRouter(router);
    }
   
}