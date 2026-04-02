package com.stripe.proto.model.config;

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
/* JADX INFO: compiled from: EmvApplicationId.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\u0081\u0002\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0018B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/config/EmvApplicationId;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN_AID", "AID_VISA", "AID_VISA_US_COMMON_DEBIT", "AID_VISA_INTERLINK", "AID_VISA_ELECTRON", "AID_MASTERCARD", "AID_INTERNATIONAL_MAESTRO", "AID_US_MAESTRO", "AID_DISCOVER", "AID_DISCOVER_US_COMMON_DEBIT", "AID_DNA_US_COMMON_DEBIT", "AID_AMEX", "AID_CUP", "AID_CUP_DEBIT", "AID_JCB", "AID_INTERAC", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EmvApplicationId implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EmvApplicationId[] $VALUES;
    public static final ProtoAdapter<EmvApplicationId> ADAPTER;
    public static final EmvApplicationId AID_AMEX;
    public static final EmvApplicationId AID_CUP;
    public static final EmvApplicationId AID_CUP_DEBIT;
    public static final EmvApplicationId AID_DISCOVER;
    public static final EmvApplicationId AID_DISCOVER_US_COMMON_DEBIT;
    public static final EmvApplicationId AID_DNA_US_COMMON_DEBIT;
    public static final EmvApplicationId AID_INTERAC;
    public static final EmvApplicationId AID_INTERNATIONAL_MAESTRO;
    public static final EmvApplicationId AID_JCB;
    public static final EmvApplicationId AID_MASTERCARD;
    public static final EmvApplicationId AID_US_MAESTRO;
    public static final EmvApplicationId AID_VISA;
    public static final EmvApplicationId AID_VISA_ELECTRON;
    public static final EmvApplicationId AID_VISA_INTERLINK;
    public static final EmvApplicationId AID_VISA_US_COMMON_DEBIT;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final EmvApplicationId UNKNOWN_AID;
    private final int value;

    private static final /* synthetic */ EmvApplicationId[] $values() {
        return new EmvApplicationId[]{UNKNOWN_AID, AID_VISA, AID_VISA_US_COMMON_DEBIT, AID_VISA_INTERLINK, AID_VISA_ELECTRON, AID_MASTERCARD, AID_INTERNATIONAL_MAESTRO, AID_US_MAESTRO, AID_DISCOVER, AID_DISCOVER_US_COMMON_DEBIT, AID_DNA_US_COMMON_DEBIT, AID_AMEX, AID_CUP, AID_CUP_DEBIT, AID_JCB, AID_INTERAC};
    }

    @JvmStatic
    public static final EmvApplicationId fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<EmvApplicationId> getEntries() {
        return $ENTRIES;
    }

    public static EmvApplicationId valueOf(String str) {
        return (EmvApplicationId) Enum.valueOf(EmvApplicationId.class, str);
    }

    public static EmvApplicationId[] values() {
        return (EmvApplicationId[]) $VALUES.clone();
    }

    private EmvApplicationId(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final EmvApplicationId emvApplicationId = new EmvApplicationId("UNKNOWN_AID", 0, 0);
        UNKNOWN_AID = emvApplicationId;
        AID_VISA = new EmvApplicationId("AID_VISA", 1, 1);
        AID_VISA_US_COMMON_DEBIT = new EmvApplicationId("AID_VISA_US_COMMON_DEBIT", 2, 2);
        AID_VISA_INTERLINK = new EmvApplicationId("AID_VISA_INTERLINK", 3, 3);
        AID_VISA_ELECTRON = new EmvApplicationId("AID_VISA_ELECTRON", 4, 4);
        AID_MASTERCARD = new EmvApplicationId("AID_MASTERCARD", 5, 5);
        AID_INTERNATIONAL_MAESTRO = new EmvApplicationId("AID_INTERNATIONAL_MAESTRO", 6, 6);
        AID_US_MAESTRO = new EmvApplicationId("AID_US_MAESTRO", 7, 7);
        AID_DISCOVER = new EmvApplicationId("AID_DISCOVER", 8, 8);
        AID_DISCOVER_US_COMMON_DEBIT = new EmvApplicationId("AID_DISCOVER_US_COMMON_DEBIT", 9, 9);
        AID_DNA_US_COMMON_DEBIT = new EmvApplicationId("AID_DNA_US_COMMON_DEBIT", 10, 10);
        AID_AMEX = new EmvApplicationId("AID_AMEX", 11, 11);
        AID_CUP = new EmvApplicationId("AID_CUP", 12, 12);
        AID_CUP_DEBIT = new EmvApplicationId("AID_CUP_DEBIT", 13, 13);
        AID_JCB = new EmvApplicationId("AID_JCB", 14, 14);
        AID_INTERAC = new EmvApplicationId("AID_INTERAC", 15, 15);
        EmvApplicationId[] emvApplicationIdArr$values = $values();
        $VALUES = emvApplicationIdArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(emvApplicationIdArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EmvApplicationId.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<EmvApplicationId>(orCreateKotlinClass, syntax, emvApplicationId) { // from class: com.stripe.proto.model.config.EmvApplicationId$Companion$ADAPTER$1
            {
                EmvApplicationId emvApplicationId2 = emvApplicationId;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public EmvApplicationId fromValue(int value) {
                return EmvApplicationId.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: EmvApplicationId.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/EmvApplicationId$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/EmvApplicationId;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final EmvApplicationId fromValue(int value) {
            switch (value) {
                case 0:
                    return EmvApplicationId.UNKNOWN_AID;
                case 1:
                    return EmvApplicationId.AID_VISA;
                case 2:
                    return EmvApplicationId.AID_VISA_US_COMMON_DEBIT;
                case 3:
                    return EmvApplicationId.AID_VISA_INTERLINK;
                case 4:
                    return EmvApplicationId.AID_VISA_ELECTRON;
                case 5:
                    return EmvApplicationId.AID_MASTERCARD;
                case 6:
                    return EmvApplicationId.AID_INTERNATIONAL_MAESTRO;
                case 7:
                    return EmvApplicationId.AID_US_MAESTRO;
                case 8:
                    return EmvApplicationId.AID_DISCOVER;
                case 9:
                    return EmvApplicationId.AID_DISCOVER_US_COMMON_DEBIT;
                case 10:
                    return EmvApplicationId.AID_DNA_US_COMMON_DEBIT;
                case 11:
                    return EmvApplicationId.AID_AMEX;
                case 12:
                    return EmvApplicationId.AID_CUP;
                case 13:
                    return EmvApplicationId.AID_CUP_DEBIT;
                case 14:
                    return EmvApplicationId.AID_JCB;
                case 15:
                    return EmvApplicationId.AID_INTERAC;
                default:
                    return null;
            }
        }
    }
}
