package ${packageName}.injection;

import ${packageName}.${fragmentClass};

import dagger.Component;

@ActivityScope
@Component(dependencies = AppComponent.class, modules = ${underscoreToCamelCase(classToResource(fragmentClass))}Module.class)
public interface ${underscoreToCamelCase(classToResource(fragmentClass))}StubComponent {
    void inject(${fragmentClass} fragment);
}