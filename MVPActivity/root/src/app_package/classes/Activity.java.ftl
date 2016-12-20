package ${packageName};

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import com.moqod.android.base.di.HasComponent;
import ${applicationPackage}.App;
import ${applicationPackage}.R;
import ${applicationPackage}.di.activity.ActivityModule;

import javax.inject.Inject;


public class ${activityClass} extends AppCompatActivity implements HasComponent<${activityClass}Component> {

    public static void run(Context context) {
        Intent intent = new Intent(context, ${activityClass}.class);
        context.startActivity(intent);
    }

    private ${activityClass}Component mComponent;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        getComponent().injectMembers(this);
    }

    @Override
    @SuppressWarnings("unchecked")
    public ${activityClass}Component getComponent() {
        if (mComponent == null) {
            ${activityClass}Component.Builder builder = (${activityClass}Component.Builder) App.get(this).getActivityComponentBuilder(${activityClass}.class);
            builder.activityModule(new ActivityModule(this));
            mComponent = builder.build();
        }
        return mComponent;
    }

}
