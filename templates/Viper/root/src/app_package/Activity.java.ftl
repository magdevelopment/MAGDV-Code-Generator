package ${packageName};

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import ru.terrakok.cicerone.Navigator;

@Layout(R.layout.activity_base)
public class ${className}Activity extends BaseActivity {
    public static Intent createIntent(Context context) {
        return new Intent(context, ${className}Activity.class);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        App.getInstance().get${className}Component().inject(this);

        if (getSupportFragmentManager().getBackStackEntryCount() == 0)
            router.replaceScreen(${className}Transitions.EXAMPLE);
    }

    @Override
    protected Navigator createNavigator() {
        return new ${className}Navigator(this, R.id.content);
    }

    @Override
    protected void onResume() {
        super.onResume();
        navigatorHolder.setNavigator(navigator);
    }

    @Override
    protected void onPause() {
        super.onPause();
        navigatorHolder.removeNavigator();
    }
}
