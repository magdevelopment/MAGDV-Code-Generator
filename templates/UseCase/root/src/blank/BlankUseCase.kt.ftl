package ${packageName}

import javax.inject.Inject

interface ${usecase_name}UseCase {
    operator fun invoke(): Unit
}

class ${usecase_name}UseCaseImpl @Inject constructor(
) : ${usecase_name}UseCase {

    override fun invoke(): Unit {
        TODO()
    }
}
