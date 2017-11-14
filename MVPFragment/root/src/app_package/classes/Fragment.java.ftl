package ${packageName};

<#if supportDataBinding>
import android.databinding.DataBindingUtil;
</#if>
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${applicationPackage}.R;
<#if supportDataBinding>import ${applicationPackage}.databinding.${underscoreToCamelCase(layoutName)}Binding;</#if>
import ${applicationPackage}.presentation.common.BaseFragment;
import dagger.android.support.AndroidSupportInjection;

import javax.inject.Inject;

public class ${fragmentClass} extends BaseFragment implements ${fragmentClass}Contract.View {

    public static ${fragmentClass} newInstance() {
        return new ${fragmentClass}();
    }

    @Inject ${underscoreToCamelCase(classToResource(fragmentClass))}Presenter mPresenter;
	<#if supportDataBinding>
    private ${underscoreToCamelCase(layoutName)}Binding mBinding;
    </#if>

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        AndroidSupportInjection.inject(this);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		<#if supportDataBinding>
        mBinding = DataBindingUtil.inflate(inflater, R.layout.${layoutName}, container, false);
        return mBinding.getRoot();
        <#else>
        return inflater.inflate(R.layout.${layoutName}, container, false);
        </#if>
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        mBinding.setEventListener(mPresenter);
        mPresenter.attachView(this);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        mPresenter.detachView();
    }

}
