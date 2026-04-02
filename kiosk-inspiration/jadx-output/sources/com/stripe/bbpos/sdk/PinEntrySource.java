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
/* JADX INFO: compiled from: PinEntrySource.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/bbpos/sdk/PinEntrySource;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PIN_ENTRY_SOURCE_UNKNOWN", "PHONE", "KEYPAD", "SMARTPOS", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PinEntrySource implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PinEntrySource[] $VALUES;
    public static final ProtoAdapter<PinEntrySource> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final PinEntrySource KEYPAD;
    public static final PinEntrySource PHONE;
    public static final PinEntrySource PIN_ENTRY_SOURCE_UNKNOWN;
    public static final PinEntrySource SMARTPOS;
    private final int value;

    private static final /* synthetic */ PinEntrySource[] $values() {
        return new PinEntrySource[]{PIN_ENTRY_SOURCE_UNKNOWN, PHONE, KEYPAD, SMARTPOS};
    }

    @JvmStatic
    public static final PinEntrySource fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<PinEntrySource> getEntries() {
        return $ENTRIES;
    }

    public static PinEntrySource valueOf(String str) {
        return (PinEntrySource) Enum.valueOf(PinEntrySource.class, str);
    }

    public static PinEntrySource[] values() {
        return (PinEntrySource[]) $VALUES.clone();
    }

    private PinEntrySource(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final PinEntrySource pinEntrySource = new PinEntrySource("PIN_ENTRY_SOURCE_UNKNOWN", 0, 0);
        PIN_ENTRY_SOURCE_UNKNOWN = pinEntrySource;
        PHONE = new PinEntrySource("PHONE", 1, 1);
        KEYPAD = new PinEntrySource("KEYPAD", 2, 2);
        SMARTPOS = new PinEntrySource("SMARTPOS", 3, 3);
        PinEntrySource[] pinEntrySourceArr$values = $values();
        $VALUES = pinEntrySourceArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(pinEntrySourceArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PinEntrySource.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<PinEntrySource>(orCreateKotlinClass, syntax, pinEntrySource) { // from class: com.stripe.bbpos.sdk.PinEntrySource$Companion$ADAPTER$1
            {
                PinEntrySource pinEntrySource2 = pinEntrySource;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public PinEntrySource fromValue(int value) {
                return PinEntrySource.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: PinEntrySource.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/PinEntrySource$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/PinEntrySource;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final PinEntrySource fromValue(int value) {
            if (value == 0) {
                return PinEntrySource.PIN_ENTRY_SOURCE_UNKNOWN;
            }
            if (value == 1) {
                return PinEntrySource.PHONE;
            }
            if (value == 2) {
                return PinEntrySource.KEYPAD;
            }
            if (value != 3) {
                return null;
            }
            return PinEntrySource.SMARTPOS;
        }
    }
}
