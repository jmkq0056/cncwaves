package com.stripe.cots.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CotsLogEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\fJ<\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0015J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0017HÖ\u0001J\u001d\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u001f0\u001e¢\u0006\u0002\u0010 J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0017HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\n¨\u0006'"}, d2 = {"Lcom/stripe/cots/common/CotsLogEvent;", "Landroid/os/Parcelable;", NotificationCompat.CATEGORY_EVENT, "", "outcome", "cause", TypedValues.TransitionType.S_DURATION, "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "getCause", "()Ljava/lang/String;", "getDuration", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getEvent", "getOutcome", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/stripe/cots/common/CotsLogEvent;", "describeContents", "", "equals", "", "other", "", "hashCode", "toLoggableValues", "", "Lkotlin/Pair;", "()[Lkotlin/Pair;", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CotsLogEvent implements Parcelable {
    public static final Parcelable.Creator<CotsLogEvent> CREATOR = new Creator();
    private final String cause;
    private final Long duration;
    private final String event;
    private final String outcome;

    /* JADX INFO: compiled from: CotsLogEvent.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CotsLogEvent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CotsLogEvent createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new CotsLogEvent(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CotsLogEvent[] newArray(int i) {
            return new CotsLogEvent[i];
        }
    }

    public static /* synthetic */ CotsLogEvent copy$default(CotsLogEvent cotsLogEvent, String str, String str2, String str3, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cotsLogEvent.event;
        }
        if ((i & 2) != 0) {
            str2 = cotsLogEvent.outcome;
        }
        if ((i & 4) != 0) {
            str3 = cotsLogEvent.cause;
        }
        if ((i & 8) != 0) {
            l = cotsLogEvent.duration;
        }
        return cotsLogEvent.copy(str, str2, str3, l);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEvent() {
        return this.event;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getOutcome() {
        return this.outcome;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCause() {
        return this.cause;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Long getDuration() {
        return this.duration;
    }

    public final CotsLogEvent copy(String event, String outcome, String cause, Long duration) {
        Intrinsics.checkNotNullParameter(event, "event");
        return new CotsLogEvent(event, outcome, cause, duration);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CotsLogEvent)) {
            return false;
        }
        CotsLogEvent cotsLogEvent = (CotsLogEvent) other;
        return Intrinsics.areEqual(this.event, cotsLogEvent.event) && Intrinsics.areEqual(this.outcome, cotsLogEvent.outcome) && Intrinsics.areEqual(this.cause, cotsLogEvent.cause) && Intrinsics.areEqual(this.duration, cotsLogEvent.duration);
    }

    public int hashCode() {
        int iHashCode = this.event.hashCode() * 31;
        String str = this.outcome;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.cause;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.duration;
        return iHashCode3 + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "CotsLogEvent(event=" + this.event + ", outcome=" + this.outcome + ", cause=" + this.cause + ", duration=" + this.duration + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeString(this.event);
        parcel.writeString(this.outcome);
        parcel.writeString(this.cause);
        Long l = this.duration;
        if (l == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        }
    }

    public CotsLogEvent(String event, String str, String str2, Long l) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.event = event;
        this.outcome = str;
        this.cause = str2;
        this.duration = l;
    }

    public /* synthetic */ CotsLogEvent(String str, String str2, String str3, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : l);
    }

    public final String getEvent() {
        return this.event;
    }

    public final String getOutcome() {
        return this.outcome;
    }

    public final String getCause() {
        return this.cause;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final Pair<String, String>[] toLoggableValues() {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        String str = this.outcome;
        if (str != null) {
            listCreateListBuilder.add(TuplesKt.to("outcome", str));
        }
        String str2 = this.cause;
        if (str2 != null) {
            listCreateListBuilder.add(TuplesKt.to("cause", str2));
        }
        Long l = this.duration;
        if (l != null) {
            listCreateListBuilder.add(TuplesKt.to(TypedValues.TransitionType.S_DURATION, String.valueOf(l.longValue())));
        }
        return (Pair[]) CollectionsKt.build(listCreateListBuilder).toArray(new Pair[0]);
    }
}
