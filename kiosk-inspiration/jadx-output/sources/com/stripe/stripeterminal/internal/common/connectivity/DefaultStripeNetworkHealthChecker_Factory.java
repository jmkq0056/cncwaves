package com.stripe.stripeterminal.internal.common.connectivity;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import dagger.internal.Factory;
import javax.inject.Provider;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultStripeNetworkHealthChecker_Factory implements Factory<DefaultStripeNetworkHealthChecker> {
    private final Provider<OkHttpClientProvider> networkClientProvider;
    private final Provider<OfflineConfigHelper> offlineConfigHelperProvider;
    private final Provider<StripeHealthCheckerStateMachine> stateMachineProvider;
    private final Provider<HttpUrl> stripeHealthCheckUrlProvider;

    public DefaultStripeNetworkHealthChecker_Factory(Provider<StripeHealthCheckerStateMachine> provider, Provider<OkHttpClientProvider> provider2, Provider<HttpUrl> provider3, Provider<OfflineConfigHelper> provider4) {
        this.stateMachineProvider = provider;
        this.networkClientProvider = provider2;
        this.stripeHealthCheckUrlProvider = provider3;
        this.offlineConfigHelperProvider = provider4;
    }

    @Override // javax.inject.Provider
    public DefaultStripeNetworkHealthChecker get() {
        return newInstance(this.stateMachineProvider.get(), this.networkClientProvider.get(), this.stripeHealthCheckUrlProvider.get(), this.offlineConfigHelperProvider.get());
    }

    public static DefaultStripeNetworkHealthChecker_Factory create(Provider<StripeHealthCheckerStateMachine> provider, Provider<OkHttpClientProvider> provider2, Provider<HttpUrl> provider3, Provider<OfflineConfigHelper> provider4) {
        return new DefaultStripeNetworkHealthChecker_Factory(provider, provider2, provider3, provider4);
    }

    public static DefaultStripeNetworkHealthChecker newInstance(StripeHealthCheckerStateMachine stripeHealthCheckerStateMachine, OkHttpClientProvider okHttpClientProvider, HttpUrl httpUrl, OfflineConfigHelper offlineConfigHelper) {
        return new DefaultStripeNetworkHealthChecker(stripeHealthCheckerStateMachine, okHttpClientProvider, httpUrl, offlineConfigHelper);
    }
}
