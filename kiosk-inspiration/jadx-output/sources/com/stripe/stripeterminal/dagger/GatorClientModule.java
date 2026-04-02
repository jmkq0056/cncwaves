package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.dagger.DefaultHttpClientConfigurator;
import com.stripe.jvmcore.client.dagger.HttpClientConfigurator;
import com.stripe.jvmcore.dagger.Gator;
import com.stripe.jvmcore.environment.UserAgentProvider;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GatorClientModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/dagger/GatorClientModule;", "", "()V", "provideHttpClientConfigurator", "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;", "userAgentProvider", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "provideHttpClientConfigurator$sdkmanager_publish", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class GatorClientModule {
    public static final GatorClientModule INSTANCE = new GatorClientModule();

    private GatorClientModule() {
    }

    @Provides
    @Gator
    public final HttpClientConfigurator provideHttpClientConfigurator$sdkmanager_publish(UserAgentProvider userAgentProvider) {
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        return new DefaultHttpClientConfigurator(userAgentProvider);
    }
}
