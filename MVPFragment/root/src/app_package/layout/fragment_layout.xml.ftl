<?xml version="1.0" encoding="utf-8"?>
<#if supportDataBinding>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
			xmlns:app="http://schemas.android.com/apk/res-auto"
			xmlns:bind="http://schemas.android.com/apk/res-auto"
			xmlns:tools="http://schemas.android.com/tools">

	<data>
		
	</data>

    <FrameLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">

    </FrameLayout>
</layout>
<#else>
    <FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
			xmlns:app="http://schemas.android.com/apk/res-auto"
			xmlns:bind="http://schemas.android.com/apk/res-auto"
			xmlns:tools="http://schemas.android.com/tools"
        android:layout_width="match_parent"
        android:layout_height="match_parent">

    </FrameLayout>
</#if>