package ${packageName}.${subPackage}

import android.content.Context
import android.content.Intent
import android.support.v4.app.Fragment
import ${applicationPackage}.R
import ${applicationPackage}.presentation.common.BaseNavigator
import javax.inject.Inject


class ${moduleName}Navigator @Inject constructor(activity: ${moduleName}Activity) : BaseNavigator(activity, R.id.content) {

    override fun createIntent(context: Context, screenName: String, transferData: Any?): Intent? {
        return when (screenName) {
            else -> null
        }
    }

    override fun createFragment(screenKey: String, data: Any?): Fragment? {
        return when (screenKey) {
            else -> null
        }
    }
}
