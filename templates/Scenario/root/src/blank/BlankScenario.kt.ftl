package ${packageName}

import javax.inject.Inject

interface ${scenario_name}Scenario {
    operator fun invoke(): Unit
}

class ${scenario_name}ScenarioImpl @Inject constructor(
) : ${scenario_name}Scenario {

    override fun invoke(): Unit {
        TODO()
    }
}
