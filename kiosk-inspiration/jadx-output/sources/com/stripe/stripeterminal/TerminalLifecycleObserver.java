package com.stripe.stripeterminal;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.jvmcore.logging.terminal.log.Log;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalLifecycleObserver.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0000\u0018\u0000 #2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001#B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u000fH\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u000bH\u0016J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\"H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/stripeterminal/TerminalLifecycleObserver;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Landroidx/lifecycle/LifecycleEventObserver;", "Landroid/content/ComponentCallbacks2;", RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "", "sdkManager", "Lcom/stripe/stripeterminal/TerminalSdkManager;", "(Ljava/lang/String;Lcom/stripe/stripeterminal/TerminalSdkManager;)V", "appName", "onActivityCreated", "", "activity", "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "outState", "onActivityStarted", "onActivityStopped", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onLowMemory", "onStateChanged", FirebaseAnalytics.Param.SOURCE, "Landroidx/lifecycle/LifecycleOwner;", NotificationCompat.CATEGORY_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "onTrimMemory", FirebaseAnalytics.Param.LEVEL, "", "Companion", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalLifecycleObserver implements Application.ActivityLifecycleCallbacks, LifecycleEventObserver, ComponentCallbacks2 {
    private static final String APP_BACKGROUND = "applicationDidEnterBackground";
    private static final String APP_FOREGROUND = "applicationDidEnterForeground";
    private static final String APP_ID = "appId";
    private static final String APP_TRIM_MEMORY = "applicationDidReceiveMemoryWarning";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Log LOGGER = Log.INSTANCE.getLogger(TerminalLifecycleObserver.class);
    private static final String MEMORY_LEVEL = "memoryLevel";
    private static final String MEMORY_PROFILE = "memoryProfile";
    private static final String TRIM_MEMORY_BACKGROUND = "TRIM_MEMORY_BACKGROUND";
    private static final String TRIM_MEMORY_COMPLETE = "TRIM_MEMORY_COMPLETE";
    private static final String TRIM_MEMORY_MODERATE = "TRIM_MEMORY_MODERATE";
    private static final String TRIM_MEMORY_RUNNING_CRITICAL = "TRIM_MEMORY_RUNNING_CRITICAL";
    private static final String TRIM_MEMORY_RUNNING_LOW = "TRIM_MEMORY_RUNNING_LOW";
    private static final String TRIM_MEMORY_RUNNING_MODERATE = "TRIM_MEMORY_RUNNING_MODERATE";
    private static final String TRIM_MEMORY_UI_HIDDEN = "TRIM_MEMORY_UI_HIDDEN";
    private static final String UNKNOWN = "unknown";
    private String appName;
    private final String packageName;
    private final TerminalSdkManager sdkManager;

    /* JADX INFO: compiled from: TerminalLifecycleObserver.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmStatic
    public static final TerminalLifecycleObserver getInstance(Application application, TerminalSdkManager terminalSdkManager) {
        return INSTANCE.getInstance(application, terminalSdkManager);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    public TerminalLifecycleObserver(String packageName, TerminalSdkManager sdkManager) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(sdkManager, "sdkManager");
        this.packageName = packageName;
        this.sdkManager = sdkManager;
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int level) {
        String str;
        if (level == 5) {
            str = TRIM_MEMORY_RUNNING_MODERATE;
        } else if (level == 10) {
            str = TRIM_MEMORY_RUNNING_LOW;
        } else if (level == 15) {
            str = TRIM_MEMORY_RUNNING_CRITICAL;
        } else if (level == 20) {
            str = TRIM_MEMORY_UI_HIDDEN;
        } else if (level == 40) {
            str = TRIM_MEMORY_BACKGROUND;
        } else if (level == 60) {
            str = TRIM_MEMORY_MODERATE;
        } else if (level == 80) {
            str = TRIM_MEMORY_COMPLETE;
        } else {
            str = "unknown";
        }
        LOGGER.w(APP_TRIM_MEMORY, TuplesKt.to(MEMORY_LEVEL, String.valueOf(level)), TuplesKt.to(MEMORY_PROFILE, str), TuplesKt.to("appId", this.packageName));
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (TerminalSdkManager.INSTANCE.isTerminalInitialized()) {
            int i = WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
            if (i == 1) {
                this.sdkManager.startTerminal();
                return;
            }
            if (i == 2) {
                LOGGER.i(APP_FOREGROUND, TuplesKt.to("appId", this.appName));
                this.sdkManager.resumeTerminal();
            } else if (i == 3) {
                LOGGER.i(APP_BACKGROUND, TuplesKt.to("appId", this.appName));
                this.sdkManager.pauseTerminal();
            } else {
                if (i != 4) {
                    return;
                }
                this.sdkManager.destroyTerminal();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        String packageName;
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.appName == null) {
            Context applicationContext = activity.getApplicationContext();
            if (applicationContext == null || (packageName = applicationContext.getPackageName()) == null) {
                packageName = "unknown";
            }
            this.appName = packageName;
        }
    }

    /* JADX INFO: compiled from: TerminalLifecycleObserver.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;", "", "()V", "APP_BACKGROUND", "", "APP_FOREGROUND", "APP_ID", "APP_TRIM_MEMORY", "LOGGER", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "MEMORY_LEVEL", "MEMORY_PROFILE", TerminalLifecycleObserver.TRIM_MEMORY_BACKGROUND, TerminalLifecycleObserver.TRIM_MEMORY_COMPLETE, TerminalLifecycleObserver.TRIM_MEMORY_MODERATE, TerminalLifecycleObserver.TRIM_MEMORY_RUNNING_CRITICAL, TerminalLifecycleObserver.TRIM_MEMORY_RUNNING_LOW, TerminalLifecycleObserver.TRIM_MEMORY_RUNNING_MODERATE, TerminalLifecycleObserver.TRIM_MEMORY_UI_HIDDEN, "UNKNOWN", "getInstance", "Lcom/stripe/stripeterminal/TerminalLifecycleObserver;", "application", "Landroid/app/Application;", "sdkManager", "Lcom/stripe/stripeterminal/TerminalSdkManager;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final TerminalLifecycleObserver getInstance(Application application, TerminalSdkManager sdkManager) {
            Intrinsics.checkNotNullParameter(application, "application");
            Intrinsics.checkNotNullParameter(sdkManager, "sdkManager");
            String packageName = application.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            return new TerminalLifecycleObserver(packageName, sdkManager);
        }
    }
}
