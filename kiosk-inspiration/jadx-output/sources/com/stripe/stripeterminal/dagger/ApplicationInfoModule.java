package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.terminal.api.DefaultPosInfoFactory;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.stripeterminal.DefaultApplicationInformationProvider;
import com.stripe.stripeterminal.DefaultUserAgentProvider;
import com.stripe.stripeterminal.internal.common.appinfo.SdkApplicationInformationFactory;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ApplicationInfoModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0001¢\u0006\u0002\b\bJ\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;", "", "()V", "provideApplicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "lazySdkApplicationInformationFactory", "Ldagger/Lazy;", "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;", "provideApplicationInformationProvider$sdkmanager_publish", "providePosInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "applicationInformationProvider", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideUserAgentProvider", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ApplicationInfoModule {
    @Provides
    @Singleton
    public final ApplicationInformationProvider provideApplicationInformationProvider$sdkmanager_publish(Lazy<SdkApplicationInformationFactory> lazySdkApplicationInformationFactory) {
        Intrinsics.checkNotNullParameter(lazySdkApplicationInformationFactory, "lazySdkApplicationInformationFactory");
        return new DefaultApplicationInformationProvider(lazySdkApplicationInformationFactory);
    }

    @Provides
    @Singleton
    public final PosInfoFactory providePosInfoFactory(ApplicationInformationProvider applicationInformationProvider, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultPosInfoFactory(applicationInformationProvider, loggerFactory.create(Reflection.getOrCreateKotlinClass(PosInfoFactory.class)));
    }

    @Provides
    public final UserAgentProvider provideUserAgentProvider(ApplicationInformationProvider applicationInformationProvider) {
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        return new DefaultUserAgentProvider(applicationInformationProvider);
    }
}
