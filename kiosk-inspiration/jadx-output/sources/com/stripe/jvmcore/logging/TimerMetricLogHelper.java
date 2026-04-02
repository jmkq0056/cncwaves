package com.stripe.jvmcore.logging;

import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import com.stripe.loggingmodels.Outcome;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: TimerMetricLogHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\b\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\b\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u00020\u0007J.\u0010\b\u001a\u00020\t2$\u0010\n\u001a \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\r\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e0\f0\u000bH&JM\u0010\u0010\u001a\u00020\t2\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e2-\u0010\u0012\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\t0\u0013j\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u0014`\u0015¢\u0006\u0002\b\u0016H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0017À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/TimerMetricLogHelper;", "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "", "closeLogHelper", "", "outcomeAndTags", "Lkotlin/Function0;", "Lkotlin/Pair;", "Lcom/stripe/loggingmodels/Outcome;", "", "", "openLogHelper", "tags", "eventSetter", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "Lcom/stripe/jvmcore/logging/EventSetter;", "Lkotlin/ExtensionFunctionType;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface TimerMetricLogHelper<D extends Message<D, DB>, DB extends Message.Builder<D, DB>, S extends Message<S, SB>, SB extends Message.Builder<S, SB>> {
    void closeLogHelper(Function0<? extends Pair<? extends Outcome, ? extends Map<String, String>>> outcomeAndTags);

    void openLogHelper(Map<String, String> tags, Function2<? super SB, ? super Timer, Unit> eventSetter);

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void openLogHelper$default(TimerMetricLogHelper timerMetricLogHelper, Map map, Function2 function2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openLogHelper");
        }
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        timerMetricLogHelper.openLogHelper(map, function2);
    }
}
