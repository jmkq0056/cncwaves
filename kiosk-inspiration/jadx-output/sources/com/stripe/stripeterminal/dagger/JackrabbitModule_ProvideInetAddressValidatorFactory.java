package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.dns.InetAddressValidator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class JackrabbitModule_ProvideInetAddressValidatorFactory implements Factory<InetAddressValidator> {
    @Override // javax.inject.Provider
    public InetAddressValidator get() {
        return provideInetAddressValidator();
    }

    public static JackrabbitModule_ProvideInetAddressValidatorFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static InetAddressValidator provideInetAddressValidator() {
        return (InetAddressValidator) Preconditions.checkNotNullFromProvides(JackrabbitModule.INSTANCE.provideInetAddressValidator());
    }

    private static final class InstanceHolder {
        private static final JackrabbitModule_ProvideInetAddressValidatorFactory INSTANCE = new JackrabbitModule_ProvideInetAddressValidatorFactory();

        private InstanceHolder() {
        }
    }
}
