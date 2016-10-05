package ${packageName}.injection;

import ${packageName}.${underscoreToCamelCase(classToResource(fragmentClass))}Router;
import dagger.Module;
import dagger.Provides;

@Module
public final class ${underscoreToCamelCase(classToResource(fragmentClass))}Module {

	private ${underscoreToCamelCase(classToResource(fragmentClass))}Router mRouter;

	public ${underscoreToCamelCase(classToResource(fragmentClass))}Module(${underscoreToCamelCase(classToResource(fragmentClass))}Router router) {
		mRouter = router;
	}

	@Provides
	public ${underscoreToCamelCase(classToResource(fragmentClass))}Router provideRouter() {
		return mRouter;
	}

}
