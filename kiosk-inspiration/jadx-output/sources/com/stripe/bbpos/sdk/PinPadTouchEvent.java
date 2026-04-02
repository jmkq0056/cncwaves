package com.stripe.bbpos.sdk;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: PinPadTouchEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PIN_PAD_TOUCH_EVENT_UNKNOWN", "OUT_OF_PIN_PAD", "NEW_KEY_DETECTED", "BACKSPACE_KEY_DETECTED", "CLEAR_KEY_DETECTED", "CANCEL_KEY_DETECTED", "ENTER_KEY_DETECTED", "ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PinPadTouchEvent implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PinPadTouchEvent[] $VALUES;
    public static final ProtoAdapter<PinPadTouchEvent> ADAPTER;
    public static final PinPadTouchEvent BACKSPACE_KEY_DETECTED;
    public static final PinPadTouchEvent CANCEL_KEY_DETECTED;
    public static final PinPadTouchEvent CLEAR_KEY_DETECTED;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final PinPadTouchEvent ENTER_KEY_DETECTED;
    public static final PinPadTouchEvent ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH;
    public static final PinPadTouchEvent NEW_KEY_DETECTED;
    public static final PinPadTouchEvent OUT_OF_PIN_PAD;
    public static final PinPadTouchEvent PIN_PAD_TOUCH_EVENT_UNKNOWN;
    private final int value;

    private static final /* synthetic */ PinPadTouchEvent[] $values() {
        return new PinPadTouchEvent[]{PIN_PAD_TOUCH_EVENT_UNKNOWN, OUT_OF_PIN_PAD, NEW_KEY_DETECTED, BACKSPACE_KEY_DETECTED, CLEAR_KEY_DETECTED, CANCEL_KEY_DETECTED, ENTER_KEY_DETECTED, ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH};
    }

    @JvmStatic
    public static final PinPadTouchEvent fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<PinPadTouchEvent> getEntries() {
        return $ENTRIES;
    }

    public static PinPadTouchEvent valueOf(String str) {
        return (PinPadTouchEvent) Enum.valueOf(PinPadTouchEvent.class, str);
    }

    public static PinPadTouchEvent[] values() {
        return (PinPadTouchEvent[]) $VALUES.clone();
    }

    private PinPadTouchEvent(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final PinPadTouchEvent pinPadTouchEvent = new PinPadTouchEvent("PIN_PAD_TOUCH_EVENT_UNKNOWN", 0, 0);
        PIN_PAD_TOUCH_EVENT_UNKNOWN = pinPadTouchEvent;
        OUT_OF_PIN_PAD = new PinPadTouchEvent("OUT_OF_PIN_PAD", 1, 1);
        NEW_KEY_DETECTED = new PinPadTouchEvent("NEW_KEY_DETECTED", 2, 2);
        BACKSPACE_KEY_DETECTED = new PinPadTouchEvent("BACKSPACE_KEY_DETECTED", 3, 3);
        CLEAR_KEY_DETECTED = new PinPadTouchEvent("CLEAR_KEY_DETECTED", 4, 4);
        CANCEL_KEY_DETECTED = new PinPadTouchEvent("CANCEL_KEY_DETECTED", 5, 5);
        ENTER_KEY_DETECTED = new PinPadTouchEvent("ENTER_KEY_DETECTED", 6, 6);
        ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH = new PinPadTouchEvent("ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH", 7, 7);
        PinPadTouchEvent[] pinPadTouchEventArr$values = $values();
        $VALUES = pinPadTouchEventArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(pinPadTouchEventArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PinPadTouchEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<PinPadTouchEvent>(orCreateKotlinClass, syntax, pinPadTouchEvent) { // from class: com.stripe.bbpos.sdk.PinPadTouchEvent$Companion$ADAPTER$1
            {
                PinPadTouchEvent pinPadTouchEvent2 = pinPadTouchEvent;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public PinPadTouchEvent fromValue(int value) {
                return PinPadTouchEvent.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: PinPadTouchEvent.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/PinPadTouchEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final PinPadTouchEvent fromValue(int value) {
            switch (value) {
                case 0:
                    return PinPadTouchEvent.PIN_PAD_TOUCH_EVENT_UNKNOWN;
                case 1:
                    return PinPadTouchEvent.OUT_OF_PIN_PAD;
                case 2:
                    return PinPadTouchEvent.NEW_KEY_DETECTED;
                case 3:
                    return PinPadTouchEvent.BACKSPACE_KEY_DETECTED;
                case 4:
                    return PinPadTouchEvent.CLEAR_KEY_DETECTED;
                case 5:
                    return PinPadTouchEvent.CANCEL_KEY_DETECTED;
                case 6:
                    return PinPadTouchEvent.ENTER_KEY_DETECTED;
                case 7:
                    return PinPadTouchEvent.ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH;
                default:
                    return null;
            }
        }
    }
}
