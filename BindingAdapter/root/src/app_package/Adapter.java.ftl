package ${packageName};

import ${applicationPackage}.R;
import ${applicationPackage}.databinding.${underscoreToCamelCase(layoutName)}Binding;
import ${viewModelClass};
import com.moqod.android.databinding.recycler.BindingAdapter;
import com.moqod.android.databinding.recycler.BindingViewHolder;
import com.moqod.android.ui.sorted_list.SortedListWrapper;

<#if useSortedList>
import java.util.List;
<#else>
import java.util.ArrayList;
</#if>

public class ${adapterClass} extends BindingAdapter<${underscoreToCamelCase(layoutName)}Binding> {

	<#if useSortedList>
	private SortedListWrapper<${viewModelClass}> mData;
	<#else>
	private ArrayList<${viewModelClass}> mData;
	</#if>

    public ${adapterClass}() {
	    <#if useSortedList>
        mData = new SortedListWrapper<>(this);
        <#else>
        mData = new ArrayList<>();
        </#if>
    }

    public void setData(List<${viewModelClass}> data) {
    	<#if useSortedList>
        mData.setData(data);
        <#else>
        mData.clear();
        mData.addAll(data);
        notifyDataSetChanged();
        </#if>
    }

    @Override
    protected void bindItem(BindingViewHolder<${underscoreToCamelCase(layoutName)}Binding> viewHolder, int position, List<Object> payload) {
        viewHolder.getBinding().setModel(mData.get(position));
    }

    @Override
    protected int getLayoutId(int position) {
        return R.layout.${layoutName};
    }

    @Override
    public int getItemCount() {
        return mData.size();
    }
    
}
