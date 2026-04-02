package com.stripe.core.readerupdate.healthreporter;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.jvmcore.logging.ExecutionTimeLogger;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpdateStepHealthReporter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0001\u001fB1\u0012\"\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ7\u0010\u000e\u001a)\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0010`\u0012¢\u0006\u0002\b\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002JP\u0010\u0016\u001a\u0002H\u0017\"\u0004\b\u0000\u0010\u00172\u0014\b\u0002\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u001c\u0010\u001b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00170\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cH\u0086@¢\u0006\u0002\u0010\u001eR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;", "", "healthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;", BbposAdapter.ENDPOINT_TAG_KEY, "Lcom/stripe/core/readerupdate/healthreporter/Endpoint;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V", "logHelper", "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;", "getEventSetter", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "", "Lcom/stripe/jvmcore/logging/EventSetter;", "Lkotlin/ExtensionFunctionType;", "stage", "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;", "reportExecution", PrinterTextParser.TAGS_ALIGN_RIGHT, "tags", "", "", "runnable", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "(Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Event", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateStepHealthReporter {
    private final Endpoint endpoint;
    private final ExecutionTimeLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> logHelper;

    /* JADX INFO: compiled from: UpdateStepHealthReporter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Event.values().length];
            try {
                iArr[Event.MONITOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Event.DOWNLOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Event.INSTALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public UpdateStepHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> healthLogger, Endpoint endpoint) {
        Intrinsics.checkNotNullParameter(healthLogger, "healthLogger");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        this.endpoint = endpoint;
        this.logHelper = new ExecutionTimeLogger<>(healthLogger);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: UpdateStepHealthReporter.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;", "", "(Ljava/lang/String;I)V", "MONITOR", "DOWNLOAD", "INSTALL", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Event {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Event[] $VALUES;
        public static final Event MONITOR = new Event("MONITOR", 0);
        public static final Event DOWNLOAD = new Event("DOWNLOAD", 1);
        public static final Event INSTALL = new Event("INSTALL", 2);

        private static final /* synthetic */ Event[] $values() {
            return new Event[]{MONITOR, DOWNLOAD, INSTALL};
        }

        public static EnumEntries<Event> getEntries() {
            return $ENTRIES;
        }

        public static Event valueOf(String str) {
            return (Event) Enum.valueOf(Event.class, str);
        }

        public static Event[] values() {
            return (Event[]) $VALUES.clone();
        }

        private Event(String str, int i) {
        }

        static {
            Event[] eventArr$values = $values();
            $VALUES = eventArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(eventArr$values);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object reportExecution$default(UpdateStepHealthReporter updateStepHealthReporter, Map map, Event event, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        return updateStepHealthReporter.reportExecution(map, event, function1, continuation);
    }

    public final <R> Object reportExecution(Map<String, String> map, Event event, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super R> continuation) {
        return this.logHelper.reportExecutionWithException(TagsKt.getComprehensiveTags(map, this.endpoint), getEventSetter(event), function1, continuation);
    }

    private final Function2<SingleUpdateScope.Builder, Timer, Unit> getEventSetter(Event stage) {
        int i = WhenMappings.$EnumSwitchMapping$0[stage.ordinal()];
        if (i == 1) {
            return new Function2<SingleUpdateScope.Builder, Timer, Unit>() { // from class: com.stripe.core.readerupdate.healthreporter.UpdateStepHealthReporter.getEventSetter.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SingleUpdateScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SingleUpdateScope.Builder builder, Timer event) {
                    Intrinsics.checkNotNullParameter(builder, "$this$null");
                    Intrinsics.checkNotNullParameter(event, "event");
                    builder.check = event;
                }
            };
        }
        if (i == 2) {
            return new Function2<SingleUpdateScope.Builder, Timer, Unit>() { // from class: com.stripe.core.readerupdate.healthreporter.UpdateStepHealthReporter.getEventSetter.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SingleUpdateScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SingleUpdateScope.Builder builder, Timer event) {
                    Intrinsics.checkNotNullParameter(builder, "$this$null");
                    Intrinsics.checkNotNullParameter(event, "event");
                    builder.download = event;
                }
            };
        }
        if (i == 3) {
            return new Function2<SingleUpdateScope.Builder, Timer, Unit>() { // from class: com.stripe.core.readerupdate.healthreporter.UpdateStepHealthReporter.getEventSetter.3
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SingleUpdateScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SingleUpdateScope.Builder builder, Timer event) {
                    Intrinsics.checkNotNullParameter(builder, "$this$null");
                    Intrinsics.checkNotNullParameter(event, "event");
                    builder.install = event;
                }
            };
        }
        throw new NoWhenBranchMatchedException();
    }
}
