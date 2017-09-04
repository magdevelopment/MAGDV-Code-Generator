package ${packageName};

import android.content.Context;
import android.content.Intent;
import android.support.annotation.IdRes;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;

public class ${className}Navigator extends BaseNavigator {

    public ${className}Navigator(AppCompatActivity activity, @IdRes Integer container) {
        super(activity, container);
    }

    @Override
    protected Intent createIntent(Context context, String screenName, Object transferData) {

        return null;
    }

    @Override
    protected Fragment createFragment(String screenKey, Object data) {
        switch (screenKey) {
            case ${className}Transitions.EXAMPLE:
                return null;
        }
        return null;
    }
}