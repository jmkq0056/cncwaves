package com.stripe.stripeterminal.internal.common.log;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.stripe.spos.sentry.http.SentryConfig;
import com.stripe.spos.sentry.http.SentryHttpClient;
import com.stripe.spos.sentry.http.models.Contexts;
import com.stripe.spos.sentry.http.models.Dsn;
import com.stripe.spos.sentry.http.models.EnvironmentConfig;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SentryAndroid.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\u001aL\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\f¨\u0006\r"}, d2 = {"createSentryAndroid", "Lcom/stripe/spos/sentry/http/SentryHttpClient;", "context", "Landroid/content/Context;", "dsn", "", "libraryPackageName", "libraryVersionName", "libraryVersionCode", "", "environment", "customTags", "", "common_publish"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class SentryAndroidKt {
    public static /* synthetic */ SentryHttpClient createSentryAndroid$default(Context context, String str, String str2, String str3, int i, String str4, Map map, int i2, Object obj) {
        if ((i2 & 64) != 0) {
            map = MapsKt.emptyMap();
        }
        return createSentryAndroid(context, str, str2, str3, i, str4, map);
    }

    public static final SentryHttpClient createSentryAndroid(Context context, String dsn, String libraryPackageName, String libraryVersionName, int i, String environment, Map<String, String> customTags) {
        Object objM817constructorimpl;
        ApplicationInfo applicationInfo;
        CharSequence charSequenceLoadLabel;
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dsn, "dsn");
        Intrinsics.checkNotNullParameter(libraryPackageName, "libraryPackageName");
        Intrinsics.checkNotNullParameter(libraryVersionName, "libraryVersionName");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(customTags, "customTags");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (Build.VERSION.SDK_INT >= 33) {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
            } else {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            }
            objM817constructorimpl = Result.m817constructorimpl(packageInfo);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m823isFailureimpl(objM817constructorimpl)) {
            objM817constructorimpl = null;
        }
        PackageInfo packageInfo2 = (PackageInfo) objM817constructorimpl;
        Dsn dsnFromString = Dsn.INSTANCE.fromString(dsn);
        String country = Locale.getDefault().getCountry();
        Intrinsics.checkNotNullExpressionValue(country, "getCountry(...)");
        EnvironmentConfig environmentConfig = new EnvironmentConfig(libraryPackageName, libraryVersionName, i, environment, country, Integer.valueOf(Build.VERSION.SDK_INT));
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        String string = (packageInfo2 == null || (applicationInfo = packageInfo2.applicationInfo) == null || (charSequenceLoadLabel = applicationInfo.loadLabel(context.getPackageManager())) == null) ? null : charSequenceLoadLabel.toString();
        if (string == null) {
            string = "";
        }
        String str = packageInfo2 != null ? packageInfo2.versionName : null;
        Contexts.AppInfo appInfo = new Contexts.AppInfo(packageName, string, str != null ? str : "");
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        String TYPE = Build.TYPE;
        Intrinsics.checkNotNullExpressionValue(TYPE, "TYPE");
        String DISPLAY = Build.DISPLAY;
        Intrinsics.checkNotNullExpressionValue(DISPLAY, "DISPLAY");
        Contexts.OsInfo osInfo = new Contexts.OsInfo("Android", RELEASE, TYPE, DISPLAY);
        String ID = Build.ID;
        Intrinsics.checkNotNullExpressionValue(ID, "ID");
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        String TYPE2 = Build.TYPE;
        Intrinsics.checkNotNullExpressionValue(TYPE2, "TYPE");
        String[] SUPPORTED_ABIS = Build.SUPPORTED_ABIS;
        Intrinsics.checkNotNullExpressionValue(SUPPORTED_ABIS, "SUPPORTED_ABIS");
        return new SentryHttpClient(new SentryConfig(dsnFromString, environmentConfig, new Contexts(appInfo, osInfo, new Contexts.DeviceInfo(ID, MODEL, MANUFACTURER, TYPE2, ArraysKt.toList(SUPPORTED_ABIS))), customTags, null, 16, null));
    }
}
