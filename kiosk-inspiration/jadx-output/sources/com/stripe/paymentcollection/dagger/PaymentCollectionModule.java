package com.stripe.paymentcollection.dagger;

import com.stripe.currency.Amount;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.hardware.paymentcollection.ManualEntryEventReceiver;
import com.stripe.hardware.paymentcollection.PaymentCollector;
import com.stripe.hardware.paymentcollection.PaymentEventReceiver;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.jvmcore.dagger.PaymentCollection;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.paymentcollection.DefaultPaymentCollectionFeatureFlagRepository;
import com.stripe.paymentcollection.DefaultPaymentCollectionStateTimer;
import com.stripe.paymentcollection.DefaultPaymentCollectionTimeoutSupplier;
import com.stripe.paymentcollection.PaymentCollectionCoordinator;
import com.stripe.paymentcollection.PaymentCollectionEventDelegate;
import com.stripe.paymentcollection.PaymentCollectionFeatureFlagRepository;
import com.stripe.paymentcollection.PaymentCollectionListener;
import com.stripe.paymentcollection.PaymentCollectionLocaleManager;
import com.stripe.paymentcollection.PaymentCollectionStateMachine;
import com.stripe.paymentcollection.PaymentCollectionStateTimer;
import com.stripe.paymentcollection.PaymentCollectionTimeoutSupplier;
import com.stripe.paymentcollection.SettingsRepository;
import com.stripe.paymentcollection.TransactionListener;
import com.stripe.paymentcollection.TransactionRepository;
import com.stripe.paymentcollection.log.PaymentCollectionLogger;
import com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory;
import com.stripe.paymentcollection.manualentry.ManualEntryStateMachine;
import com.stripe.paymentcollection.manualentry.dagger.ManualEntryStateMachineModule;
import com.stripe.paymentcollection.metrics.EventLoggers;
import com.stripe.paymentcollection.metrics.dagger.PaymentCollectionLoggerModule;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: PaymentCollectionModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0001¢\u0006\u0002\b\bJg\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0001¢\u0006\u0002\b J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\nH\u0007J\b\u0010$\u001a\u00020\u000eH\u0007J'\u0010%\u001a\u00020&2\b\b\u0001\u0010'\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020)2\u0006\u0010\u001e\u001a\u00020\u001fH\u0001¢\u0006\u0002\b*J\r\u0010+\u001a\u00020)H\u0001¢\u0006\u0002\b,J\u0010\u0010-\u001a\u00020.2\u0006\u0010#\u001a\u00020\nH\u0007J\u001e\u0010/\u001a\u00020\u001b2\f\u00100\u001a\b\u0012\u0004\u0012\u0002010\u00062\u0006\u00102\u001a\u000203H\u0007J\u0010\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0007J\u0010\u00108\u001a\u00020\u001f2\u0006\u00109\u001a\u00020:H\u0007¨\u0006;"}, d2 = {"Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;", "", "()V", "providePaymentCollectionContextFactory", "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;", "paymentCollectionStateMachine", "Ljavax/inject/Provider;", "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;", "providePaymentCollectionContextFactory$wiring", "providePaymentCollectionCoordinator", "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;", "paymentCollector", "Lcom/stripe/hardware/paymentcollection/PaymentCollector;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "settingsRepository", "Lcom/stripe/paymentcollection/SettingsRepository;", "localeManager", "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;", "eventLoggers", "Lcom/stripe/paymentcollection/metrics/EventLoggers;", "transactionRepository", "Lcom/stripe/paymentcollection/TransactionRepository;", "paymentCollectionContextFactory", "deviceInfoRepository", "Lcom/stripe/device/DeviceInfoRepository;", "paymentCollectionFeatureFlagRepository", "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;", "transactionListener", "Lcom/stripe/paymentcollection/TransactionListener;", "loggerFactory", "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;", "providePaymentCollectionCoordinator$wiring", "providePaymentCollectionEventDelegate", "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;", "coordinator", "providePaymentCollectionScope", "providePaymentCollectionStateTimer", "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;", "scope", "timeoutSupplier", "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;", "providePaymentCollectionStateTimer$wiring", "providePaymentCollectionTimeoutSupplier", "providePaymentCollectionTimeoutSupplier$wiring", "providePaymentEventReceiver", "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;", "providesFeatureFlagRepository", "readerFeatureFlags", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "sharedPrefs", "Lcom/stripe/jvmcore/storage/SharedPrefs;", "providesManualEntryEventReceiver", "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;", "stateMachine", "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;", "providesPaymentCollectionLoggerFactory", "terminalLoggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {ManualEntryStateMachineModule.class, PaymentCollectionLoggerModule.class})
public final class PaymentCollectionModule {
    public static final PaymentCollectionModule INSTANCE = new PaymentCollectionModule();

    private PaymentCollectionModule() {
    }

    @Provides
    @Reusable
    public final PaymentCollectionTimeoutSupplier providePaymentCollectionTimeoutSupplier$wiring() {
        return new DefaultPaymentCollectionTimeoutSupplier();
    }

    @Provides
    @Singleton
    public final PaymentCollectionStateTimer providePaymentCollectionStateTimer$wiring(@PaymentCollection CoroutineScope scope, PaymentCollectionTimeoutSupplier timeoutSupplier, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(timeoutSupplier, "timeoutSupplier");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultPaymentCollectionStateTimer(scope, timeoutSupplier, loggerFactory.create(Reflection.getOrCreateKotlinClass(PaymentCollectionStateTimer.class)));
    }

    @Provides
    public final PaymentCollectionCoordinator.PaymentCollectionContext.Factory providePaymentCollectionContextFactory$wiring(final Provider<PaymentCollectionStateMachine> paymentCollectionStateMachine) {
        Intrinsics.checkNotNullParameter(paymentCollectionStateMachine, "paymentCollectionStateMachine");
        return new PaymentCollectionCoordinator.PaymentCollectionContext.Factory() { // from class: com.stripe.paymentcollection.dagger.PaymentCollectionModule$providePaymentCollectionContextFactory$1
            @Override // com.stripe.paymentcollection.PaymentCollectionCoordinator.PaymentCollectionContext.Factory
            public PaymentCollectionCoordinator.PaymentCollectionContext create(PaymentCollectionListener paymentCollectionListener, Amount amount, TransactionType transactionType) {
                Intrinsics.checkNotNullParameter(paymentCollectionListener, "paymentCollectionListener");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(transactionType, "transactionType");
                PaymentCollectionStateMachine paymentCollectionStateMachine2 = paymentCollectionStateMachine.get();
                Intrinsics.checkNotNullExpressionValue(paymentCollectionStateMachine2, "get(...)");
                return new PaymentCollectionCoordinator.PaymentCollectionContext(paymentCollectionListener, amount, transactionType, paymentCollectionStateMachine2);
            }
        };
    }

    @Provides
    @Singleton
    public final PaymentCollectionCoordinator providePaymentCollectionCoordinator$wiring(PaymentCollector paymentCollector, @PaymentCollection CoroutineScope coroutineScope, SettingsRepository settingsRepository, PaymentCollectionLocaleManager localeManager, EventLoggers eventLoggers, TransactionRepository transactionRepository, PaymentCollectionCoordinator.PaymentCollectionContext.Factory paymentCollectionContextFactory, DeviceInfoRepository deviceInfoRepository, PaymentCollectionFeatureFlagRepository paymentCollectionFeatureFlagRepository, TransactionListener transactionListener, PaymentCollectionLoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(paymentCollector, "paymentCollector");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(localeManager, "localeManager");
        Intrinsics.checkNotNullParameter(eventLoggers, "eventLoggers");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(paymentCollectionContextFactory, "paymentCollectionContextFactory");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(paymentCollectionFeatureFlagRepository, "paymentCollectionFeatureFlagRepository");
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new PaymentCollectionCoordinator(paymentCollector, coroutineScope, settingsRepository, localeManager, eventLoggers, transactionRepository, paymentCollectionContextFactory, deviceInfoRepository, paymentCollectionFeatureFlagRepository, transactionListener, loggerFactory.create(Reflection.getOrCreateKotlinClass(PaymentCollectionCoordinator.class)));
    }

    @Provides
    @Singleton
    public final PaymentEventReceiver providePaymentEventReceiver(PaymentCollectionCoordinator coordinator) {
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        return coordinator;
    }

    @Provides
    @Singleton
    public final PaymentCollectionEventDelegate providePaymentCollectionEventDelegate(PaymentCollectionCoordinator coordinator) {
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        return coordinator;
    }

    @Provides
    @Singleton
    @PaymentCollection
    public final CoroutineScope providePaymentCollectionScope() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(ExecutorsKt.from(executorServiceNewSingleThreadExecutor)).plus(new CoroutineName("PaymentCollection")));
    }

    @Provides
    public final ManualEntryEventReceiver providesManualEntryEventReceiver(ManualEntryStateMachine stateMachine) {
        Intrinsics.checkNotNullParameter(stateMachine, "stateMachine");
        return stateMachine;
    }

    @Provides
    public final PaymentCollectionFeatureFlagRepository providesFeatureFlagRepository(Provider<ReaderFeatureFlags> readerFeatureFlags, SharedPrefs sharedPrefs) {
        Intrinsics.checkNotNullParameter(readerFeatureFlags, "readerFeatureFlags");
        Intrinsics.checkNotNullParameter(sharedPrefs, "sharedPrefs");
        return new DefaultPaymentCollectionFeatureFlagRepository(readerFeatureFlags, sharedPrefs);
    }

    @Provides
    @Reusable
    public final PaymentCollectionLoggerFactory providesPaymentCollectionLoggerFactory(final LoggerFactory terminalLoggerFactory) {
        Intrinsics.checkNotNullParameter(terminalLoggerFactory, "terminalLoggerFactory");
        return new PaymentCollectionLoggerFactory() { // from class: com.stripe.paymentcollection.dagger.PaymentCollectionModule$$ExternalSyntheticLambda0
            @Override // com.stripe.paymentcollection.log.PaymentCollectionLoggerFactory
            public final PaymentCollectionLogger create(KClass kClass) {
                return PaymentCollectionModule.providesPaymentCollectionLoggerFactory$lambda$0(terminalLoggerFactory, kClass);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PaymentCollectionLogger providesPaymentCollectionLoggerFactory$lambda$0(LoggerFactory terminalLoggerFactory, KClass clazz) {
        Intrinsics.checkNotNullParameter(terminalLoggerFactory, "$terminalLoggerFactory");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return PaymentCollectionModuleKt.asPaymentCollectionLogger(terminalLoggerFactory.create(clazz));
    }
}
