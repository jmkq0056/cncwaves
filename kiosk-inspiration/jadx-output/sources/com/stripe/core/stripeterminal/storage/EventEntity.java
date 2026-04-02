package com.stripe.core.stripeterminal.storage;

import androidx.core.app.NotificationCompat;
import com.stripe.jvmcore.logging.terminal.log.Event;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EventEntity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0001&B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J;\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\u0006\u0010#\u001a\u00020$J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015¨\u0006'"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/EventEntity;", "", NotificationCompat.CATEGORY_EVENT, "", "scope", "domain", "startTimeMs", "", "uid", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V", "getDomain", "()Ljava/lang/String;", "setDomain", "(Ljava/lang/String;)V", "getEvent", "setEvent", "getScope", "setScope", "getStartTimeMs", "()J", "setStartTimeMs", "(J)V", "getUid", "setUid", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toModel", "Lcom/stripe/jvmcore/logging/terminal/log/Event;", "toString", "Companion", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class EventEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String domain;
    private String event;
    private String scope;
    private long startTimeMs;
    private long uid;

    public static /* synthetic */ EventEntity copy$default(EventEntity eventEntity, String str, String str2, String str3, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = eventEntity.event;
        }
        if ((i & 2) != 0) {
            str2 = eventEntity.scope;
        }
        if ((i & 4) != 0) {
            str3 = eventEntity.domain;
        }
        if ((i & 8) != 0) {
            j = eventEntity.startTimeMs;
        }
        if ((i & 16) != 0) {
            j2 = eventEntity.uid;
        }
        long j3 = j2;
        String str4 = str3;
        return eventEntity.copy(str, str2, str4, j, j3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEvent() {
        return this.event;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getScope() {
        return this.scope;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDomain() {
        return this.domain;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getStartTimeMs() {
        return this.startTimeMs;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getUid() {
        return this.uid;
    }

    public final EventEntity copy(String event, String scope, String domain, long startTimeMs, long uid) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(domain, "domain");
        return new EventEntity(event, scope, domain, startTimeMs, uid);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EventEntity)) {
            return false;
        }
        EventEntity eventEntity = (EventEntity) other;
        return Intrinsics.areEqual(this.event, eventEntity.event) && Intrinsics.areEqual(this.scope, eventEntity.scope) && Intrinsics.areEqual(this.domain, eventEntity.domain) && this.startTimeMs == eventEntity.startTimeMs && this.uid == eventEntity.uid;
    }

    public int hashCode() {
        return (((((((this.event.hashCode() * 31) + this.scope.hashCode()) * 31) + this.domain.hashCode()) * 31) + Long.hashCode(this.startTimeMs)) * 31) + Long.hashCode(this.uid);
    }

    public String toString() {
        return "EventEntity(event=" + this.event + ", scope=" + this.scope + ", domain=" + this.domain + ", startTimeMs=" + this.startTimeMs + ", uid=" + this.uid + ')';
    }

    public EventEntity(String event, String scope, String domain, long j, long j2) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(domain, "domain");
        this.event = event;
        this.scope = scope;
        this.domain = domain;
        this.startTimeMs = j;
        this.uid = j2;
    }

    public /* synthetic */ EventEntity(String str, String str2, String str3, long j, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, j, (i & 16) != 0 ? 0L : j2);
    }

    public final String getEvent() {
        return this.event;
    }

    public final void setEvent(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.event = str;
    }

    public final String getScope() {
        return this.scope;
    }

    public final void setScope(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.scope = str;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final void setDomain(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.domain = str;
    }

    public final long getStartTimeMs() {
        return this.startTimeMs;
    }

    public final void setStartTimeMs(long j) {
        this.startTimeMs = j;
    }

    public final long getUid() {
        return this.uid;
    }

    public final void setUid(long j) {
        this.uid = j;
    }

    /* JADX INFO: compiled from: EventEntity.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/EventEntity$Companion;", "", "()V", "fromModel", "Lcom/stripe/core/stripeterminal/storage/EventEntity;", "model", "Lcom/stripe/jvmcore/logging/terminal/log/Event;", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final EventEntity fromModel(Event model) {
            Intrinsics.checkNotNullParameter(model, "model");
            return new EventEntity(model.getEvent(), model.getScope(), model.getDomain(), model.getStartTimeMs(), 0L, 16, null);
        }
    }

    public final Event toModel() {
        return Event.Companion.create$default(Event.INSTANCE, this.event, this.scope, this.domain, this.startTimeMs, null, 16, null);
    }
}
