package com.stripe.paymentcollection.metrics;

import com.stripe.currency.Amount;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.magstripe.MagStripeReadSuccess;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.Outcome;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.restclient.IntegrationType;
import com.stripe.transaction.ChargeAttempt;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: DefaultDiscreteEventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0016\u0010\u001e\u001a\u00020\u00142\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016J\u0010\u0010\"\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001c\u0010#\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0006\u0012\u0004\u0018\u00010&0$*\u0004\u0018\u00010'H\u0002R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\bj\u0002`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u0002`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/stripe/paymentcollection/metrics/DefaultDiscreteEventLogger;", "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "healthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;", "Lcom/stripe/paymentcollection/metrics/DiscreteHealthLogger;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "logAllowingMagStripe", "", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "logNonCardPaymentMethodConfirmResult", "logOnlineConfirmResult", "logPartialAuthApproved", "authorizedAmount", "", "logPassthroughSwiped", "logPrematureCardRemoval", "logReaderInterfaceChanged", "readerTypes", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "logSurcharge", "toOnlineConfirmFailureReason", "Lkotlin/Pair;", "Lcom/stripe/paymentcollection/metrics/Result;", "Lcom/stripe/paymentcollection/metrics/OnlineConfirmationFailureReason;", "Lcom/stripe/transaction/ChargeAttempt;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultDiscreteEventLogger implements DiscreteEventLogger {
    private final HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, DiscreteScope, DiscreteScope.Builder> healthLogger;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public DefaultDiscreteEventLogger(HealthLoggerBuilder healthLoggerBuilder, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.healthLogger = UtilsKt.buildsDiscreteHealthLogger(healthLoggerBuilder);
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(DiscreteEventLogger.class));
    }

    @Override // com.stripe.paymentcollection.metrics.DiscreteEventLogger
    public void logAllowingMagStripe(PaymentCollectionData data) throws IllegalAccessException, InstantiationException {
        String simpleName;
        Intrinsics.checkNotNullParameter(data, "data");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        MagStripePaymentCollectionAuthority magStripePaymentCollectionAuthority = data.getMagStripePaymentCollectionAuthority();
        if (magStripePaymentCollectionAuthority != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            linkedHashMap.put(simpleName, magStripePaymentCollectionAuthority.name());
        }
        HealthLogger.incrementCounter$default(this.healthLogger, Outcome.Ok.INSTANCE, linkedHashMap, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultDiscreteEventLogger.logAllowingMagStripe.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.allowing_mag_stripe = event;
            }
        }, 4, null);
        this.logger.i(" magStripeAllowReason " + data + ".magStripePaymentCollectionAuthority", new Pair[0]);
    }

    @Override // com.stripe.paymentcollection.metrics.DiscreteEventLogger
    public void logPrematureCardRemoval(PaymentCollectionData data) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(data, "data");
        this.logger.i("logPrematureCardRemoval", new Pair[0]);
        HealthLogger.incrementCounter$default(this.healthLogger, null, null, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultDiscreteEventLogger.logPrematureCardRemoval.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.premature_card_removal = event;
            }
        }, 7, null);
    }

    @Override // com.stripe.paymentcollection.metrics.DiscreteEventLogger
    public void logReaderInterfaceChanged(Set<? extends ReaderConfiguration.ReaderType> readerTypes) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(readerTypes, "readerTypes");
        String strJoinToString$default = CollectionsKt.joinToString$default(readerTypes, "_", null, null, 0, null, null, 62, null);
        this.logger.i("logReaderInterfaceChanged readerTypes " + strJoinToString$default, new Pair[0]);
        HealthLogger.incrementCounter$default(this.healthLogger, Outcome.Ok.INSTANCE, MapsKt.mapOf(TuplesKt.to("ReaderInterfaces", strJoinToString$default)), null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultDiscreteEventLogger.logReaderInterfaceChanged.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.reader_interface_changed = event;
            }
        }, 4, null);
    }

    @Override // com.stripe.paymentcollection.metrics.DiscreteEventLogger
    public void logOnlineConfirmResult(PaymentCollectionData data) throws IllegalAccessException, InstantiationException {
        Pair<Result, OnlineConfirmationFailureReason> onlineConfirmFailureReason;
        String simpleName;
        String simpleName2;
        Intrinsics.checkNotNullParameter(data, "data");
        PaymentMethodType paymentMethodType = UtilsKt.getPaymentMethodType(data);
        TransactionType transactionType = data.getTransactionType();
        if (data.isTimedOut()) {
            onlineConfirmFailureReason = new Pair<>(Result.FAILURE, OnlineConfirmationFailureReason.TIMEOUT);
        } else if (data.isCancelled()) {
            onlineConfirmFailureReason = new Pair<>(Result.FAILURE, OnlineConfirmationFailureReason.MERCHANT_CANCELLED);
        } else {
            onlineConfirmFailureReason = toOnlineConfirmFailureReason(data.getChargeAttempt());
        }
        Result resultComponent1 = onlineConfirmFailureReason.component1();
        OnlineConfirmationFailureReason onlineConfirmationFailureReasonComponent2 = onlineConfirmFailureReason.component2();
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        PaymentMethodType paymentMethodType2 = paymentMethodType;
        String simpleName3 = "MagStripeAllowReason";
        if (paymentMethodType2 != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(PaymentMethodType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName2 = "MagStripeAllowReason";
            } else {
                simpleName2 = Reflection.getOrCreateKotlinClass(PaymentMethodType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName2);
            }
            mapCreateMapBuilder.put(simpleName2, paymentMethodType2.name());
        }
        TransactionType transactionType2 = transactionType;
        if (transactionType2 != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(TransactionType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(TransactionType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            mapCreateMapBuilder.put(simpleName, transactionType2.name());
        }
        OnlineConfirmationFailureReason onlineConfirmationFailureReason = onlineConfirmationFailureReasonComponent2;
        if (onlineConfirmationFailureReason != null) {
            if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(OnlineConfirmationFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName3 = Reflection.getOrCreateKotlinClass(OnlineConfirmationFailureReason.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName3);
            }
            mapCreateMapBuilder.put(simpleName3, onlineConfirmationFailureReason.name());
        }
        Map mapBuild = MapsKt.build(mapCreateMapBuilder);
        this.logger.i("logOnlineConfirmResult", TuplesKt.to("result", resultComponent1), TuplesKt.to("tags", mapBuild));
        HealthLogger.incrementCounter$default(this.healthLogger, ResultKt.toOutcome(resultComponent1), mapBuild, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultDiscreteEventLogger.logOnlineConfirmResult.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.online_confirmation_result = event;
            }
        }, 4, null);
    }

    @Override // com.stripe.paymentcollection.metrics.DiscreteEventLogger
    public void logNonCardPaymentMethodConfirmResult(PaymentCollectionData data) throws IllegalAccessException, InstantiationException {
        Pair<Result, OnlineConfirmationFailureReason> onlineConfirmFailureReason;
        String simpleName;
        Intrinsics.checkNotNullParameter(data, "data");
        ChargeAttempt chargeAttempt = data.getChargeAttempt();
        String simpleName2 = chargeAttempt instanceof ChargeAttempt.CompletedAttempt ? Reflection.getOrCreateKotlinClass(chargeAttempt.getClass()).getSimpleName() : null;
        if (data.isTimedOut()) {
            onlineConfirmFailureReason = new Pair<>(Result.FAILURE, OnlineConfirmationFailureReason.TIMEOUT);
        } else if (data.isCancelled()) {
            onlineConfirmFailureReason = new Pair<>(Result.FAILURE, OnlineConfirmationFailureReason.MERCHANT_CANCELLED);
        } else {
            onlineConfirmFailureReason = toOnlineConfirmFailureReason(data.getChargeAttempt());
        }
        Result resultComponent1 = onlineConfirmFailureReason.component1();
        OnlineConfirmationFailureReason onlineConfirmationFailureReasonComponent2 = onlineConfirmFailureReason.component2();
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        OnlineConfirmationFailureReason onlineConfirmationFailureReason = onlineConfirmationFailureReasonComponent2;
        String simpleName3 = "MagStripeAllowReason";
        if (onlineConfirmationFailureReason != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(OnlineConfirmationFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(OnlineConfirmationFailureReason.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            mapCreateMapBuilder.put(simpleName, onlineConfirmationFailureReason.name());
        }
        com.stripe.stripeterminal.external.models.PaymentMethodType selectedNonCardPaymentMethod = data.getSelectedNonCardPaymentMethod();
        if (selectedNonCardPaymentMethod != null) {
            if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.PaymentMethodType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName3 = Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.PaymentMethodType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName3);
            }
            mapCreateMapBuilder.put(simpleName3, selectedNonCardPaymentMethod.name());
        }
        if (simpleName2 != null) {
            mapCreateMapBuilder.put("AlreadyCompletedType", simpleName2);
        }
        Map mapBuild = MapsKt.build(mapCreateMapBuilder);
        this.logger.i("logNonCardPaymentMethodConfirmResult", TuplesKt.to("result", resultComponent1), TuplesKt.to("tags", mapBuild));
        HealthLogger.incrementCounter$default(this.healthLogger, ResultKt.toOutcome(resultComponent1), mapBuild, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultDiscreteEventLogger.logNonCardPaymentMethodConfirmResult.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.non_card_payment_method_confirmation_result = event;
            }
        }, 4, null);
    }

    @Override // com.stripe.paymentcollection.metrics.DiscreteEventLogger
    public void logPassthroughSwiped(PaymentCollectionData data) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(data, "data");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("SwipeResult", data.getMagStripeReadResult() instanceof MagStripeReadSuccess ? "Success" : "Failure");
        linkedHashMap.put("TransactionType", data.getTransactionType().name());
        HealthLogger.incrementCounter$default(this.healthLogger, Outcome.Ok.INSTANCE, linkedHashMap, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultDiscreteEventLogger.logPassthroughSwiped.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.magstripe_swipe_attempted = event;
            }
        }, 4, null);
    }

    @Override // com.stripe.paymentcollection.metrics.DiscreteEventLogger
    public void logSurcharge(PaymentCollectionData data) throws IllegalAccessException, InstantiationException {
        String simpleName;
        Intrinsics.checkNotNullParameter(data, "data");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        IntegrationType integrationType = data.getIntegrationType();
        if (integrationType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(IntegrationType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(IntegrationType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            linkedHashMap.put(simpleName, integrationType.name());
        }
        HealthLogger.incrementCounter$default(this.healthLogger, null, linkedHashMap, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultDiscreteEventLogger.logSurcharge.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.surcharge = event;
            }
        }, 5, null);
    }

    @Override // com.stripe.paymentcollection.metrics.DiscreteEventLogger
    public void logPartialAuthApproved(PaymentCollectionData data, long authorizedAmount) throws IllegalAccessException, InstantiationException {
        String simpleName;
        Intrinsics.checkNotNullParameter(data, "data");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        IntegrationType integrationType = data.getIntegrationType();
        if (integrationType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(IntegrationType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(IntegrationType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            linkedHashMap.put(simpleName, integrationType.name());
        }
        Amount tipAmount = data.getTipAmount();
        linkedHashMap.put("TipGreaterThanAuthorized", String.valueOf((tipAmount != null ? tipAmount.getValue() : 0L) > authorizedAmount));
        HealthLogger.incrementCounter$default(this.healthLogger, null, linkedHashMap, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultDiscreteEventLogger.logPartialAuthApproved.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                invoke2(builder, counter);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DiscreteScope.Builder incrementCounter, Counter event) {
                Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                Intrinsics.checkNotNullParameter(event, "event");
                incrementCounter.partial_auth_approved = event;
            }
        }, 5, null);
    }

    private final Pair<Result, OnlineConfirmationFailureReason> toOnlineConfirmFailureReason(ChargeAttempt chargeAttempt) {
        if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulRefund ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulReusableCard.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulSetupIntent.INSTANCE) ? true : chargeAttempt instanceof ChargeAttempt.PendingNextActionAttempt ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulNonCardCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCollectedData ? true : chargeAttempt instanceof ChargeAttempt.IncompleteAttempt) {
            return new Pair<>(Result.SUCCESS, null);
        }
        if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedRefund ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.AlreadyRefunded ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.InvalidCollectedData) {
            return new Pair<>(Result.FAILURE, OnlineConfirmationFailureReason.DECLINED);
        }
        if (Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownRefundResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownReusableCardResult.INSTANCE)) {
            return new Pair<>(Result.FAILURE, OnlineConfirmationFailureReason.UNKNOWN_NETWORK_FAILURE);
        }
        if (chargeAttempt instanceof ChargeAttempt.ExtendedAttempt) {
            return new Pair<>(Result.FAILURE, OnlineConfirmationFailureReason.SCA_NEEDED);
        }
        if (chargeAttempt == null) {
            return new Pair<>(Result.FAILURE, OnlineConfirmationFailureReason.UNKNOWN);
        }
        throw new NoWhenBranchMatchedException();
    }
}
