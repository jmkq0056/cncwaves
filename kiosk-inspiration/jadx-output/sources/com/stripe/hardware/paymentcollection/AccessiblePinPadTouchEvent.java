package com.stripe.hardware.paymentcollection;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PinEntryModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;", "", "accessiblePinPadTouchEvent", "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;", "eventId", "", "(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;Ljava/lang/String;)V", "getAccessiblePinPadTouchEvent", "()Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;", "getEventId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Type", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AccessiblePinPadTouchEvent {
    private final Type accessiblePinPadTouchEvent;
    private final String eventId;

    public static /* synthetic */ AccessiblePinPadTouchEvent copy$default(AccessiblePinPadTouchEvent accessiblePinPadTouchEvent, Type type, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            type = accessiblePinPadTouchEvent.accessiblePinPadTouchEvent;
        }
        if ((i & 2) != 0) {
            str = accessiblePinPadTouchEvent.eventId;
        }
        return accessiblePinPadTouchEvent.copy(type, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Type getAccessiblePinPadTouchEvent() {
        return this.accessiblePinPadTouchEvent;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEventId() {
        return this.eventId;
    }

    public final AccessiblePinPadTouchEvent copy(Type accessiblePinPadTouchEvent, String eventId) {
        Intrinsics.checkNotNullParameter(accessiblePinPadTouchEvent, "accessiblePinPadTouchEvent");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        return new AccessiblePinPadTouchEvent(accessiblePinPadTouchEvent, eventId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AccessiblePinPadTouchEvent)) {
            return false;
        }
        AccessiblePinPadTouchEvent accessiblePinPadTouchEvent = (AccessiblePinPadTouchEvent) other;
        return this.accessiblePinPadTouchEvent == accessiblePinPadTouchEvent.accessiblePinPadTouchEvent && Intrinsics.areEqual(this.eventId, accessiblePinPadTouchEvent.eventId);
    }

    public int hashCode() {
        return (this.accessiblePinPadTouchEvent.hashCode() * 31) + this.eventId.hashCode();
    }

    public String toString() {
        return "AccessiblePinPadTouchEvent(accessiblePinPadTouchEvent=" + this.accessiblePinPadTouchEvent + ", eventId=" + this.eventId + ')';
    }

    public AccessiblePinPadTouchEvent(Type accessiblePinPadTouchEvent, String eventId) {
        Intrinsics.checkNotNullParameter(accessiblePinPadTouchEvent, "accessiblePinPadTouchEvent");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        this.accessiblePinPadTouchEvent = accessiblePinPadTouchEvent;
        this.eventId = eventId;
    }

    public final Type getAccessiblePinPadTouchEvent() {
        return this.accessiblePinPadTouchEvent;
    }

    public final String getEventId() {
        return this.eventId;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: PinEntryModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent$Type;", "", "(Ljava/lang/String;I)V", "PIN_PAD_TOUCH_EVENT_UNKNOWN", "OUT_OF_PIN_PAD", "NEW_KEY_DETECTED", "BACKSPACE_KEY_DETECTED", "CLEAR_KEY_DETECTED", "CANCEL_KEY_DETECTED", "ENTER_KEY_DETECTED", "ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Type {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type PIN_PAD_TOUCH_EVENT_UNKNOWN = new Type("PIN_PAD_TOUCH_EVENT_UNKNOWN", 0);
        public static final Type OUT_OF_PIN_PAD = new Type("OUT_OF_PIN_PAD", 1);
        public static final Type NEW_KEY_DETECTED = new Type("NEW_KEY_DETECTED", 2);
        public static final Type BACKSPACE_KEY_DETECTED = new Type("BACKSPACE_KEY_DETECTED", 3);
        public static final Type CLEAR_KEY_DETECTED = new Type("CLEAR_KEY_DETECTED", 4);
        public static final Type CANCEL_KEY_DETECTED = new Type("CANCEL_KEY_DETECTED", 5);
        public static final Type ENTER_KEY_DETECTED = new Type("ENTER_KEY_DETECTED", 6);
        public static final Type ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH = new Type("ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH", 7);

        private static final /* synthetic */ Type[] $values() {
            return new Type[]{PIN_PAD_TOUCH_EVENT_UNKNOWN, OUT_OF_PIN_PAD, NEW_KEY_DETECTED, BACKSPACE_KEY_DETECTED, CLEAR_KEY_DETECTED, CANCEL_KEY_DETECTED, ENTER_KEY_DETECTED, ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH};
        }

        public static EnumEntries<Type> getEntries() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }

        private Type(String str, int i) {
        }

        static {
            Type[] typeArr$values = $values();
            $VALUES = typeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(typeArr$values);
        }
    }
}
