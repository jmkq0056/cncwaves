package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.dns.InetAddressValidator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.Dns;

/* JADX INFO: loaded from: classes4.dex */
public final class JackrabbitModule_ProvideInternetReaderDnsFactory implements Factory<Dns> {
    private final Provider<InetAddressValidator> inetAddressValidatorProvider;

    public JackrabbitModule_ProvideInternetReaderDnsFactory(Provider<InetAddressValidator> provider) {
        this.inetAddressValidatorProvider = provider;
    }

    @Override // javax.inject.Provider
    public Dns get() {
        return provideInternetReaderDns(this.inetAddressValidatorProvider.get());
    }

    public static JackrabbitModule_ProvideInternetReaderDnsFactory create(Provider<InetAddressValidator> provider) {
        return new JackrabbitModule_ProvideInternetReaderDnsFactory(provider);
    }

    public static Dns provideInternetReaderDns(InetAddressValidator inetAddressValidator) {
        return (Dns) Preconditions.checkNotNullFromProvides(JackrabbitModule.INSTANCE.provideInternetReaderDns(inetAddressValidator));
    }
}
