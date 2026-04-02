package com.stripe.jvmcore.logging;

import androidx.core.app.NotificationCompat;
import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import com.stripe.jvmcore.dagger.Debug;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.Outcome;
import com.stripe.loggingmodels.Tag;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Gauge;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: HealthLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ò\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 R*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\b\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\b\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u00020\u0007:\u0005RSTUVB½\u0001\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\t\u0012'\u0010\u000b\u001a#\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000e0\fj\b\u0012\u0004\u0012\u00028\u0000`\u000f¢\u0006\u0002\b\u0010\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00020\t\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00030\t\u0012-\u0010\u0013\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002`\u0014¢\u0006\u0002\b\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\b\b\u0001\u0010\u0017\u001a\u00020\u0018\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0006\u0010\u001c\u001a\u00020\u001d¢\u0006\u0002\u0010\u001eJJ\u0010\u001f\u001a\u00020 \"\u0004\b\u0004\u0010!2\u0006\u0010\"\u001a\u0002H!2-\u0010#\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u0002H!\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u0002H!`$¢\u0006\u0002\b\u0010H\u0002¢\u0006\u0002\u0010%J<\u0010&\u001a\u00020\u000e2\b\u0010'\u001a\u0004\u0018\u00010(2\b\b\u0002\u0010)\u001a\u00020*2\u0014\b\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/Ja\u00100\u001a\u00020\u000e2\b\b\u0002\u0010)\u001a\u00020*2\u0014\b\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/2-\u00101\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u000202`$¢\u0006\u0002\b\u0010J\u0010\u00103\u001a\u00020\u000e2\u0006\u00104\u001a\u00020-H\u0002J\u0018\u00105\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001062\u0006\u00107\u001a\u00020 H\u0002J\u0017\u00108\u001a\u0004\u0018\u0001092\u0006\u0010:\u001a\u00028\u0002H\u0002¢\u0006\u0002\u0010;J\u001d\u0010<\u001a\n\u0012\u0004\u0012\u00028\u0002\u0018\u00010=2\u0006\u0010>\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010?J]\u0010@\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020-2\u0006\u0010:\u001a\u00020-2\u0006\u0010\"\u001a\u00020-2\u0006\u0010A\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u00010D2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\u0006\u0010)\u001a\u00020*2\b\u0010.\u001a\u0004\u0018\u00010/H\u0002¢\u0006\u0002\u0010EJ\u001e\u0010F\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0002\u0018\u00010G2\u0006\u0010H\u001a\u00020 H\u0002Ji\u0010I\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020D2\b\b\u0002\u0010)\u001a\u00020*2\u0014\b\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/2-\u0010K\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020L`$¢\u0006\u0002\b\u0010Ji\u0010M\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020D2\b\b\u0002\u0010)\u001a\u00020*2\u0014\b\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/2-\u0010O\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020P`$¢\u0006\u0002\b\u0010JM\u0010Q\u001a\u0004\u0018\u00010(2\u0014\b\u0002\u0010+\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020-0,2-\u0010O\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020P`$¢\u0006\u0002\b\u0010R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010\u000b\u001a#\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000e0\fj\b\u0012\u0004\u0012\u00028\u0000`\u000f¢\u0006\u0002\b\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00030\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R5\u0010\u0013\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002`\u0014¢\u0006\u0002\b\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006W"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLogger;", "D", "Lcom/squareup/wire/Message;", "DB", "Lcom/squareup/wire/Message$Builder;", "S", "SB", "", "domainClass", "Ljava/lang/Class;", "domainBuilderClass", "domainSetter", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;", "", "Lcom/stripe/jvmcore/logging/DomainSetter;", "Lkotlin/ExtensionFunctionType;", "scopeClass", "scopeBuilderClass", "scopeSetter", "Lcom/stripe/jvmcore/logging/ScopeSetter;", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "isDebug", "", "listeners", "", "Lcom/stripe/jvmcore/logging/HealthMetricListener;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Lcom/stripe/loggingmodels/MetricLogger;ZLjava/util/List;Lcom/stripe/logwriter/LogWriter;)V", "buildHealthMetric", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;", "T", NotificationCompat.CATEGORY_EVENT, "eventSetter", "Lcom/stripe/jvmcore/logging/EventSetter;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric;", "endTimer", "pendingTimer", "Lcom/stripe/jvmcore/logging/PendingTimer;", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "tags", "", "", "cause", "", "incrementCounter", "counterSetter", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "logOrCrash", "message", "lookupDomain", "Lcom/stripe/jvmcore/logging/HealthLogger$Domain;", "metric", "lookupEvent", "Lcom/stripe/jvmcore/logging/HealthLogger$Event;", "scope", "(Lcom/squareup/wire/Message;)Lcom/stripe/jvmcore/logging/HealthLogger$Event;", "lookupScope", "Lcom/stripe/jvmcore/logging/HealthLogger$Scope;", "domain", "(Lcom/squareup/wire/Message;)Lcom/stripe/jvmcore/logging/HealthLogger$Scope;", "notifyListeners", "type", "Lcom/stripe/jvmcore/logging/MetricType;", "value", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V", "parseHealthMetric", "Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;", "healthMetric", "recordGauge", "measurement", "gaugeSetter", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;", "recordTimer", "durationMillis", "timerSetter", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "startTimer", "Companion", "Domain", "Event", "ParsedHealthMetric", "Scope", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HealthLogger<D extends Message<D, DB>, DB extends Message.Builder<D, DB>, S extends Message<S, SB>, SB extends Message.Builder<S, SB>> {
    private static final String TAG = "HealthLogger";
    private final Class<DB> domainBuilderClass;
    private final Class<D> domainClass;
    private final Function2<HealthMetric.Builder, D, Unit> domainSetter;
    private final boolean isDebug;
    private final List<HealthMetricListener> listeners;
    private final LogWriter logWriter;
    private final MetricLogger metricLogger;
    private final Class<SB> scopeBuilderClass;
    private final Class<S> scopeClass;
    private final Function2<DB, S, Unit> scopeSetter;

    /* JADX WARN: Multi-variable type inference failed */
    public HealthLogger(Class<D> domainClass, Class<DB> domainBuilderClass, Function2<? super HealthMetric.Builder, ? super D, Unit> domainSetter, Class<S> scopeClass, Class<SB> scopeBuilderClass, Function2<? super DB, ? super S, Unit> scopeSetter, MetricLogger metricLogger, @Debug boolean z, List<? extends HealthMetricListener> listeners, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(domainClass, "domainClass");
        Intrinsics.checkNotNullParameter(domainBuilderClass, "domainBuilderClass");
        Intrinsics.checkNotNullParameter(domainSetter, "domainSetter");
        Intrinsics.checkNotNullParameter(scopeClass, "scopeClass");
        Intrinsics.checkNotNullParameter(scopeBuilderClass, "scopeBuilderClass");
        Intrinsics.checkNotNullParameter(scopeSetter, "scopeSetter");
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.domainClass = domainClass;
        this.domainBuilderClass = domainBuilderClass;
        this.domainSetter = domainSetter;
        this.scopeClass = scopeClass;
        this.scopeBuilderClass = scopeBuilderClass;
        this.scopeSetter = scopeSetter;
        this.metricLogger = metricLogger;
        this.isDebug = z;
        this.listeners = listeners;
        this.logWriter = logWriter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void incrementCounter$default(HealthLogger healthLogger, Outcome outcome, Map map, Throwable th, Function2 function2, int i, Object obj) throws IllegalAccessException, InstantiationException {
        if ((i & 1) != 0) {
            outcome = Outcome.Ok.INSTANCE;
        }
        if ((i & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 4) != 0) {
            th = null;
        }
        healthLogger.incrementCounter(outcome, map, th, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void incrementCounter(Outcome outcome, Map<String, String> tags, Throwable cause, Function2<? super SB, ? super Counter, Unit> counterSetter) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(counterSetter, "counterSetter");
        HealthMetric healthMetricBuildHealthMetric = buildHealthMetric(new Counter(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0), counterSetter);
        ParsedHealthMetric<D, S> healthMetric = parseHealthMetric(healthMetricBuildHealthMetric);
        if (healthMetric == null) {
            logOrCrash("Failed to parse health metric for counter: " + healthMetricBuildHealthMetric);
        } else {
            this.metricLogger.recordCounterMetric(healthMetric.getDomain().getName(), healthMetric.getScope().getName(), healthMetric.getEvent().getName(), Tag.HealthTag.INSTANCE.toHealthTags(tags), outcome);
            notifyListeners(healthMetric.getDomain().getName(), healthMetric.getScope().getName(), healthMetric.getEvent().getName(), MetricType.COUNTER, null, tags, outcome, cause);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PendingTimer startTimer$default(HealthLogger healthLogger, Map map, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        return healthLogger.startTimer(map, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final PendingTimer startTimer(Map<String, String> tags, Function2<? super SB, ? super Timer, Unit> timerSetter) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(timerSetter, "timerSetter");
        HealthMetric healthMetricBuildHealthMetric = buildHealthMetric(new Timer(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0), timerSetter);
        ParsedHealthMetric<D, S> healthMetric = parseHealthMetric(healthMetricBuildHealthMetric);
        if (healthMetric == null) {
            logOrCrash("Failed to parse health metric for counter: " + healthMetricBuildHealthMetric);
            return null;
        }
        return new PendingTimer(this.metricLogger.startTimedMetric(healthMetric.getDomain().getName(), healthMetric.getScope().getName(), healthMetric.getEvent().getName(), Tag.HealthTag.INSTANCE.toHealthTags(tags)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void endTimer$default(HealthLogger healthLogger, PendingTimer pendingTimer, Outcome outcome, Map map, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            outcome = Outcome.Ok.INSTANCE;
        }
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i & 8) != 0) {
            th = null;
        }
        healthLogger.endTimer(pendingTimer, outcome, map, th);
    }

    public final void endTimer(PendingTimer pendingTimer, Outcome outcome, Map<String, String> tags, Throwable cause) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(tags, "tags");
        if (pendingTimer == null) {
            logOrCrash("Received null pendingTimer for a call to endTimer");
            return;
        }
        long jEndTimedMetric = this.metricLogger.endTimedMetric(pendingTimer.getMetric$logging(), outcome, Tag.HealthTag.INSTANCE.toHealthTags(tags));
        String domain = pendingTimer.getMetric$logging().getDomain();
        String scope = pendingTimer.getMetric$logging().getScope();
        String event = pendingTimer.getMetric$logging().getEvent();
        MetricType metricType = MetricType.TIMER;
        Long lValueOf = Long.valueOf(jEndTimedMetric);
        List<Tag> tags2 = pendingTimer.getMetric$logging().getTags();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(tags2, 10)), 16));
        for (Tag tag : tags2) {
            Pair pair = TuplesKt.to(tag.getKey(), tag.getValue());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        notifyListeners(domain, scope, event, metricType, lValueOf, MapsKt.plus(linkedHashMap, tags), outcome, cause);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void recordTimer$default(HealthLogger healthLogger, long j, Outcome outcome, Map map, Throwable th, Function2 function2, int i, Object obj) throws IllegalAccessException, InstantiationException {
        if ((i & 2) != 0) {
            outcome = Outcome.Ok.INSTANCE;
        }
        Outcome outcome2 = outcome;
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        Map map2 = map;
        if ((i & 8) != 0) {
            th = null;
        }
        healthLogger.recordTimer(j, outcome2, map2, th, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void recordTimer(long durationMillis, Outcome outcome, Map<String, String> tags, Throwable cause, Function2<? super SB, ? super Timer, Unit> timerSetter) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(timerSetter, "timerSetter");
        HealthMetric healthMetricBuildHealthMetric = buildHealthMetric(new Timer(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0), timerSetter);
        ParsedHealthMetric<D, S> healthMetric = parseHealthMetric(healthMetricBuildHealthMetric);
        if (healthMetric == null) {
            logOrCrash("Failed to parse health metric for timer: " + healthMetricBuildHealthMetric);
        } else {
            this.metricLogger.recordTimedMetric(healthMetric.getDomain().getName(), healthMetric.getScope().getName(), healthMetric.getEvent().getName(), durationMillis, Tag.HealthTag.INSTANCE.toHealthTags(tags), outcome);
            notifyListeners(healthMetric.getDomain().getName(), healthMetric.getScope().getName(), healthMetric.getEvent().getName(), MetricType.TIMER, Long.valueOf(durationMillis), tags, outcome, cause);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void recordGauge$default(HealthLogger healthLogger, long j, Outcome outcome, Map map, Throwable th, Function2 function2, int i, Object obj) throws IllegalAccessException, InstantiationException {
        if ((i & 2) != 0) {
            outcome = Outcome.Ok.INSTANCE;
        }
        Outcome outcome2 = outcome;
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        Map map2 = map;
        if ((i & 8) != 0) {
            th = null;
        }
        healthLogger.recordGauge(j, outcome2, map2, th, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void recordGauge(long measurement, Outcome outcome, Map<String, String> tags, Throwable cause, Function2<? super SB, ? super Gauge, Unit> gaugeSetter) throws IllegalAccessException, InstantiationException {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(gaugeSetter, "gaugeSetter");
        HealthMetric healthMetricBuildHealthMetric = buildHealthMetric(new Gauge(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0), gaugeSetter);
        ParsedHealthMetric<D, S> healthMetric = parseHealthMetric(healthMetricBuildHealthMetric);
        if (healthMetric == null) {
            logOrCrash("Failed to parse health metric for gauge: " + healthMetricBuildHealthMetric);
        } else {
            this.metricLogger.recordGaugeMetric(healthMetric.getDomain().getName(), healthMetric.getScope().getName(), healthMetric.getEvent().getName(), measurement, Tag.HealthTag.INSTANCE.toHealthTags(tags), outcome);
            notifyListeners(healthMetric.getDomain().getName(), healthMetric.getScope().getName(), healthMetric.getEvent().getName(), MetricType.GAUGE, Long.valueOf(measurement), tags, outcome, cause);
        }
    }

    private final <T> HealthMetric buildHealthMetric(T event, Function2<? super SB, ? super T, Unit> eventSetter) throws IllegalAccessException, InstantiationException {
        SB sbNewInstance = this.scopeBuilderClass.newInstance();
        Intrinsics.checkNotNull(sbNewInstance);
        eventSetter.invoke(sbNewInstance, event);
        Message messageBuild = sbNewInstance.build();
        DB dbNewInstance = this.domainBuilderClass.newInstance();
        Function2<DB, S, Unit> function2 = this.scopeSetter;
        Intrinsics.checkNotNull(dbNewInstance);
        function2.invoke(dbNewInstance, (S) messageBuild);
        Message messageBuild2 = dbNewInstance.build();
        HealthMetric.Builder builder = new HealthMetric.Builder();
        this.domainSetter.invoke(builder, (D) messageBuild2);
        return builder.build();
    }

    private final ParsedHealthMetric<D, S> parseHealthMetric(HealthMetric healthMetric) throws IllegalAccessException {
        Scope<S> scopeLookupScope;
        Event eventLookupEvent;
        Domain<D> domainLookupDomain = lookupDomain(healthMetric);
        if (domainLookupDomain == null || (scopeLookupScope = lookupScope(domainLookupDomain.getValue())) == null || (eventLookupEvent = lookupEvent(scopeLookupScope.getValue())) == null) {
            return null;
        }
        return new ParsedHealthMetric<>(domainLookupDomain, scopeLookupScope, eventLookupEvent);
    }

    private final Domain<D> lookupDomain(HealthMetric metric) throws IllegalAccessException {
        Field field = (Field) SequencesKt.firstOrNull(ReflectionUtils.INSTANCE.withType(ReflectionUtils.INSTANCE.withOneOf(ReflectionUtils.INSTANCE.properties(HealthMetric.class), "domain"), this.domainClass));
        if (field == null) {
            return null;
        }
        String strDeclaredFieldName = ReflectionUtils.INSTANCE.declaredFieldName(field);
        if (strDeclaredFieldName == null) {
            strDeclaredFieldName = field.getName();
        }
        Object obj = field.get(metric);
        Message message = obj instanceof Message ? (Message) obj : null;
        if (message == null) {
            return null;
        }
        Intrinsics.checkNotNull(strDeclaredFieldName);
        return new Domain<>(strDeclaredFieldName, message);
    }

    private final Scope<S> lookupScope(D domain) throws IllegalAccessException {
        Field field = (Field) SequencesKt.firstOrNull(ReflectionUtils.INSTANCE.withType(ReflectionUtils.INSTANCE.withOneOf(ReflectionUtils.INSTANCE.properties(this.domainClass), "scope"), this.scopeClass));
        if (field == null) {
            return null;
        }
        String strDeclaredFieldName = ReflectionUtils.INSTANCE.declaredFieldName(field);
        if (strDeclaredFieldName == null) {
            strDeclaredFieldName = field.getName();
        }
        Object obj = field.get(domain);
        Message message = obj instanceof Message ? (Message) obj : null;
        if (message == null) {
            return null;
        }
        Intrinsics.checkNotNull(strDeclaredFieldName);
        return new Scope<>(strDeclaredFieldName, message);
    }

    private final Event lookupEvent(final S scope) {
        Pair pair = (Pair) SequencesKt.firstOrNull(SequencesKt.filter(SequencesKt.map(ReflectionUtils.INSTANCE.withOneOf(ReflectionUtils.INSTANCE.properties(this.scopeClass), NotificationCompat.CATEGORY_EVENT), new Function1<Field, Pair<? extends Field, ? extends Object>>() { // from class: com.stripe.jvmcore.logging.HealthLogger.lookupEvent.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Pair<Field, Object> invoke(Field property) {
                Intrinsics.checkNotNullParameter(property, "property");
                return TuplesKt.to(property, property.get(scope));
            }
        }), new Function1<Pair<? extends Field, ? extends Object>, Boolean>() { // from class: com.stripe.jvmcore.logging.HealthLogger.lookupEvent.2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(Pair<Field, ? extends Object> pair2) {
                Intrinsics.checkNotNullParameter(pair2, "<name for destructuring parameter 0>");
                return Boolean.valueOf(pair2.component2() != null);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Pair<? extends Field, ? extends Object> pair2) {
                return invoke2((Pair<Field, ? extends Object>) pair2);
            }
        }));
        if (pair == null) {
            return null;
        }
        Field field = (Field) pair.component1();
        Object objComponent2 = pair.component2();
        String strDeclaredFieldName = ReflectionUtils.INSTANCE.declaredFieldName(field);
        if (strDeclaredFieldName == null) {
            strDeclaredFieldName = field.getName();
        }
        if (objComponent2 instanceof Counter) {
            Intrinsics.checkNotNull(strDeclaredFieldName);
            Intrinsics.checkNotNull(objComponent2);
            return new Event.CounterEvent(strDeclaredFieldName, (Counter) objComponent2);
        }
        if (objComponent2 instanceof Timer) {
            Intrinsics.checkNotNull(strDeclaredFieldName);
            Intrinsics.checkNotNull(objComponent2);
            return new Event.TimerEvent(strDeclaredFieldName, (Timer) objComponent2);
        }
        if (!(objComponent2 instanceof Gauge)) {
            return null;
        }
        Intrinsics.checkNotNull(strDeclaredFieldName);
        Intrinsics.checkNotNull(objComponent2);
        return new Event.GaugeEvent(strDeclaredFieldName, (Gauge) objComponent2);
    }

    private final void notifyListeners(String domain, String scope, String event, MetricType type, Long value, Map<String, String> tags, Outcome outcome, Throwable cause) {
        Iterator<T> it = this.listeners.iterator();
        while (it.hasNext()) {
            ((HealthMetricListener) it.next()).onHealthMetricLogged(domain, scope, event, type, value, tags, outcome, cause);
        }
    }

    private final void logOrCrash(String message) {
        if (this.isDebug) {
            throw new IllegalStateException(message.toString());
        }
        LogWriter logWriter = this.logWriter;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        logWriter.e(TAG2, message);
    }

    /* JADX INFO: compiled from: HealthLogger.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u0000*\u0004\b\u0004\u0010\u0001*\u0004\b\u0005\u0010\u00022\u00020\u0003B)\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00040\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00050\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00040\u0005HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00050\u0007HÆ\u0003J\t\u0010\u0013\u001a\u00020\tHÆ\u0003J?\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00002\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00040\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00050\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00040\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00050\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;", "D", "S", "", "domain", "Lcom/stripe/jvmcore/logging/HealthLogger$Domain;", "scope", "Lcom/stripe/jvmcore/logging/HealthLogger$Scope;", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/jvmcore/logging/HealthLogger$Event;", "(Lcom/stripe/jvmcore/logging/HealthLogger$Domain;Lcom/stripe/jvmcore/logging/HealthLogger$Scope;Lcom/stripe/jvmcore/logging/HealthLogger$Event;)V", "getDomain", "()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;", "getEvent", "()Lcom/stripe/jvmcore/logging/HealthLogger$Event;", "getScope", "()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class ParsedHealthMetric<D, S> {
        private final Domain<D> domain;
        private final Event event;
        private final Scope<S> scope;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ParsedHealthMetric copy$default(ParsedHealthMetric parsedHealthMetric, Domain domain, Scope scope, Event event, int i, Object obj) {
            if ((i & 1) != 0) {
                domain = parsedHealthMetric.domain;
            }
            if ((i & 2) != 0) {
                scope = parsedHealthMetric.scope;
            }
            if ((i & 4) != 0) {
                event = parsedHealthMetric.event;
            }
            return parsedHealthMetric.copy(domain, scope, event);
        }

        public final Domain<D> component1() {
            return this.domain;
        }

        public final Scope<S> component2() {
            return this.scope;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Event getEvent() {
            return this.event;
        }

        public final ParsedHealthMetric<D, S> copy(Domain<D> domain, Scope<S> scope, Event event) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            Intrinsics.checkNotNullParameter(scope, "scope");
            Intrinsics.checkNotNullParameter(event, "event");
            return new ParsedHealthMetric<>(domain, scope, event);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ParsedHealthMetric)) {
                return false;
            }
            ParsedHealthMetric parsedHealthMetric = (ParsedHealthMetric) other;
            return Intrinsics.areEqual(this.domain, parsedHealthMetric.domain) && Intrinsics.areEqual(this.scope, parsedHealthMetric.scope) && Intrinsics.areEqual(this.event, parsedHealthMetric.event);
        }

        public int hashCode() {
            return (((this.domain.hashCode() * 31) + this.scope.hashCode()) * 31) + this.event.hashCode();
        }

        public String toString() {
            return "ParsedHealthMetric(domain=" + this.domain + ", scope=" + this.scope + ", event=" + this.event + ')';
        }

        public ParsedHealthMetric(Domain<D> domain, Scope<S> scope, Event event) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            Intrinsics.checkNotNullParameter(scope, "scope");
            Intrinsics.checkNotNullParameter(event, "event");
            this.domain = domain;
            this.scope = scope;
            this.event = event;
        }

        public final Domain<D> getDomain() {
            return this.domain;
        }

        public final Scope<S> getScope() {
            return this.scope;
        }

        public final Event getEvent() {
            return this.event;
        }
    }

    /* JADX INFO: compiled from: HealthLogger.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u0000*\u0004\b\u0004\u0010\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0004¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0004HÆ\u0003J\u000e\u0010\r\u001a\u00028\u0004HÆ\u0003¢\u0006\u0002\u0010\nJ(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00040\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00028\u0004HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0004HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0005\u001a\u00028\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLogger$Domain;", "D", "", "name", "", "value", "(Ljava/lang/String;Ljava/lang/Object;)V", "getName", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Object;)Lcom/stripe/jvmcore/logging/HealthLogger$Domain;", "equals", "", "other", "hashCode", "", "toString", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class Domain<D> {
        private final String name;
        private final D value;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Domain copy$default(Domain domain, String str, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                str = domain.name;
            }
            if ((i & 2) != 0) {
                obj = domain.value;
            }
            return domain.copy(str, obj);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        public final D component2() {
            return this.value;
        }

        public final Domain<D> copy(String name, D value) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new Domain<>(name, value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Domain)) {
                return false;
            }
            Domain domain = (Domain) other;
            return Intrinsics.areEqual(this.name, domain.name) && Intrinsics.areEqual(this.value, domain.value);
        }

        public int hashCode() {
            int iHashCode = this.name.hashCode() * 31;
            D d = this.value;
            return iHashCode + (d == null ? 0 : d.hashCode());
        }

        public String toString() {
            return "Domain(name=" + this.name + ", value=" + this.value + ')';
        }

        public Domain(String name, D d) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            this.value = d;
        }

        public final String getName() {
            return this.name;
        }

        public final D getValue() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: HealthLogger.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u0000*\u0004\b\u0004\u0010\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0004¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0004HÆ\u0003J\u000e\u0010\r\u001a\u00028\u0004HÆ\u0003¢\u0006\u0002\u0010\nJ(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00040\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00028\u0004HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0004HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0005\u001a\u00028\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLogger$Scope;", "S", "", "name", "", "value", "(Ljava/lang/String;Ljava/lang/Object;)V", "getName", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Object;)Lcom/stripe/jvmcore/logging/HealthLogger$Scope;", "equals", "", "other", "hashCode", "", "toString", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class Scope<S> {
        private final String name;
        private final S value;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Scope copy$default(Scope scope, String str, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                str = scope.name;
            }
            if ((i & 2) != 0) {
                obj = scope.value;
            }
            return scope.copy(str, obj);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        public final S component2() {
            return this.value;
        }

        public final Scope<S> copy(String name, S value) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new Scope<>(name, value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Scope)) {
                return false;
            }
            Scope scope = (Scope) other;
            return Intrinsics.areEqual(this.name, scope.name) && Intrinsics.areEqual(this.value, scope.value);
        }

        public int hashCode() {
            int iHashCode = this.name.hashCode() * 31;
            S s = this.value;
            return iHashCode + (s == null ? 0 : s.hashCode());
        }

        public String toString() {
            return "Scope(name=" + this.name + ", value=" + this.value + ')';
        }

        public Scope(String name, S s) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            this.value = s;
        }

        public final String getName() {
            return this.name;
        }

        public final S getValue() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: HealthLogger.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0003\u0007\b\tB\u0007\b\u0004¢\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0003\n\u000b\f¨\u0006\r"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLogger$Event;", "", "()V", "name", "", "getName", "()Ljava/lang/String;", "CounterEvent", "GaugeEvent", "TimerEvent", "Lcom/stripe/jvmcore/logging/HealthLogger$Event$CounterEvent;", "Lcom/stripe/jvmcore/logging/HealthLogger$Event$GaugeEvent;", "Lcom/stripe/jvmcore/logging/HealthLogger$Event$TimerEvent;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static abstract class Event {
        public /* synthetic */ Event(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract String getName();

        private Event() {
        }

        /* JADX INFO: compiled from: HealthLogger.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLogger$Event$CounterEvent;", "Lcom/stripe/jvmcore/logging/HealthLogger$Event;", "name", "", "value", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)V", "getName", "()Ljava/lang/String;", "getValue", "()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class CounterEvent extends Event {
            private final String name;
            private final Counter value;

            public static /* synthetic */ CounterEvent copy$default(CounterEvent counterEvent, String str, Counter counter, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = counterEvent.name;
                }
                if ((i & 2) != 0) {
                    counter = counterEvent.value;
                }
                return counterEvent.copy(str, counter);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getName() {
                return this.name;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final Counter getValue() {
                return this.value;
            }

            public final CounterEvent copy(String name, Counter value) {
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(value, "value");
                return new CounterEvent(name, value);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof CounterEvent)) {
                    return false;
                }
                CounterEvent counterEvent = (CounterEvent) other;
                return Intrinsics.areEqual(this.name, counterEvent.name) && Intrinsics.areEqual(this.value, counterEvent.value);
            }

            public int hashCode() {
                return (this.name.hashCode() * 31) + this.value.hashCode();
            }

            public String toString() {
                return "CounterEvent(name=" + this.name + ", value=" + this.value + ')';
            }

            @Override // com.stripe.jvmcore.logging.HealthLogger.Event
            public String getName() {
                return this.name;
            }

            public final Counter getValue() {
                return this.value;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CounterEvent(String name, Counter value) {
                super(null);
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(value, "value");
                this.name = name;
                this.value = value;
            }
        }

        /* JADX INFO: compiled from: HealthLogger.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLogger$Event$TimerEvent;", "Lcom/stripe/jvmcore/logging/HealthLogger$Event;", "name", "", "value", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)V", "getName", "()Ljava/lang/String;", "getValue", "()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class TimerEvent extends Event {
            private final String name;
            private final Timer value;

            public static /* synthetic */ TimerEvent copy$default(TimerEvent timerEvent, String str, Timer timer, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = timerEvent.name;
                }
                if ((i & 2) != 0) {
                    timer = timerEvent.value;
                }
                return timerEvent.copy(str, timer);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getName() {
                return this.name;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final Timer getValue() {
                return this.value;
            }

            public final TimerEvent copy(String name, Timer value) {
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(value, "value");
                return new TimerEvent(name, value);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof TimerEvent)) {
                    return false;
                }
                TimerEvent timerEvent = (TimerEvent) other;
                return Intrinsics.areEqual(this.name, timerEvent.name) && Intrinsics.areEqual(this.value, timerEvent.value);
            }

            public int hashCode() {
                return (this.name.hashCode() * 31) + this.value.hashCode();
            }

            public String toString() {
                return "TimerEvent(name=" + this.name + ", value=" + this.value + ')';
            }

            @Override // com.stripe.jvmcore.logging.HealthLogger.Event
            public String getName() {
                return this.name;
            }

            public final Timer getValue() {
                return this.value;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TimerEvent(String name, Timer value) {
                super(null);
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(value, "value");
                this.name = name;
                this.value = value;
            }
        }

        /* JADX INFO: compiled from: HealthLogger.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/logging/HealthLogger$Event$GaugeEvent;", "Lcom/stripe/jvmcore/logging/HealthLogger$Event;", "name", "", "value", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;", "(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;)V", "getName", "()Ljava/lang/String;", "getValue", "()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class GaugeEvent extends Event {
            private final String name;
            private final Gauge value;

            public static /* synthetic */ GaugeEvent copy$default(GaugeEvent gaugeEvent, String str, Gauge gauge, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = gaugeEvent.name;
                }
                if ((i & 2) != 0) {
                    gauge = gaugeEvent.value;
                }
                return gaugeEvent.copy(str, gauge);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getName() {
                return this.name;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final Gauge getValue() {
                return this.value;
            }

            public final GaugeEvent copy(String name, Gauge value) {
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(value, "value");
                return new GaugeEvent(name, value);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof GaugeEvent)) {
                    return false;
                }
                GaugeEvent gaugeEvent = (GaugeEvent) other;
                return Intrinsics.areEqual(this.name, gaugeEvent.name) && Intrinsics.areEqual(this.value, gaugeEvent.value);
            }

            public int hashCode() {
                return (this.name.hashCode() * 31) + this.value.hashCode();
            }

            public String toString() {
                return "GaugeEvent(name=" + this.name + ", value=" + this.value + ')';
            }

            @Override // com.stripe.jvmcore.logging.HealthLogger.Event
            public String getName() {
                return this.name;
            }

            public final Gauge getValue() {
                return this.value;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public GaugeEvent(String name, Gauge value) {
                super(null);
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(value, "value");
                this.name = name;
                this.value = value;
            }
        }
    }
}
