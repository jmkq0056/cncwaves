package com.stripe.transaction.dagger;

import com.stripe.transaction.ChargeAttemptManager;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: compiled from: ChargeAttemptManagerModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;", "", "()V", "providesChargeAttemptManager", "Lcom/stripe/transaction/ChargeAttemptManager;", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ChargeAttemptManagerModule {
    @Provides
    @Singleton
    public final ChargeAttemptManager providesChargeAttemptManager() {
        return new ChargeAttemptManager();
    }
}
