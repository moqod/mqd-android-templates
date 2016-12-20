package ${packageName}.injection;

import com.moqod.android.base.di.ActivityScope;
import ${packageName}.${fragmentClass};

import dagger.Subcomponent;

@ActivityScope
@Subcomponent(modules = {
        ${underscoreToCamelCase(classToResource(fragmentClass))}Module.class
})
public interface ${underscoreToCamelCase(classToResource(fragmentClass))}StubComponent {
    void inject(${fragmentClass} fragment);
}