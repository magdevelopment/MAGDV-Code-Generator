package ${packageName}

import android.support.v7.util.DiffUtil


class ${moduleName}DiffCallback(
    private val oldList: List<${modelName}>,
    private val newList: List<${modelName}>) : DiffUtil.Callback() {

    override fun getOldListSize(): Int {
        return oldList.size
    }

    override fun getNewListSize(): Int {
        return newList.size
    }

    override fun areItemsTheSame(oldItemPosition: Int, newItemPosition: Int): Boolean {
        //TODO compare item's ids
        return true
    }

    override fun areContentsTheSame(oldItemPosition: Int, newItemPosition: Int): Boolean {
        //TODO compare item's contents
        return true
    }
}
