package ${packageName}.di.fragment;

import javax.inject.Scope;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Scope
@Retention(RetentionPolicy.SOURCE)
public @interface FragmentScope {
}
