package ${packageName}.injection;

import ${packageName}.${underscoreToCamelCase(classToResource(fragmentClass))}Contract;
import dagger.Module;
import dagger.Provides;

@Module
public final class ${underscoreToCamelCase(classToResource(fragmentClass))}Module {

	private ${underscoreToCamelCase(classToResource(fragmentClass))}Contract.EventDelegate mEventDelegate;

	public ${underscoreToCamelCase(classToResource(fragmentClass))}Module(${underscoreToCamelCase(classToResource(fragmentClass))}Contract.EventDelegate eventDelegate) {
		mEventDelegate = eventDelegate;
	}

	@Provides
	${underscoreToCamelCase(classToResource(fragmentClass))}Contract.EventDelegate provideEventDelegate() {
		return mEventDelegate;
	}

}
