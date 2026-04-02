package com.stripe.paymentcollection.manualentry.dagger;

import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.ConfigureReaderHandler;
import com.stripe.paymentcollection.manualentry.ConfirmDetailsHandler;
import com.stripe.paymentcollection.manualentry.CvvEntryHandler;
import com.stripe.paymentcollection.manualentry.EmptyHandler;
import com.stripe.paymentcollection.manualentry.ExpiryDateEntryHandler;
import com.stripe.paymentcollection.manualentry.FinishedHandler;
import com.stripe.paymentcollection.manualentry.ManualEntryLoggerInterface;
import com.stripe.paymentcollection.manualentry.ManualEntryState;
import com.stripe.paymentcollection.manualentry.ManualEntryStateMachine;
import com.stripe.paymentcollection.manualentry.PanEntryHandler;
import com.stripe.paymentcollection.manualentry.ZipCodeHandler;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ManualEntryStateMachineModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007JX\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010!\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\"\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006#"}, d2 = {"Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;", "", "()V", "providesConfigureReaderHandler", "Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;", "paymentCollectionEventDelegate", "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "loggerFactory", "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;", "providesConfirmDetailsHandler", "Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;", "providesCvvEntryHandler", "Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;", "providesEmptyHandler", "Lcom/stripe/paymentcollection/manualentry/EmptyHandler;", "providesExpiryDateEntryHandler", "Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;", "providesFinishedHandler", "Lcom/stripe/paymentcollection/manualentry/FinishedHandler;", "providesManualEntryStateMachine", "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;", "emptyHandler", "configureReaderHandler", "zipCodeHandler", "Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;", "confirmDetailsHandler", "panEntryHandler", "Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;", "expiryDateEntryHandler", "cvvEntryHandler", "finishedHandler", "manualEntryLogger", "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;", "providesPanEntryHandler", "providesZipCodeHandler", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ManualEntryStateMachineModule {
    public static final ManualEntryStateMachineModule INSTANCE = new ManualEntryStateMachineModule();

    private ManualEntryStateMachineModule() {
    }

    @Provides
    @Singleton
    public final ManualEntryStateMachine providesManualEntryStateMachine(EmptyHandler emptyHandler, ConfigureReaderHandler configureReaderHandler, ZipCodeHandler zipCodeHandler, ConfirmDetailsHandler confirmDetailsHandler, PanEntryHandler panEntryHandler, ExpiryDateEntryHandler expiryDateEntryHandler, CvvEntryHandler cvvEntryHandler, FinishedHandler finishedHandler, ManualEntryLoggerInterface manualEntryLogger, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(emptyHandler, "emptyHandler");
        Intrinsics.checkNotNullParameter(configureReaderHandler, "configureReaderHandler");
        Intrinsics.checkNotNullParameter(zipCodeHandler, "zipCodeHandler");
        Intrinsics.checkNotNullParameter(confirmDetailsHandler, "confirmDetailsHandler");
        Intrinsics.checkNotNullParameter(panEntryHandler, "panEntryHandler");
        Intrinsics.checkNotNullParameter(expiryDateEntryHandler, "expiryDateEntryHandler");
        Intrinsics.checkNotNullParameter(cvvEntryHandler, "cvvEntryHandler");
        Intrinsics.checkNotNullParameter(finishedHandler, "finishedHandler");
        Intrinsics.checkNotNullParameter(manualEntryLogger, "manualEntryLogger");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ManualEntryStateMachine(emptyHandler, configureReaderHandler, zipCodeHandler, confirmDetailsHandler, panEntryHandler, expiryDateEntryHandler, cvvEntryHandler, finishedHandler, manualEntryLogger, loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryStateMachine.class)));
    }

    @Provides
    @Singleton
    public final EmptyHandler providesEmptyHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollectionEventDelegate, "paymentCollectionEventDelegate");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new EmptyHandler(paymentCollectionEventDelegate, loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryState.class)));
    }

    @Provides
    @Singleton
    public final ConfigureReaderHandler providesConfigureReaderHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollectionEventDelegate, "paymentCollectionEventDelegate");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ConfigureReaderHandler(paymentCollectionEventDelegate, loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryState.class)));
    }

    @Provides
    @Singleton
    public final PanEntryHandler providesPanEntryHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollectionEventDelegate, "paymentCollectionEventDelegate");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new PanEntryHandler(paymentCollectionEventDelegate, loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryState.class)));
    }

    @Provides
    public final ExpiryDateEntryHandler providesExpiryDateEntryHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollectionEventDelegate, "paymentCollectionEventDelegate");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ExpiryDateEntryHandler(paymentCollectionEventDelegate, loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryState.class)));
    }

    @Provides
    public final CvvEntryHandler providesCvvEntryHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollectionEventDelegate, "paymentCollectionEventDelegate");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new CvvEntryHandler(paymentCollectionEventDelegate, loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryState.class)));
    }

    @Provides
    @Singleton
    public final ZipCodeHandler providesZipCodeHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollectionEventDelegate, "paymentCollectionEventDelegate");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ZipCodeHandler(paymentCollectionEventDelegate, loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryState.class)));
    }

    @Provides
    @Singleton
    public final ConfirmDetailsHandler providesConfirmDetailsHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollectionEventDelegate, "paymentCollectionEventDelegate");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ConfirmDetailsHandler(paymentCollectionEventDelegate, loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryState.class)));
    }

    @Provides
    @Singleton
    public final FinishedHandler providesFinishedHandler(PaymentCollectionEventDelegate paymentCollectionEventDelegate, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollectionEventDelegate, "paymentCollectionEventDelegate");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new FinishedHandler(paymentCollectionEventDelegate, loggerFactory.create(Reflection.getOrCreateKotlinClass(ManualEntryState.class)));
    }
}
