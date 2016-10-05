package ${packageName};

import com.moqod.android.mvp.base.BasePresenter;
import com.moqod.android.rxutils.RxUtils;

import javax.inject.Inject;

public final class ${underscoreToCamelCase(classToResource(fragmentClass))}Presenter implements BasePresenter<${underscoreToCamelCase(classToResource(fragmentClass))}MvpContract.View>, ${underscoreToCamelCase(classToResource(fragmentClass))}MvpContract.EventListener {

	private ${underscoreToCamelCase(classToResource(fragmentClass))}MvpContract.View mView;

    @Inject
    public ${underscoreToCamelCase(classToResource(fragmentClass))}Presenter() {
    }

	@Override
    public void attachView(${underscoreToCamelCase(classToResource(fragmentClass))}MvpContract.View view) {
        mView = view;
    }

    @Override
    public void detachView() {
    	<#if useRxUtils>
    	RxUtils.unsubscribe(this);
    	</#if>
        mView = null;
    }

}