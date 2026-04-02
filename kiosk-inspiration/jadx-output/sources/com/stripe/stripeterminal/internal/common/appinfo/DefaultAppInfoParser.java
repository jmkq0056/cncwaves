package com.stripe.stripeterminal.internal.common.appinfo;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppInfoParser.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\bH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultAppInfoParser;", "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "packageManager", "Landroid/content/pm/PackageManager;", RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "", "(Landroid/content/pm/PackageManager;Ljava/lang/String;)V", "getAppVersion", "getMetadataBoolean", "", "key", "getMetadataString", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultAppInfoParser implements AppInfoParser {
    private final PackageManager packageManager;
    private final String packageName;

    public DefaultAppInfoParser(PackageManager packageManager, String packageName) {
        Intrinsics.checkNotNullParameter(packageManager, "packageManager");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        this.packageManager = packageManager;
        this.packageName = packageName;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DefaultAppInfoParser(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        PackageManager packageManager = context.getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "getPackageManager(...)");
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        this(packageManager, packageName);
    }

    @Override // com.stripe.stripeterminal.internal.common.appinfo.AppInfoParser
    public boolean getMetadataBoolean(String key) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultAppInfoParser defaultAppInfoParser = this;
            Bundle bundle = this.packageManager.getApplicationInfo(this.packageName, 128).metaData;
            objM817constructorimpl = Result.m817constructorimpl(Boolean.valueOf(bundle != null ? bundle.getBoolean(key) : false));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = false;
        }
        return ((Boolean) objM817constructorimpl).booleanValue();
    }

    @Override // com.stripe.stripeterminal.internal.common.appinfo.AppInfoParser
    public String getMetadataString(String key) {
        Object objM817constructorimpl;
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultAppInfoParser defaultAppInfoParser = this;
            Bundle bundle = this.packageManager.getApplicationInfo(this.packageName, 128).metaData;
            objM817constructorimpl = Result.m817constructorimpl(bundle != null ? bundle.getString(key) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m823isFailureimpl(objM817constructorimpl) ? null : objM817constructorimpl);
    }

    @Override // com.stripe.stripeterminal.internal.common.appinfo.AppInfoParser
    public String getAppVersion() {
        Object objM817constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            DefaultAppInfoParser defaultAppInfoParser = this;
            String str = this.packageManager.getPackageInfo(this.packageName, 0).versionName;
            if (str == null) {
                str = "";
            }
            objM817constructorimpl = Result.m817constructorimpl(str);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m823isFailureimpl(objM817constructorimpl) ? "" : objM817constructorimpl);
    }
}
