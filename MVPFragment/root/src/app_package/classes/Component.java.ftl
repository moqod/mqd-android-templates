package ${packageName}.injection;

import ${applicationPackage}.di.fragment.FragmentScope;
import ${packageName}.${fragmentClass};
import dagger.Subcomponent;
import dagger.android.AndroidInjector;

@FragmentScope
@Subcomponent
public interface ${fragmentClass}Component extends AndroidInjector<${fragmentClass}> {
    @Subcomponent.Builder
    public abstract class Builder extends AndroidInjector.Builder<${fragmentClass}> {
    }
}