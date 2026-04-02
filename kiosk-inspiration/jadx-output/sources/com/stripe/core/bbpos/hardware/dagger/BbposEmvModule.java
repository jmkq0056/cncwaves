package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposPaymentCollector;
import com.stripe.core.bbpos.hardware.CardRemovalChecker;
import com.stripe.core.bbpos.hardware.PinPadAccessibilityChecker;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.paymentcollection.PinButtonsRepository;
import com.stripe.hardware.paymentcollection.PaymentCollector;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.time.Clock;
import dagger.Binds;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BbposEmvModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0001¢\u0006\u0002\b\tJe\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001cH\u0001¢\u0006\u0002\b\u001d¨\u0006\u001f"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;", "", "()V", "provideCardRemovalChecker", "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideCardRemovalChecker$hardware_release", "providePaymentCollector", "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;", "lazyController", "Ldagger/Lazy;", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "clock", "Lcom/stripe/time/Clock;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "pinButtonsRepository", "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;", "featureFlagsProvider", "Ljavax/inject/Provider;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "cardRemovalChecker", "accessibilityChecker", "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;", "providePaymentCollector$hardware_release", "Bindings", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class BbposEmvModule {
    public static final BbposEmvModule INSTANCE = new BbposEmvModule();

    /* JADX INFO: compiled from: BbposEmvModule.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b!\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule$Bindings;", "", "()V", "bindPaymentCollector", "Lcom/stripe/hardware/paymentcollection/PaymentCollector;", "collector", "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public static abstract class Bindings {
        @Binds
        public abstract PaymentCollector bindPaymentCollector(BbposPaymentCollector collector);
    }

    private BbposEmvModule() {
    }

    @Provides
    @Singleton
    public final BbposPaymentCollector providePaymentCollector$hardware_release(Lazy<DeviceControllerWrapper> lazyController, Clock clock, @AppScope CoroutineScope appScope, @IO CoroutineDispatcher ioDispatcher, HealthLoggerBuilder healthLoggerBuilder, PinButtonsRepository pinButtonsRepository, Provider<ReaderFeatureFlags> featureFlagsProvider, CardRemovalChecker cardRemovalChecker, PinPadAccessibilityChecker accessibilityChecker) {
        Intrinsics.checkNotNullParameter(lazyController, "lazyController");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(pinButtonsRepository, "pinButtonsRepository");
        Intrinsics.checkNotNullParameter(featureFlagsProvider, "featureFlagsProvider");
        Intrinsics.checkNotNullParameter(cardRemovalChecker, "cardRemovalChecker");
        Intrinsics.checkNotNullParameter(accessibilityChecker, "accessibilityChecker");
        return new BbposPaymentCollector(lazyController, clock, appScope, ioDispatcher, healthLoggerBuilder, pinButtonsRepository, featureFlagsProvider, cardRemovalChecker, accessibilityChecker);
    }

    @Provides
    @Singleton
    public final CardRemovalChecker provideCardRemovalChecker$hardware_release(@AppScope CoroutineScope appScope, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new CardRemovalChecker(appScope, loggerFactory);
    }
}
