package ${packageName}.injection;

import ${packageName}.${fragmentClass};

import dagger.Subcomponent;

@ActivityScope
@Subcomponent(modules = {
        ${underscoreToCamelCase(classToResource(fragmentClass))}Module.class
})
public interface ${underscoreToCamelCase(classToResource(fragmentClass))}StubComponent {
    void inject(${fragmentClass} fragment);
}