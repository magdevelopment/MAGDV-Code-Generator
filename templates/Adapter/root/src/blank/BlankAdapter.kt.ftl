package ${packageName}

import android.support.v7.util.DiffUtil
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage}.R
import kotlinx.android.extensions.LayoutContainer
import org.jetbrains.anko.sdk15.listeners.onClick


class ${moduleName}Adapter(private val onClick: ((${modelName}) -> Unit)? = null) : RecyclerView.Adapter<${moduleName}Adapter.ViewHolder>() {

    private var dataSet = emptyList<${modelName}>()

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.item_${modelNameLowerCase}, parent, false)
        return ViewHolder(view, onClick)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.bind(dataSet[position])
    }

    override fun getItemCount(): Int {
        return dataSet.size
    }

    fun setData(data: List<${modelName}>) {
        val diffUtilCallback = ${moduleName}DiffCallback(this.dataSet, data)
        val diffResult = DiffUtil.calculateDiff(diffUtilCallback)

        dataSet = data.toList()
        diffResult.dispatchUpdatesTo(this)
    }

    class ViewHolder(
        override val containerView: View,
        private val onClick: ((${modelName}) -> Unit)?) : RecyclerView.ViewHolder(containerView),
                                                          LayoutContainer {

        init {
            containerView.onClick { currentModel?.let { onClick?.invoke(it) } }
        }

        private var currentModel: ${modelName}? = null

        fun bind(model: ${modelName}) {
            currentModel = model
            //TODO Bind Model
        }
    }
}
