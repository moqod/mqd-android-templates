package ${packageName}.presentation.common;

import android.os.Bundle;
import android.support.annotation.Nullable;
<#if backwardsCompatibility>
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
<#else>
import android.app.Fragment;
import android.app.Activity;
</#if>

import dagger.android.AndroidInjection;
import dagger.android.AndroidInjector;
import dagger.android.DispatchingAndroidInjector;
<#if backwardsCompatibility>
import dagger.android.support.HasSupportFragmentInjector;
<#else>
import dagger.android.HasFragmentInjector;
</#if>

import javax.inject.Inject;

public abstract class BaseActivity extends <#if backwardsCompatibility>AppCompatActivity implements HasSupportFragmentInjector<#else>Activity implements HasFragmentInjector</#if> {

    @Inject DispatchingAndroidInjector<Fragment> mAndroidInjector;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        AndroidInjection.inject(this);
        super.onCreate(savedInstanceState);
    }

<#if backwardsCompatibility>
    @Override
    public AndroidInjector<Fragment> supportFragmentInjector() {
        return mAndroidInjector;
    }
<#else>
    @Override
    public AndroidInjector<Fragment> fragmentInjector() {
        return mAndroidInjector;
    }
</#if>
}
