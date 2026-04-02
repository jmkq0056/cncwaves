package com.stripe.jvmcore.logging.terminal.log;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Event.kt */
/* JADX INFO: loaded from: classes3.dex */
@Deprecated(message = "Deprecated logging model type, migrated to Metric.", replaceWith = @ReplaceWith(expression = "Metric", imports = {"com.stripe.loggingmodels.Metric"}))
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000  2\u00020\u0001:\u0002 !B;\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t¢\u0006\u0002\u0010\nJ\u001a\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00072\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\"\u0010\u0012\u001a\u0004\u0018\u00010\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\fR\"\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\r\u001a\u0004\u0018\u00010\u0014@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006\""}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/Event;", "", NotificationCompat.CATEGORY_EVENT, "", "scope", "domain", "startTimeMs", "", "tags", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V", "getDomain", "()Ljava/lang/String;", "<set-?>", TypedValues.TransitionType.S_DURATION, "getDuration", "()J", "getEvent", "outcome", "getOutcome", "Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;", "result", "getResult", "()Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;", "getScope", "getStartTimeMs", "getTags", "()Ljava/util/Map;", "end", "", "endTimeMs", "errorCode", "Companion", "EventResult", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Event {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String SUCCESS = "success";
    private final String domain;
    private long duration;
    private final String event;
    private String outcome;
    private EventResult result;
    private final String scope;
    private final long startTimeMs;
    private final Map<String, String> tags;

    public /* synthetic */ Event(String str, String str2, String str3, long j, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, j, map);
    }

    private Event(String str, String str2, String str3, long j, Map<String, String> map) {
        this.event = str;
        this.scope = str2;
        this.domain = str3;
        this.startTimeMs = j;
        this.tags = map;
    }

    public final String getEvent() {
        return this.event;
    }

    public final String getScope() {
        return this.scope;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final long getStartTimeMs() {
        return this.startTimeMs;
    }

    public final Map<String, String> getTags() {
        return this.tags;
    }

    public final String getOutcome() {
        return this.outcome;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final EventResult getResult() {
        return this.result;
    }

    public static /* synthetic */ void end$default(Event event, long j, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        event.end(j, str);
    }

    public final void end(long endTimeMs, String errorCode) {
        this.result = errorCode != null ? EventResult.ERROR : EventResult.OK;
        this.duration = endTimeMs - this.startTimeMs;
        if (errorCode == null) {
            errorCode = "success";
        }
        this.outcome = errorCode;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: Event.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;", "", "(Ljava/lang/String;I)V", "OK", "ERROR", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EventResult {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ EventResult[] $VALUES;
        public static final EventResult OK = new EventResult("OK", 0);
        public static final EventResult ERROR = new EventResult("ERROR", 1);

        private static final /* synthetic */ EventResult[] $values() {
            return new EventResult[]{OK, ERROR};
        }

        public static EnumEntries<EventResult> getEntries() {
            return $ENTRIES;
        }

        public static EventResult valueOf(String str) {
            return (EventResult) Enum.valueOf(EventResult.class, str);
        }

        public static EventResult[] values() {
            return (EventResult[]) $VALUES.clone();
        }

        private EventResult(String str, int i) {
        }

        static {
            EventResult[] eventResultArr$values = $values();
            $VALUES = eventResultArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(eventResultArr$values);
        }
    }

    /* JADX INFO: compiled from: Event.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J<\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/Event$Companion;", "", "()V", "SUCCESS", "", "create", "Lcom/stripe/jvmcore/logging/terminal/log/Event;", NotificationCompat.CATEGORY_EVENT, "scope", "domain", "startTimeMs", "", "tags", "", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ Event create$default(Companion companion, String str, String str2, String str3, long j, Map map, int i, Object obj) {
            if ((i & 16) != 0) {
                map = MapsKt.emptyMap();
            }
            return companion.create(str, str2, str3, j, map);
        }

        public final /* synthetic */ Event create(String event, String scope, String domain, long startTimeMs, Map tags) {
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(scope, "scope");
            Intrinsics.checkNotNullParameter(domain, "domain");
            Intrinsics.checkNotNullParameter(tags, "tags");
            return new Event(event, scope, domain, startTimeMs, tags, null);
        }
    }
}
