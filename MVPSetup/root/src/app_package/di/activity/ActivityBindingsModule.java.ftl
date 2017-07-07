package ${packageName}.di.activity;

import android.app.Activity;
import ${packageName}.presentation.${featureName}.${activityClass};
import ${packageName}.presentation.${featureName}.${activityClass}Component;
import dagger.Binds;
import dagger.Module;
import dagger.android.ActivityKey;
import dagger.android.AndroidInjector;
import dagger.multibindings.IntoMap;

@Module(subcomponents = {
        ${activityClass}Component.class
})
public abstract class ActivityBindingsModule {

    @Binds
    @IntoMap
    @ActivityKey(${activityClass}.class)
    public abstract AndroidInjector.Factory<? extends Activity> ${activityClass}ComponentBuilder(${activityClass}Component.Builder builder);
}
