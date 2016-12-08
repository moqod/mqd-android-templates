package ${packageName};

import com.moqod.android.mvp.base.BasePresenter;
import com.moqod.android.rxutils.RxUtils;

import javax.inject.Inject;

public final class ${underscoreToCamelCase(classToResource(fragmentClass))}Presenter implements BasePresenter<${underscoreToCamelCase(classToResource(fragmentClass))}Contract.View>, ${underscoreToCamelCase(classToResource(fragmentClass))}Contract.EventListener {

	private ${underscoreToCamelCase(classToResource(fragmentClass))}Contract.View mView;
	private ${underscoreToCamelCase(classToResource(fragmentClass))}Contract.EventDelegate mEventDelegate;

    @Inject
    public ${underscoreToCamelCase(classToResource(fragmentClass))}Presenter(${underscoreToCamelCase(classToResource(fragmentClass))}Contract.EventDelegate eventDelegate) {
    	mEventDelegate = eventDelegate;
    }

	@Override
    public void attachView(${underscoreToCamelCase(classToResource(fragmentClass))}Contract.View view) {
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