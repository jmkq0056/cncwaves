package com.stripe.paymentcollection.metrics;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.hardware.emv.ApplicationId;
import com.stripe.hardware.emv.TransactionResult;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.paymentcollection.PaymentCollectionResultType;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.paymentcollection.EarlyTransactionAbortReason;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.paymentcollection.PaymentCollectionState;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.time.Clock;
import com.stripe.transaction.ChargeAttempt;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: DefaultEndToEndEventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 )2\u00020\u0001:\u0001)B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u0016H\u0002J,\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020#2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0%H\u0002J$\u0010'\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020#2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0%H\u0002J\b\u0010(\u001a\u00020\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\fj\u0002`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0013R\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\n¨\u0006*"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger;", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "clock", "Lcom/stripe/time/Clock;", "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/time/Clock;)V", "latencyPerCategory", "", "", "[Ljava/lang/Long;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope$Builder;", "Lcom/stripe/paymentcollection/metrics/EndToEndHealthLogger;", "startTime", "Ljava/lang/Long;", "startTimePerCategory", "categoryEnd", "", "category", "Lcom/stripe/paymentcollection/metrics/LatencyCategory;", "categoryStart", "end", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "measureUnknownLatencyIfNeeded", "sendEndToEndEvent", "totalDuration", "result", "Lcom/stripe/paymentcollection/metrics/Result;", "tagMap", "", "", "sendPerCategoryMeasurementEvents", "start", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultEndToEndEventLogger implements EndToEndEventLogger {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Log LOGGER = Log.INSTANCE.getLogger(EndToEndEventLogger.class);
    private final Clock clock;
    private final Long[] latencyPerCategory;
    private final HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, EndToEndScope, EndToEndScope.Builder> logger;
    private Long startTime;
    private Long[] startTimePerCategory;

    /* JADX INFO: compiled from: DefaultEndToEndEventLogger.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ EnumEntries<LatencyCategory> entries$0 = EnumEntriesKt.enumEntries(LatencyCategory.values());
    }

    public DefaultEndToEndEventLogger(HealthLoggerBuilder healthLoggerBuilder, Clock clock) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.clock = clock;
        this.logger = UtilsKt.buildsEndToEndHealthLogger(healthLoggerBuilder);
        int size = EntriesMappings.entries$0.size();
        Long[] lArr = new Long[size];
        for (int i = 0; i < size; i++) {
            lArr[i] = -1L;
        }
        this.startTimePerCategory = lArr;
        int size2 = EntriesMappings.entries$0.size();
        Long[] lArr2 = new Long[size2];
        for (int i2 = 0; i2 < size2; i2++) {
            lArr2[i2] = 0L;
        }
        this.latencyPerCategory = lArr2;
    }

    @Override // com.stripe.paymentcollection.metrics.EndToEndEventLogger
    public void start() {
        long jCurrentTimeMillis = this.clock.currentTimeMillis();
        ArraysKt.fill$default((Object[]) this.latencyPerCategory, (Object) 0L, 0, 0, 6, (Object) null);
        ArraysKt.fill$default((Object[]) this.startTimePerCategory, (Object) (-1L), 0, 0, 6, (Object) null);
        this.startTimePerCategory[LatencyCategory.UNKNOWN.ordinal()] = Long.valueOf(jCurrentTimeMillis);
        this.startTime = Long.valueOf(jCurrentTimeMillis);
    }

    @Override // com.stripe.paymentcollection.metrics.EndToEndEventLogger
    public void categoryStart(LatencyCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        if (this.startTimePerCategory[category.ordinal()].longValue() != -1) {
            return;
        }
        this.startTimePerCategory[category.ordinal()] = Long.valueOf(this.clock.currentTimeMillis());
        if (category != LatencyCategory.UNKNOWN) {
            measureUnknownLatencyIfNeeded();
        }
    }

    @Override // com.stripe.paymentcollection.metrics.EndToEndEventLogger
    public void categoryEnd(LatencyCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        long jLongValue = this.startTimePerCategory[category.ordinal()].longValue();
        if (jLongValue == -1) {
            return;
        }
        long jCurrentTimeMillis = this.clock.currentTimeMillis() - jLongValue;
        Long[] lArr = this.latencyPerCategory;
        int iOrdinal = category.ordinal();
        lArr[iOrdinal] = Long.valueOf(lArr[iOrdinal].longValue() + jCurrentTimeMillis);
        this.startTimePerCategory[category.ordinal()] = -1L;
        if (category != LatencyCategory.UNKNOWN) {
            measureUnknownLatencyIfNeeded();
        }
    }

    private final void measureUnknownLatencyIfNeeded() {
        for (Long l : this.startTimePerCategory) {
            if (l.longValue() != -1) {
                categoryEnd(LatencyCategory.UNKNOWN);
                return;
            }
        }
        categoryStart(LatencyCategory.UNKNOWN);
    }

    @Override // com.stripe.paymentcollection.metrics.EndToEndEventLogger
    public void end(PaymentCollectionData data, PaymentCollectionState state) throws IllegalAccessException, InstantiationException {
        Unit unit;
        String simpleName;
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(state, "state");
        Long l = this.startTime;
        if (l != null) {
            long jLongValue = l.longValue();
            Companion companion = INSTANCE;
            Result result = companion.getResult(data, state);
            PaymentCollectionState stateWhenCancelled = companion.getStateWhenCancelled(data);
            PaymentCollectionState stateWhenTimedOut = companion.getStateWhenTimedOut(data);
            CollectionFailureReason collectionFailureReason$impl_release = companion.getCollectionFailureReason$impl_release(data, result);
            HashMap mapGenerateCommonTags$default = UtilsKt.generateCommonTags$default(data, (LatencyCategory) null, 2, (Object) null);
            CollectionFailureReason collectionFailureReason = collectionFailureReason$impl_release;
            String simpleName2 = "MagStripeAllowReason";
            if (collectionFailureReason != null) {
                if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(CollectionFailureReason.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                    simpleName = "MagStripeAllowReason";
                } else {
                    simpleName = Reflection.getOrCreateKotlinClass(CollectionFailureReason.class).getSimpleName();
                    Intrinsics.checkNotNull(simpleName);
                }
                mapGenerateCommonTags$default.put(simpleName, collectionFailureReason.name());
            }
            ApplicationId applicationId = UtilsKt.getApplicationId(data);
            if (applicationId != null) {
                if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(ApplicationId.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                    simpleName2 = Reflection.getOrCreateKotlinClass(ApplicationId.class).getSimpleName();
                    Intrinsics.checkNotNull(simpleName2);
                }
                mapGenerateCommonTags$default.put(simpleName2, applicationId.name());
            }
            if (stateWhenCancelled != null) {
                mapGenerateCommonTags$default.put("stateWhenCancelled", stateWhenCancelled.name());
            }
            if (stateWhenTimedOut != null) {
                mapGenerateCommonTags$default.put("stateWhenTimedOut", stateWhenTimedOut.name());
            }
            sendEndToEndEvent(this.clock.currentTimeMillis() - jLongValue, result, mapGenerateCommonTags$default);
            sendPerCategoryMeasurementEvents(result, mapGenerateCommonTags$default);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            LOGGER.e("No open log to end.", new Pair[0]);
        }
        this.startTime = null;
    }

    private final void sendEndToEndEvent(long totalDuration, Result result, Map<String, String> tagMap) throws IllegalAccessException, InstantiationException {
        HealthLogger.recordTimer$default(this.logger, totalDuration, ResultKt.toOutcome(result), tagMap, null, new Function2<EndToEndScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultEndToEndEventLogger.sendEndToEndEvent.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(EndToEndScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(EndToEndScope.Builder recordTimer, Timer event) {
                Intrinsics.checkNotNullParameter(recordTimer, "$this$recordTimer");
                Intrinsics.checkNotNullParameter(event, "event");
                recordTimer.payment_collection = event;
            }
        }, 8, null);
        LOGGER.i("Payment collection metric ending in " + totalDuration + " ms: result " + result + ", tagMap " + tagMap, new Pair[0]);
    }

    private final void sendPerCategoryMeasurementEvents(Result result, Map<String, String> tagMap) throws IllegalAccessException, InstantiationException {
        String simpleName;
        for (LatencyCategory latencyCategory : EntriesMappings.entries$0) {
            categoryEnd(latencyCategory);
            long jLongValue = this.latencyPerCategory[latencyCategory.ordinal()].longValue();
            LatencyCategory latencyCategory2 = latencyCategory;
            if (latencyCategory2 != null) {
                if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(LatencyCategory.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                    simpleName = "MagStripeAllowReason";
                } else {
                    simpleName = Reflection.getOrCreateKotlinClass(LatencyCategory.class).getSimpleName();
                    Intrinsics.checkNotNull(simpleName);
                }
                tagMap.put(simpleName, latencyCategory2.name());
            }
            Map<String, String> map = tagMap;
            HealthLogger.recordTimer$default(this.logger, jLongValue, ResultKt.toOutcome(result), map, null, new Function2<EndToEndScope.Builder, Timer, Unit>() { // from class: com.stripe.paymentcollection.metrics.DefaultEndToEndEventLogger.sendPerCategoryMeasurementEvents.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(EndToEndScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(EndToEndScope.Builder recordTimer, Timer event) {
                    Intrinsics.checkNotNullParameter(recordTimer, "$this$recordTimer");
                    Intrinsics.checkNotNullParameter(event, "event");
                    recordTimer.sub_category_measurement = event;
                }
            }, 8, null);
            LOGGER.i("Category " + latencyCategory + " took " + jLongValue + " ms.", new Pair[0]);
            tagMap = map;
        }
    }

    /* JADX INFO: compiled from: DefaultEndToEndEventLogger.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\b\u000bJ\u0018\u0010\f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\u0013\u001a\u0004\u0018\u00010\u0006*\u00020\u0014H\u0002J\f\u0010\u0013\u001a\u00020\u0006*\u00020\u0015H\u0007J\f\u0010\u0013\u001a\u0004\u0018\u00010\u0006*\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/paymentcollection/metrics/DefaultEndToEndEventLogger$Companion;", "", "()V", "LOGGER", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "getCollectionFailureReason", "Lcom/stripe/paymentcollection/metrics/CollectionFailureReason;", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "result", "Lcom/stripe/paymentcollection/metrics/Result;", "getCollectionFailureReason$impl_release", "getResult", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/paymentcollection/PaymentCollectionState;", "getStateWhenCancelled", "getStateWhenTimedOut", "getTransactionRequestType", "Lcom/stripe/hardware/paymentcollection/TransactionType;", "toCollectionFailureReason", "Lcom/stripe/hardware/emv/TransactionResult$Result;", "Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;", "Lcom/stripe/transaction/ChargeAttempt;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: DefaultEndToEndEventLogger.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;

            static {
                int[] iArr = new int[EarlyTransactionAbortReason.values().length];
                try {
                    iArr[EarlyTransactionAbortReason.CHIP_CARD_INITIALIZATION_FAILED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EarlyTransactionAbortReason.EMPTY_CANDIDATE_LIST.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[EarlyTransactionAbortReason.PIN_ENTRY_CANCELED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[EarlyTransactionAbortReason.PIN_ENTRY_TIMED_OUT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[TransactionResult.Result.values().length];
                try {
                    iArr2[TransactionResult.Result.APPROVED.ordinal()] = 1;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr2[TransactionResult.Result.CONTACTLESS_LIMIT_EXCEEDED.ordinal()] = 2;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr2[TransactionResult.Result.DECLINED.ordinal()] = 3;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr2[TransactionResult.Result.TERMINATED.ordinal()] = 4;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr2[TransactionResult.Result.TIMEOUT.ordinal()] = 5;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr2[TransactionResult.Result.CANCELED.ordinal()] = 6;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr2[TransactionResult.Result.EMPTY_CANDIDATE_LIST.ordinal()] = 7;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr2[TransactionResult.Result.CARD_BLOCKED.ordinal()] = 8;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    iArr2[TransactionResult.Result.DEVICE_FAILURE.ordinal()] = 9;
                } catch (NoSuchFieldError unused13) {
                }
                try {
                    iArr2[TransactionResult.Result.ICC_CARD_REMOVED.ordinal()] = 10;
                } catch (NoSuchFieldError unused14) {
                }
                try {
                    iArr2[TransactionResult.Result.CHECK_MOBILE_DEVICE.ordinal()] = 11;
                } catch (NoSuchFieldError unused15) {
                }
                try {
                    iArr2[TransactionResult.Result.INSERT_OR_SWIPE_REQUIRED.ordinal()] = 12;
                } catch (NoSuchFieldError unused16) {
                }
                try {
                    iArr2[TransactionResult.Result.MULTIPLE_CARDS_DETECTED.ordinal()] = 13;
                } catch (NoSuchFieldError unused17) {
                }
                try {
                    iArr2[TransactionResult.Result.MOBILE_WALLET_TOO_MANY_TAPS.ordinal()] = 14;
                } catch (NoSuchFieldError unused18) {
                }
                try {
                    iArr2[TransactionResult.Result.CARD_STILL_INSERTED.ordinal()] = 15;
                } catch (NoSuchFieldError unused19) {
                }
                $EnumSwitchMapping$1 = iArr2;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Result getResult(PaymentCollectionData data, PaymentCollectionState state) {
            if (state == PaymentCollectionState.FINISHED && data.getCollectionResultType() == PaymentCollectionResultType.SUCCESS) {
                return Result.SUCCESS;
            }
            return Result.FAILURE;
        }

        private final TransactionType getTransactionRequestType(PaymentCollectionData data) {
            return data.getTransactionType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final PaymentCollectionState getStateWhenCancelled(PaymentCollectionData data) {
            return data.getStateWhenCancelled();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final PaymentCollectionState getStateWhenTimedOut(PaymentCollectionData data) {
            return data.getStateWhenTimedOut();
        }

        public final CollectionFailureReason getCollectionFailureReason$impl_release(PaymentCollectionData data, Result result) {
            CollectionFailureReason collectionFailureReason;
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(result, "result");
            if (result == Result.SUCCESS) {
                return null;
            }
            EarlyTransactionAbortReason earlyTransactionAbortReason = data.getEarlyTransactionAbortReason();
            ChargeAttempt chargeAttempt = data.getChargeAttempt();
            TransactionResult.Result hardwareTransactionResult = data.getHardwareTransactionResult();
            if (data.isCancelled()) {
                collectionFailureReason = CollectionFailureReason.MERCHANT_CANCELLED;
            } else if (data.isTimedOut()) {
                collectionFailureReason = CollectionFailureReason.TIMEOUT;
            } else if (earlyTransactionAbortReason != null) {
                collectionFailureReason = toCollectionFailureReason(earlyTransactionAbortReason);
            } else {
                if ((chargeAttempt != null ? toCollectionFailureReason(chargeAttempt) : null) != null) {
                    collectionFailureReason = toCollectionFailureReason(chargeAttempt);
                } else if (hardwareTransactionResult != null) {
                    collectionFailureReason = toCollectionFailureReason(hardwareTransactionResult);
                } else {
                    collectionFailureReason = CollectionFailureReason.UNKNOWN;
                }
            }
            return collectionFailureReason == null ? CollectionFailureReason.UNKNOWN : collectionFailureReason;
        }

        public final CollectionFailureReason toCollectionFailureReason(ChargeAttempt chargeAttempt) {
            Intrinsics.checkNotNullParameter(chargeAttempt, "<this>");
            if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.DeclinedRefund ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.AlreadyRefunded) {
                return CollectionFailureReason.ONLINE_CONFIRMATION_DECLINED;
            }
            if (Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownChargeResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownRefundResult.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.UnknownReusableCardResult.INSTANCE) ? true : chargeAttempt instanceof ChargeAttempt.IncompleteAttempt) {
                return CollectionFailureReason.ONLINE_CONFIRMATION_UNKNOWN;
            }
            if (chargeAttempt instanceof ChargeAttempt.ExtendedAttempt) {
                return CollectionFailureReason.SCA_NEEDED;
            }
            if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.InvalidCollectedData) {
                return CollectionFailureReason.INVALID_COLLECTED_DATA;
            }
            if (chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulRefund ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulReusableCard.INSTANCE) ? true : Intrinsics.areEqual(chargeAttempt, ChargeAttempt.CompletedAttempt.SuccessfulSetupIntent.INSTANCE) ? true : chargeAttempt instanceof ChargeAttempt.PendingNextActionAttempt ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulNonCardCharge ? true : chargeAttempt instanceof ChargeAttempt.CompletedAttempt.SuccessfulCollectedData) {
                return null;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final CollectionFailureReason toCollectionFailureReason(EarlyTransactionAbortReason earlyTransactionAbortReason) {
            Intrinsics.checkNotNullParameter(earlyTransactionAbortReason, "<this>");
            int i = WhenMappings.$EnumSwitchMapping$0[earlyTransactionAbortReason.ordinal()];
            if (i == 1) {
                return CollectionFailureReason.CHIP_CARD_INITIALIZATION_FAILED;
            }
            if (i == 2) {
                return CollectionFailureReason.EMPTY_CANDIDATE_LIST;
            }
            if (i == 3) {
                return CollectionFailureReason.PIN_ENTRY_CANCELED;
            }
            if (i == 4) {
                return CollectionFailureReason.PIN_ENTRY_TIMED_OUT;
            }
            throw new NoWhenBranchMatchedException();
        }

        private final CollectionFailureReason toCollectionFailureReason(TransactionResult.Result result) {
            switch (WhenMappings.$EnumSwitchMapping$1[result.ordinal()]) {
                case 1:
                    return null;
                case 2:
                    return CollectionFailureReason.CONTACTLESS_LIMIT_EXCEEDED;
                case 3:
                    return CollectionFailureReason.READER_DECLINED;
                case 4:
                    return CollectionFailureReason.READER_TERMINATED;
                case 5:
                    return CollectionFailureReason.TIMEOUT;
                case 6:
                    return CollectionFailureReason.MERCHANT_CANCELLED;
                case 7:
                    return CollectionFailureReason.EMPTY_CANDIDATE_LIST;
                case 8:
                    return CollectionFailureReason.CARD_BLOCKED;
                case 9:
                    return CollectionFailureReason.DEVICE_FAILURE;
                case 10:
                    return CollectionFailureReason.ICC_CARD_REMOVED;
                case 11:
                    return CollectionFailureReason.CHECK_MOBILE_DEVICE;
                case 12:
                    return CollectionFailureReason.INSERT_OR_SWIPE_REQUIRED;
                case 13:
                    return CollectionFailureReason.MULTIPLE_CARDS_DETECTED;
                case 14:
                    return CollectionFailureReason.MOBILE_WALLET_TOO_MANY_TAPS;
                case 15:
                    return CollectionFailureReason.CARD_STILL_INSERTED;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    }
}
