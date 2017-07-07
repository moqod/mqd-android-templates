package ${packageName}.presentation.${featureName};

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import ${packageName}.R;
import ${packageName}.presentation.common.BaseActivity;

public class ${activityClass} extends BaseActivity {

    public static void run(Context context) {
        context.startActivity(new Intent(context, ${activityClass}.class));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
    }

}
