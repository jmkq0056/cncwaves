package com.stripe.jvmcore.logging;

import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import com.stripe.loggingmodels.Outcome;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TimerMetricLogHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\b\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\b\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0007B%\u0012\u001e\u0010\b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\t¢\u0006\u0002\u0010\nJ.\u0010\r\u001a\u00020\u000e2$\u0010\u000f\u001a \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u0012\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u00130\u00110\u0010H\u0016JK\u0010\u0015\u001a\u00020\u000e2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u00132-\u0010\u0017\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000e0\u0018j\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u0019`\u001a¢\u0006\u0002\b\u001bH\u0016R&\u0010\b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/jvmcore/logging/DefaultTimerMetricLogHelper;", "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "Lcom/stripe/jvmcore/logging/TimerMetricLogHelper;", "logger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;)V", "openLog", "Lcom/stripe/jvmcore/logging/PendingTimer;", "closeLogHelper", "", "outcomeAndTags", "Lkotlin/Function0;", "Lkotlin/Pair;", "Lcom/stripe/loggingmodels/Outcome;", "", "", "openLogHelper", "tags", "eventSetter", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "Lcom/stripe/jvmcore/logging/EventSetter;", "Lkotlin/ExtensionFunctionType;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultTimerMetricLogHelper<D extends Message<D, DB>, DB extends Message.Builder<D, DB>, S extends Message<S, SB>, SB extends Message.Builder<S, SB>> implements TimerMetricLogHelper<D, DB, S, SB> {
    private final HealthLogger<D, DB, S, SB> logger;
    private PendingTimer openLog;

    public DefaultTimerMetricLogHelper(HealthLogger<D, DB, S, SB> logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    @Override // com.stripe.jvmcore.logging.TimerMetricLogHelper
    public void openLogHelper(Map<String, String> tags, Function2<? super SB, ? super Timer, Unit> eventSetter) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(eventSetter, "eventSetter");
        this.openLog = this.logger.startTimer(tags, eventSetter);
    }

    @Override // com.stripe.jvmcore.logging.TimerMetricLogHelper
    public void closeLogHelper(Function0<? extends Pair<? extends Outcome, ? extends Map<String, String>>> outcomeAndTags) {
        Intrinsics.checkNotNullParameter(outcomeAndTags, "outcomeAndTags");
        PendingTimer pendingTimer = this.openLog;
        Pair<? extends Outcome, ? extends Map<String, String>> pairInvoke = outcomeAndTags.invoke();
        HealthLogger.endTimer$default(this.logger, pendingTimer, pairInvoke.component1(), pairInvoke.component2(), null, 8, null);
        this.openLog = null;
    }
}
