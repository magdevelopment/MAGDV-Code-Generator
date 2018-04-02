package ${packageName}.${subPackage}

import android.content.Context
import android.content.Intent
import android.support.v4.app.Fragment
import ${applicationPackage}.R
import ${applicationPackage}.presentation.common.BaseNavigator
import javax.inject.Inject

class ${moduleName}Navigator @Inject constructor(activity: ${moduleName}Activity) : BaseNavigator(activity, R.id.content) {

    override fun createActivityIntent(context: Context, screenKey: String, data: Any?): Intent? {
        return when (screenKey) {
            else -> super.createActivityIntent(context, screenKey, data)
        }
    }

    override fun createFragment(screenKey: String, data: Any?): Fragment? {
        return when (screenKey) {
            else -> null
        }
    }
}
