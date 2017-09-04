package com.magdv.express.courier.presentation.blank

import android.content.Context
import android.content.Intent
import android.support.v4.app.Fragment
import com.magdv.express.courier.R
import com.magdv.express.courier.presentation.common.BaseNavigator
import javax.inject.Inject


class BlankNavigator @Inject constructor(activity: BlankActivity) : BaseNavigator(activity, R.id.content) {

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
