package ${packageName};

import android.app.Activity;
import ${applicationPackage}.di.activity.ActivityScope;
import dagger.Module;
import dagger.Provides;
import dagger.Subcomponent;
import dagger.android.AndroidInjector;

@ActivityScope
@Subcomponent(modules = {
        ${activityClass}Component.${activityClass}Module.class,
        ${activityClass}Component.FragmentBindingsModule.class,
})
public interface ${activityClass}Component extends AndroidInjector<${activityClass}> {

    @Subcomponent.Builder
    public abstract class Builder extends AndroidInjector.Builder<${activityClass}> {
    }

    @Module
    class ${activityClass}Module {
        @Provides
        Activity provideActivity(${activityClass} activity) {
            return activity;
        }
    }

    @Module(subcomponents = {/*MainFragmentComponent.class*/})
    abstract class FragmentBindingsModule {
/*        @Binds
        @IntoMap
        @FragmentKey(MainFragment.class)
        public abstract AndroidInjector.Factory<? extends Fragment> mainFragmentComponentBuilder(MainFragmentComponent.Builder builder);
        */
    }

}
