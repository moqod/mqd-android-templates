package ${packageName};

import android.support.annotation.Nullable;
import ${applicationPackage}.presentation.common.BasePresenter;
import ${packageName}.${fragmentClass}Contract;

import javax.inject.Inject;

public final class ${underscoreToCamelCase(classToResource(fragmentClass))}Presenter implements BasePresenter<${fragmentClass}Contract.View>, ${fragmentClass}Contract.EventListener {

	private ${fragmentClass}Contract.View mView;
	private ${fragmentClass}Contract.EventDelegate mEventDelegate;

    @Inject
    public ${underscoreToCamelCase(classToResource(fragmentClass))}Presenter(${fragmentClass}Contract.EventDelegate eventDelegate) {
    	mEventDelegate = eventDelegate;
    }

	@Override
    public void attachView(${fragmentClass}Contract.View view) {
        mView = view;
    }

    @Override
    public void detachView() {
        mView = null;
    }

    @Nullable
	${fragmentClass}Contract.View getView() {
		return mView;
	}

}