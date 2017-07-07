package ${packageName}.di.app;

import ${packageName}.App;
import ${packageName}.di.activity.ActivityBindingsModule;
import dagger.Component;
import dagger.android.AndroidInjector;
<#if backwardsCompatibility>
import dagger.android.support.AndroidSupportInjectionModule;
<#else>
import dagger.android.AndroidInjectionModule;
</#if>

import javax.inject.Singleton;

/**
 * Created with IntelliJ IDEA.
 * User: Sergey Chuvashev
 * Date: 23/11/2016
 * Time: 16:10
 */

@Singleton
@Component(modules = {
        AppModule.class, 
        ActivityBindingsModule.class, 
<#if backwardsCompatibility>
        AndroidSupportInjectionModule.class
<#else>
		AndroidInjectionModule.class
</#if>
})
public interface AppComponent extends AndroidInjector<App> {
	@Component.Builder
    public abstract class Builder extends AndroidInjector.Builder<App> {
        public abstract Builder appModule(AppModule module);
    }
}
