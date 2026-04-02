package com.stripe.transaction.dagger;

import com.stripe.transaction.ChargeAttemptManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory implements Factory<ChargeAttemptManager> {
    private final ChargeAttemptManagerModule module;

    public ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory(ChargeAttemptManagerModule chargeAttemptManagerModule) {
        this.module = chargeAttemptManagerModule;
    }

    @Override // javax.inject.Provider
    public ChargeAttemptManager get() {
        return providesChargeAttemptManager(this.module);
    }

    public static ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory create(ChargeAttemptManagerModule chargeAttemptManagerModule) {
        return new ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory(chargeAttemptManagerModule);
    }

    public static ChargeAttemptManager providesChargeAttemptManager(ChargeAttemptManagerModule chargeAttemptManagerModule) {
        return (ChargeAttemptManager) Preconditions.checkNotNullFromProvides(chargeAttemptManagerModule.providesChargeAttemptManager());
    }
}
