package ${packageName};

import com.moqod.android.base.di.ActivityScope;
import ${applicationPackage}.di.activity.ActivityComponent;
import ${applicationPackage}.di.activity.ActivityComponentBuilder;
import ${applicationPackage}.di.activity.ActivityModule;

import dagger.Module;
import dagger.Subcomponent;

@ActivityScope
@Subcomponent(modules = {
        ${activityClass}Component.${activityClass}Module.class,
        ActivityModule.class
})
public interface ${activityClass}Component
        extends ActivityComponent<${activityClass}> {

    @Subcomponent.Builder()
    interface Builder extends ActivityComponentBuilder<${activityClass}Component> {
//        ActivityComponentBuilder<${underscoreToCamelCase(classToResource(activityClass))}Component> exampleModule(Module module);
    }

    @Module(includes = {/*Module.class*/})
    class ${activityClass}Module {
    }

}
