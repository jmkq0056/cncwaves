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
/* JADX INFO: compiled from: ManualPanEntryType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/bbpos/sdk/ManualPanEntryType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "MANUAL_PAN_ENTRY_TYPE_UNKNOWN", "PAN", "EXPIRY_DATE", "CVV", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ManualPanEntryType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ManualPanEntryType[] $VALUES;
    public static final ProtoAdapter<ManualPanEntryType> ADAPTER;
    public static final ManualPanEntryType CVV;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ManualPanEntryType EXPIRY_DATE;
    public static final ManualPanEntryType MANUAL_PAN_ENTRY_TYPE_UNKNOWN;
    public static final ManualPanEntryType PAN;
    private final int value;

    private static final /* synthetic */ ManualPanEntryType[] $values() {
        return new ManualPanEntryType[]{MANUAL_PAN_ENTRY_TYPE_UNKNOWN, PAN, EXPIRY_DATE, CVV};
    }

    @JvmStatic
    public static final ManualPanEntryType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ManualPanEntryType> getEntries() {
        return $ENTRIES;
    }

    public static ManualPanEntryType valueOf(String str) {
        return (ManualPanEntryType) Enum.valueOf(ManualPanEntryType.class, str);
    }

    public static ManualPanEntryType[] values() {
        return (ManualPanEntryType[]) $VALUES.clone();
    }

    private ManualPanEntryType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ManualPanEntryType manualPanEntryType = new ManualPanEntryType("MANUAL_PAN_ENTRY_TYPE_UNKNOWN", 0, 0);
        MANUAL_PAN_ENTRY_TYPE_UNKNOWN = manualPanEntryType;
        PAN = new ManualPanEntryType("PAN", 1, 1);
        EXPIRY_DATE = new ManualPanEntryType("EXPIRY_DATE", 2, 2);
        CVV = new ManualPanEntryType("CVV", 3, 3);
        ManualPanEntryType[] manualPanEntryTypeArr$values = $values();
        $VALUES = manualPanEntryTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(manualPanEntryTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ManualPanEntryType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ManualPanEntryType>(orCreateKotlinClass, syntax, manualPanEntryType) { // from class: com.stripe.bbpos.sdk.ManualPanEntryType$Companion$ADAPTER$1
            {
                ManualPanEntryType manualPanEntryType2 = manualPanEntryType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ManualPanEntryType fromValue(int value) {
                return ManualPanEntryType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ManualPanEntryType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/ManualPanEntryType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/ManualPanEntryType;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ManualPanEntryType fromValue(int value) {
            if (value == 0) {
                return ManualPanEntryType.MANUAL_PAN_ENTRY_TYPE_UNKNOWN;
            }
            if (value == 1) {
                return ManualPanEntryType.PAN;
            }
            if (value == 2) {
                return ManualPanEntryType.EXPIRY_DATE;
            }
            if (value != 3) {
                return null;
            }
            return ManualPanEntryType.CVV;
        }
    }
}
