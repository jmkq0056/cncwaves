package com.stripe.device.dagger;

import com.stripe.device.DefaultActiveLocationConfigRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory implements Factory<DefaultActiveLocationConfigRepository> {
    @Override // javax.inject.Provider
    public DefaultActiveLocationConfigRepository get() {
        return provideDefaultActiveLocationConfigRepository$wiring();
    }

    public static ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultActiveLocationConfigRepository provideDefaultActiveLocationConfigRepository$wiring() {
        return (DefaultActiveLocationConfigRepository) Preconditions.checkNotNullFromProvides(ActiveLocationConfigModule.INSTANCE.provideDefaultActiveLocationConfigRepository$wiring());
    }

    /* JADX INFO: compiled from: ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory.java */
    private static final class InstanceHolder {
        private static final ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory INSTANCE = new ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory();

        private InstanceHolder() {
        }
    }
}
