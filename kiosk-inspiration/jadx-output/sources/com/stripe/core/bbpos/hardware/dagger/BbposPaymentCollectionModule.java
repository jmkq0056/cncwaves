package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposPaymentCollectionListener;
import com.stripe.core.bbpos.hardware.CardRemovalChecker;
import com.stripe.hardware.paymentcollection.ManualEntryEventReceiver;
import com.stripe.hardware.paymentcollection.PaymentEventReceiver;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposPaymentCollectionModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007¨\u0006\u000e"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule;", "", "()V", "provideBbposPaymentCollectionListenerFactory", "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;", "lazyPaymentEventReceiver", "Ldagger/Lazy;", "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;", "lazyManualEntryEventReceiver", "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "cardRemovalChecker", "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class BbposPaymentCollectionModule {
    public static final BbposPaymentCollectionModule INSTANCE = new BbposPaymentCollectionModule();

    private BbposPaymentCollectionModule() {
    }

    @Provides
    public final BbposPaymentCollectionListener.Factory provideBbposPaymentCollectionListenerFactory(Lazy<PaymentEventReceiver> lazyPaymentEventReceiver, Lazy<ManualEntryEventReceiver> lazyManualEntryEventReceiver, HealthLoggerBuilder healthLoggerBuilder, CardRemovalChecker cardRemovalChecker) {
        Intrinsics.checkNotNullParameter(lazyPaymentEventReceiver, "lazyPaymentEventReceiver");
        Intrinsics.checkNotNullParameter(lazyManualEntryEventReceiver, "lazyManualEntryEventReceiver");
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(cardRemovalChecker, "cardRemovalChecker");
        return new BbposPaymentCollectionListener.Factory(lazyPaymentEventReceiver, lazyManualEntryEventReceiver, healthLoggerBuilder, cardRemovalChecker);
    }
}
