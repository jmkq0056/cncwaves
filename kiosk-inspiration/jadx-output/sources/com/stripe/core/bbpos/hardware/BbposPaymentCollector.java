package com.stripe.core.bbpos.hardware;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.bbpos.sdk.CheckCardMode;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.bbpos.hardware.emv.CheckCardModeConverter;
import com.stripe.core.hardware.paymentcollection.PinButtonsRepository;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.emv.AccountType;
import com.stripe.hardware.emv.CancellationPhase;
import com.stripe.hardware.emv.Messages;
import com.stripe.hardware.paymentcollection.PaymentCollector;
import com.stripe.hardware.tipping.TipConfigValidationResult;
import com.stripe.jvmcore.dagger.BluetoothUsbPinPadReaders;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.time.Clock;
import dagger.Lazy;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: BbposPaymentCollector.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 P2\u00020\u00012\u00020\u0002:\u0001PBY\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u0017J\b\u0010,\u001a\u00020-H\u0016J\u0012\u0010.\u001a\u00020-2\b\b\u0002\u0010/\u001a\u000200H\u0002J\u0016\u00101\u001a\u00020-2\f\u00102\u001a\b\u0012\u0004\u0012\u00020403H\u0016J\u0010\u00105\u001a\u00020-2\u0006\u00106\u001a\u000207H\u0017J\u0010\u00108\u001a\u00020-2\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020-2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020-2\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020-2\u0006\u0010B\u001a\u00020CH\u0016J\u0010\u0010D\u001a\u00020-2\u0006\u0010E\u001a\u00020:H\u0016J\b\u0010F\u001a\u00020-H\u0016J\b\u0010G\u001a\u00020-H\u0016J\u0016\u0010H\u001a\u00020-2\u0006\u0010I\u001a\u00020JH\u0096@¢\u0006\u0002\u0010KJ\u0016\u0010L\u001a\u00020-2\u0006\u0010M\u001a\u00020NH\u0096@¢\u0006\u0002\u0010OR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\n \u001b*\u0004\u0018\u00010\u00050\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010 \u001a\u001a\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+¨\u0006Q"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;", "Lcom/stripe/hardware/paymentcollection/PaymentCollector;", "Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;", "lazyController", "Ldagger/Lazy;", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "clock", "Lcom/stripe/time/Clock;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "coroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "pinButtonsRepository", "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;", "featureFlagsProvider", "Ljavax/inject/Provider;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "cardRemovalChecker", "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;", "pinPadAccessibilityChecker", "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;", "(Ldagger/Lazy;Lcom/stripe/time/Clock;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;Ljavax/inject/Provider;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;)V", "getClock", "()Lcom/stripe/time/Clock;", "controller", "kotlin.jvm.PlatformType", "getController", "()Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "getFeatureFlagsProvider", "()Ljavax/inject/Provider;", "paymentHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;", "pinEntryJob", "Lkotlinx/coroutines/Job;", "pinEntryJobLock", "Ljava/util/concurrent/locks/Lock;", "getPinPadAccessibilityChecker", "()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;", "cancelCollectTipAmount", "", "checkCard", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", "checkCardUntilRemoved", "readerType", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "collectTipAmount", "tipConfigValidationResult", "Lcom/stripe/hardware/tipping/TipConfigValidationResult;", "handleAuthorisationResponseData", "tlvBlob", "", "handleFinalConfirmationRequest", "confirm", "", "selectAccountType", "accountType", "Lcom/stripe/hardware/emv/AccountType;", "selectApplication", FirebaseAnalytics.Param.INDEX, "", "selectLanguage", "language", "setPinEntryButtons", "startPinEntry", "startReader", "configuration", "Lcom/stripe/hardware/ReaderConfiguration;", "(Lcom/stripe/hardware/ReaderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stopReader", TypedValues.CycleType.S_WAVE_PHASE, "Lcom/stripe/hardware/emv/CancellationPhase;", "(Lcom/stripe/hardware/emv/CancellationPhase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposPaymentCollector implements PaymentCollector, DelegatedDeviceController {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "BbposPaymentCollector";
    private final CardRemovalChecker cardRemovalChecker;
    private final Clock clock;
    private final CoroutineDispatcher coroutineDispatcher;
    private final CoroutineScope coroutineScope;
    private final Provider<ReaderFeatureFlags> featureFlagsProvider;
    private final Lazy<DeviceControllerWrapper> lazyController;
    private final HealthLogger<BbposDomain, BbposDomain.Builder, PaymentsScope, PaymentsScope.Builder> paymentHealthLogger;
    private final PinButtonsRepository pinButtonsRepository;
    private Job pinEntryJob;
    private final Lock pinEntryJobLock;
    private final PinPadAccessibilityChecker pinPadAccessibilityChecker;

    /* JADX INFO: compiled from: BbposPaymentCollector.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CancellationPhase.values().length];
            try {
                iArr[CancellationPhase.COLLECTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CancellationPhase.AUTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CancellationPhase.ACCOUNT_TYPE_SELECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CancellationPhase.APPLICATION_SELECTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CancellationPhase.PIN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CancellationPhase.FINAL_CONFIRMATION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.bbpos.hardware.BbposPaymentCollector$startReader$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BbposPaymentCollector.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.bbpos.hardware.BbposPaymentCollector", f = "BbposPaymentCollector.kt", i = {0, 0}, l = {65}, m = "startReader", n = {"this", "configuration"}, s = {"L$0", "L$1"})
    static final class C01791 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01791(Continuation<? super C01791> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return BbposPaymentCollector.this.startReader(null, this);
        }
    }

    public BbposPaymentCollector(Lazy<DeviceControllerWrapper> lazyController, Clock clock, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, HealthLoggerBuilder healthLoggerBuilder, PinButtonsRepository pinButtonsRepository, Provider<ReaderFeatureFlags> featureFlagsProvider, CardRemovalChecker cardRemovalChecker, PinPadAccessibilityChecker pinPadAccessibilityChecker) {
        Intrinsics.checkNotNullParameter(lazyController, "lazyController");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(pinButtonsRepository, "pinButtonsRepository");
        Intrinsics.checkNotNullParameter(featureFlagsProvider, "featureFlagsProvider");
        Intrinsics.checkNotNullParameter(cardRemovalChecker, "cardRemovalChecker");
        Intrinsics.checkNotNullParameter(pinPadAccessibilityChecker, "pinPadAccessibilityChecker");
        this.lazyController = lazyController;
        this.clock = clock;
        this.coroutineScope = coroutineScope;
        this.coroutineDispatcher = coroutineDispatcher;
        this.pinButtonsRepository = pinButtonsRepository;
        this.featureFlagsProvider = featureFlagsProvider;
        this.cardRemovalChecker = cardRemovalChecker;
        this.pinPadAccessibilityChecker = pinPadAccessibilityChecker;
        this.pinEntryJobLock = new ReentrantLock();
        this.paymentHealthLogger = new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, BbposDomain.class, BbposDomain.Builder.class, new Function2<HealthMetric.Builder, BbposDomain, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollector$paymentHealthLogger$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, BbposDomain bbposDomain) {
                invoke2(builder, bbposDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, BbposDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.bbpos = domain;
            }
        }), PaymentsScope.class, PaymentsScope.Builder.class, new Function2<BbposDomain.Builder, PaymentsScope, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollector$paymentHealthLogger$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(BbposDomain.Builder builder, PaymentsScope paymentsScope) {
                invoke2(builder, paymentsScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BbposDomain.Builder withScope, PaymentsScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.payments = scope;
            }
        }).build();
    }

    @Override // com.stripe.core.bbpos.hardware.DelegatedDeviceController
    public Clock getClock() {
        return this.clock;
    }

    @Override // com.stripe.core.bbpos.hardware.DelegatedDeviceController
    public Provider<ReaderFeatureFlags> getFeatureFlagsProvider() {
        return this.featureFlagsProvider;
    }

    @Override // com.stripe.core.bbpos.hardware.DelegatedDeviceController
    public PinPadAccessibilityChecker getPinPadAccessibilityChecker() {
        return this.pinPadAccessibilityChecker;
    }

    /* JADX INFO: compiled from: BbposPaymentCollector.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$Companion;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "getTAG", "()Ljava/lang/String;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getTAG() {
            return BbposPaymentCollector.TAG;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DeviceControllerWrapper getController() {
        return this.lazyController.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object startReader(com.stripe.hardware.ReaderConfiguration r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) throws java.lang.IllegalAccessException, java.lang.InstantiationException {
        /*
            r12 = this;
            boolean r0 = r14 instanceof com.stripe.core.bbpos.hardware.BbposPaymentCollector.C01791
            if (r0 == 0) goto L14
            r0 = r14
            com.stripe.core.bbpos.hardware.BbposPaymentCollector$startReader$1 r0 = (com.stripe.core.bbpos.hardware.BbposPaymentCollector.C01791) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            com.stripe.core.bbpos.hardware.BbposPaymentCollector$startReader$1 r0 = new com.stripe.core.bbpos.hardware.BbposPaymentCollector$startReader$1
            r0.<init>(r14)
        L19:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r13 = r0.L$1
            com.stripe.hardware.ReaderConfiguration r13 = (com.stripe.hardware.ReaderConfiguration) r13
            java.lang.Object r0 = r0.L$0
            com.stripe.core.bbpos.hardware.BbposPaymentCollector r0 = (com.stripe.core.bbpos.hardware.BbposPaymentCollector) r0
            kotlin.ResultKt.throwOnFailure(r14)
            goto L4d
        L32:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L3a:
            kotlin.ResultKt.throwOnFailure(r14)
            com.stripe.core.bbpos.hardware.CardRemovalChecker r14 = r12.cardRemovalChecker
            r0.L$0 = r12
            r0.L$1 = r13
            r0.label = r3
            java.lang.Object r14 = r14.stop(r0)
            if (r14 != r1) goto L4c
            return r1
        L4c:
            r0 = r12
        L4d:
            r4 = r13
            com.stripe.jvmcore.logging.HealthLogger<com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain$Builder, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope$Builder> r5 = r0.paymentHealthLogger
            com.stripe.core.bbpos.hardware.BbposPaymentCollector$startReader$2 r13 = new kotlin.jvm.functions.Function2<com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope.Builder, com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter, kotlin.Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollector.startReader.2
                static {
                    /*
                        com.stripe.core.bbpos.hardware.BbposPaymentCollector$startReader$2 r0 = new com.stripe.core.bbpos.hardware.BbposPaymentCollector$startReader$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.stripe.core.bbpos.hardware.BbposPaymentCollector$startReader$2) com.stripe.core.bbpos.hardware.BbposPaymentCollector.startReader.2.INSTANCE com.stripe.core.bbpos.hardware.BbposPaymentCollector$startReader$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.BbposPaymentCollector.AnonymousClass2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 2
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.BbposPaymentCollector.AnonymousClass2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ kotlin.Unit invoke(com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope.Builder r1, com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter r2) {
                    /*
                        r0 = this;
                        com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope$Builder r1 = (com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope.Builder) r1
                        com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter r2 = (com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter) r2
                        r0.invoke2(r1, r2)
                        kotlin.Unit r1 = kotlin.Unit.INSTANCE
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.BbposPaymentCollector.AnonymousClass2.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope.Builder r2, com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter r3) {
                    /*
                        r1 = this;
                        java.lang.String r0 = "$this$incrementCounter"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                        java.lang.String r0 = "event"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                        r2.start_reader = r3
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.BbposPaymentCollector.AnonymousClass2.invoke2(com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope$Builder, com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter):void");
                }
            }
            r9 = r13
            kotlin.jvm.functions.Function2 r9 = (kotlin.jvm.functions.Function2) r9
            r10 = 7
            r11 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            com.stripe.jvmcore.logging.HealthLogger.incrementCounter$default(r5, r6, r7, r8, r9, r10, r11)
            r2 = r0
            com.stripe.core.bbpos.hardware.DelegatedDeviceController r2 = (com.stripe.core.bbpos.hardware.DelegatedDeviceController) r2
            com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper r3 = r0.getController()
            java.lang.String r13 = "<get-controller>(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r13)
            r6 = 2
            r5 = 0
            com.stripe.core.bbpos.hardware.DelegatedDeviceController.startEmv$default(r2, r3, r4, r5, r6, r7)
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.hardware.BbposPaymentCollector.startReader(com.stripe.hardware.ReaderConfiguration, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public void checkCardUntilRemoved(final Set<? extends ReaderConfiguration.ReaderType> readerType) {
        Intrinsics.checkNotNullParameter(readerType, "readerType");
        this.cardRemovalChecker.checkCardUntilRemoved(new Function0<Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollector.checkCardUntilRemoved.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                BbposPaymentCollector.this.checkCard(CheckCardModeConverter.INSTANCE.toCheckCardMode(readerType));
            }
        });
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public Object stopReader(CancellationPhase cancellationPhase, Continuation<? super Unit> continuation) {
        switch (WhenMappings.$EnumSwitchMapping$0[cancellationPhase.ordinal()]) {
            case 1:
                getController().cancelCheckCard();
                break;
            case 2:
                getController().sendOnlineProcessResult(Messages.ONLINE_AUTHORIZATION_RESPONSE_DECLINE);
                break;
            case 3:
                getController().cancelSelectAccountType();
                break;
            case 4:
                getController().cancelSelectApplication();
                break;
            case 5:
                getController().cancelPinEntry();
                break;
            case 6:
                getController().sendFinalConfirmResult(false);
                break;
        }
        return Unit.INSTANCE;
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public void selectApplication(int index) throws IllegalAccessException, InstantiationException {
        HealthLogger.incrementCounter$default(this.paymentHealthLogger, null, null, null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollector.selectApplication.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.select_application = event;
            }
        }, 7, null);
        getController().selectApplication(index);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public void selectAccountType(AccountType accountType) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(accountType, "accountType");
        HealthLogger.incrementCounter$default(this.paymentHealthLogger, null, null, null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollector.selectAccountType.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.select_account_type = event;
            }
        }, 7, null);
        DeviceControllerWrapper controller = getController();
        Intrinsics.checkNotNullExpressionValue(controller, "<get-controller>(...)");
        BbposUtilsKt.selectAccountType(controller, accountType);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public void selectLanguage(String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        AndroidLog androidLog = AndroidLog.INSTANCE;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        androidLog.i(TAG2, "Selecting language is not supported in BBPOS. No-op.");
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public void setPinEntryButtons() {
        Lock lock = this.pinEntryJobLock;
        lock.lock();
        try {
            Job job = this.pinEntryJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            this.pinEntryJob = BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, this.coroutineDispatcher, null, new BbposPaymentCollector$setPinEntryButtons$1$1(this, null), 2, null);
            Unit unit = Unit.INSTANCE;
        } finally {
            lock.unlock();
        }
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public void handleAuthorisationResponseData(String tlvBlob) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(tlvBlob, "tlvBlob");
        HealthLogger.incrementCounter$default(this.paymentHealthLogger, null, null, null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollector.handleAuthorisationResponseData.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.handle_authorisation_response = event;
            }
        }, 7, null);
        getController().sendOnlineProcessResult(tlvBlob);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public void handleFinalConfirmationRequest(boolean confirm) throws IllegalAccessException, InstantiationException {
        HealthLogger.incrementCounter$default(this.paymentHealthLogger, null, null, null, new Function2<PaymentsScope.Builder, Counter, Unit>() { // from class: com.stripe.core.bbpos.hardware.BbposPaymentCollector.handleFinalConfirmationRequest.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentsScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentsScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.final_confirm = event;
            }
        }, 7, null);
        getController().sendFinalConfirmResult(confirm);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    @BluetoothUsbPinPadReaders
    public void collectTipAmount(TipConfigValidationResult tipConfigValidationResult) {
        Intrinsics.checkNotNullParameter(tipConfigValidationResult, "tipConfigValidationResult");
        AndroidLog androidLog = AndroidLog.INSTANCE;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        androidLog.i(TAG2, "enableInputAmount");
        DeviceControllerWrapper controller = getController();
        Intrinsics.checkNotNullExpressionValue(controller, "<get-controller>(...)");
        enableInputAmount(controller, tipConfigValidationResult);
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public void cancelCollectTipAmount() {
        AndroidLog androidLog = AndroidLog.INSTANCE;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        androidLog.i(TAG2, "disableInputAmount");
        getController().disableInputAmount();
    }

    @Override // com.stripe.hardware.paymentcollection.PaymentCollector
    public void startPinEntry() {
        AndroidLog androidLog = AndroidLog.INSTANCE;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        androidLog.i(TAG2, "requestPinEntry");
        boolean zIsPinPadAccessible = getPinPadAccessibilityChecker().isPinPadAccessible();
        DeviceControllerWrapper controller = getController();
        Integer numValueOf = Integer.valueOf((int) DelegatedDeviceControllerKt.getACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS());
        numValueOf.intValue();
        if (!zIsPinPadAccessible) {
            numValueOf = null;
        }
        controller.startPinEntry(zIsPinPadAccessible, numValueOf);
    }

    static /* synthetic */ void checkCard$default(BbposPaymentCollector bbposPaymentCollector, CheckCardMode checkCardMode, int i, Object obj) {
        if ((i & 1) != 0) {
            checkCardMode = CheckCardMode.INSERT;
        }
        bbposPaymentCollector.checkCard(checkCardMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkCard(CheckCardMode checkCardMode) {
        getController().checkCard(checkCardMode, 0);
    }
}
