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
import ${packageName}.injection.${underscoreToCamelCase(classToResource(fragmentClass))}StubComponent;
<#if supportDataBinding>import ${applicationPackage}.databinding.${underscoreToCamelCase(layoutName)}Binding;</#if>

import javax.inject.Inject;


public class ${fragmentClass} extends Fragment implements ${underscoreToCamelCase(classToResource(fragmentClass))}Contract.View {

    public static ${fragmentClass} newInstance() {
        return new ${fragmentClass}();
    }

    @Inject ${underscoreToCamelCase(classToResource(fragmentClass))}Presenter mPresenter;
	<#if supportDataBinding>
    private ${underscoreToCamelCase(layoutName)}Binding mBinding;
    </#if>

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Injector.getComponent(getActivity(), ${underscoreToCamelCase(classToResource(fragmentClass))}StubComponent.class).inject(this);
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
        mPresenter.attachView(this);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        mPresenter.detachView();
    }
    
}
