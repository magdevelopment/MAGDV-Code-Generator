package com.magdv.express.courier.presentation.blank

import com.magdv.express.courier.presentation.common.BaseAppRouter
import com.magdv.express.courier.presentation.common.DefaultRouter
import javax.inject.Inject


class BlankRouter @Inject constructor(router: BaseAppRouter) : DefaultRouter(router),
                                                               IBlankRouter
