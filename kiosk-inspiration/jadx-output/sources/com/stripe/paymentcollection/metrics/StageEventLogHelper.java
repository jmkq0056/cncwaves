package com.stripe.paymentcollection.metrics;

import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.loggingmodels.Outcome;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.paymentcollection.manualentry.ManualEntryData;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StageEventLogHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 ,*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\b\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\b\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u00020\u0007:\u0001,BA\u0012\u001e\u0010\b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\b\u0010\u0016\u001a\u00020\u0017H\u0017JW\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001a2E\u0010\u001b\u001aA\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\"\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001d0!0\u001cH\u0004JW\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020#2E\u0010\u001b\u001aA\u0012\u001f\u0012\u001d\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\"\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001d0!0\u001cH\u0004JM\u0010$\u001a\u00020\u00172\u0014\b\u0002\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0&2-\u0010'\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00170(j\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020)`*¢\u0006\u0002\b+H\u0004R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0013R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "eventName", "", "endToEndEventLogger", "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;", "latencyCategory", "Lcom/stripe/paymentcollection/metrics/LatencyCategory;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/lang/String;Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;Lcom/stripe/paymentcollection/metrics/LatencyCategory;)V", "isOpen", "", "()Z", "openLog", "Lcom/stripe/jvmcore/logging/PendingTimer;", "cleanUp", "", "closeLogHelper", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "outcomeAndTags", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "tagMap", "Lkotlin/Pair;", "Lcom/stripe/loggingmodels/Outcome;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;", "openLogHelper", "tags", "", "timerSetter", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "Lcom/stripe/jvmcore/logging/EventSetter;", "Lkotlin/ExtensionFunctionType;", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class StageEventLogHelper<D extends Message<D, DB>, DB extends Message.Builder<D, DB>, S extends Message<S, SB>, SB extends Message.Builder<S, SB>> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Log LOGGER = Log.INSTANCE.getLogger(StageEventLogger.class);
    private final EndToEndEventLogger endToEndEventLogger;
    private final String eventName;
    private final LatencyCategory latencyCategory;
    private final HealthLogger<D, DB, S, SB> logger;
    private PendingTimer openLog;

    public StageEventLogHelper(HealthLogger<D, DB, S, SB> logger, String eventName, EndToEndEventLogger endToEndEventLogger, LatencyCategory latencyCategory) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(endToEndEventLogger, "endToEndEventLogger");
        this.logger = logger;
        this.eventName = eventName;
        this.endToEndEventLogger = endToEndEventLogger;
        this.latencyCategory = latencyCategory;
    }

    public /* synthetic */ StageEventLogHelper(HealthLogger healthLogger, String str, EndToEndEventLogger endToEndEventLogger, LatencyCategory latencyCategory, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(healthLogger, str, endToEndEventLogger, (i & 8) != 0 ? null : latencyCategory);
    }

    protected final boolean isOpen() {
        return this.openLog != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void openLogHelper$default(StageEventLogHelper stageEventLogHelper, Map map, Function2 function2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openLogHelper");
        }
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        stageEventLogHelper.openLogHelper(map, function2);
    }

    protected final void openLogHelper(Map<String, String> tags, Function2<? super SB, ? super Timer, Unit> timerSetter) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(timerSetter, "timerSetter");
        LOGGER.i("Starting event " + this.eventName + " with latencyCategory " + this.latencyCategory, new Pair[0]);
        this.openLog = this.logger.startTimer(tags, timerSetter);
        LatencyCategory latencyCategory = this.latencyCategory;
        if (latencyCategory != null) {
            this.endToEndEventLogger.categoryStart(latencyCategory);
        }
    }

    public void cleanUp() {
        LatencyCategory latencyCategory = this.latencyCategory;
        if (latencyCategory != null) {
            this.endToEndEventLogger.categoryEnd(latencyCategory);
        }
        this.openLog = null;
    }

    protected final void closeLogHelper(PaymentCollectionData data, Function1<? super Map<String, String>, ? extends Pair<? extends Outcome, ? extends Map<String, String>>> outcomeAndTags) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(outcomeAndTags, "outcomeAndTags");
        PendingTimer pendingTimer = this.openLog;
        if (pendingTimer != null) {
            LatencyCategory latencyCategory = this.latencyCategory;
            if (latencyCategory != null) {
                this.endToEndEventLogger.categoryEnd(latencyCategory);
            }
            Pair<? extends Outcome, ? extends Map<String, String>> pairInvoke = outcomeAndTags.invoke(UtilsKt.generateCommonTags(data, this.latencyCategory));
            Outcome outcomeComponent1 = pairInvoke.component1();
            Map<String, String> mapComponent2 = pairInvoke.component2();
            LOGGER.i("Reporting " + this.eventName + " outcome " + outcomeComponent1 + " tags " + mapComponent2, new Pair[0]);
            HealthLogger.endTimer$default(this.logger, pendingTimer, outcomeComponent1, mapComponent2, null, 8, null);
            this.openLog = null;
        }
    }

    protected final void closeLogHelper(ManualEntryData data, Function1<? super Map<String, String>, ? extends Pair<? extends Outcome, ? extends Map<String, String>>> outcomeAndTags) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(outcomeAndTags, "outcomeAndTags");
        PendingTimer pendingTimer = this.openLog;
        if (pendingTimer != null) {
            LatencyCategory latencyCategory = this.latencyCategory;
            if (latencyCategory != null) {
                this.endToEndEventLogger.categoryEnd(latencyCategory);
            }
            Pair<? extends Outcome, ? extends Map<String, String>> pairInvoke = outcomeAndTags.invoke(UtilsKt.generateCommonTags(data, this.latencyCategory));
            Outcome outcomeComponent1 = pairInvoke.component1();
            Map<String, String> mapComponent2 = pairInvoke.component2();
            LOGGER.i("Reporting " + this.eventName + " outcome " + outcomeComponent1 + " tags " + mapComponent2, new Pair[0]);
            HealthLogger.endTimer$default(this.logger, pendingTimer, outcomeComponent1, mapComponent2, null, 8, null);
            this.openLog = null;
        }
    }

    /* JADX INFO: compiled from: StageEventLogHelper.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/paymentcollection/metrics/StageEventLogHelper$Companion;", "", "()V", "LOGGER", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "getLOGGER", "()Lcom/stripe/jvmcore/logging/terminal/log/Log;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Log getLOGGER() {
            return StageEventLogHelper.LOGGER;
        }
    }
}
