package com.stripe.stripeterminal.dagger;

import android.content.Context;
import android.os.Build;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.internal.common.introspection.ApiLevelValidator;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApiLevelModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/dagger/ApiLevelModule;", "", "()V", "provideApiLevelValidator", "Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;", "context", "Landroid/content/Context;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ApiLevelModule {
    @Provides
    @Singleton
    public final ApiLevelValidator provideApiLevelValidator(@ForApplication final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new ApiLevelValidator() { // from class: com.stripe.stripeterminal.dagger.ApiLevelModule.provideApiLevelValidator.1
            @Override // com.stripe.stripeterminal.internal.common.introspection.ApiLevelValidator
            public void validateMinSdkVersion() {
            }

            @Override // com.stripe.stripeterminal.internal.common.introspection.ApiLevelValidator
            public void logSdkVersions(SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
                Intrinsics.checkNotNullParameter(logger, "logger");
                logger.d("Application version info", TuplesKt.to("minSdkVersion", Integer.valueOf(context.getApplicationInfo().minSdkVersion)), TuplesKt.to("targetSdkVersion", Integer.valueOf(context.getApplicationInfo().targetSdkVersion)), TuplesKt.to("compileSdkVersion", Integer.valueOf(Build.VERSION.SDK_INT >= 31 ? context.getApplicationInfo().compileSdkVersion : 0)));
            }
        };
    }
}
