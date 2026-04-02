package com.stripe.proto.terminal_observability.pub.message;

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
/* JADX INFO: compiled from: TamperType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal_observability/pub/message/TamperType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "TAMPER_TYPE_INVALID", "UNRECOVERABLE_TAMPER", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TamperType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TamperType[] $VALUES;
    public static final ProtoAdapter<TamperType> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final TamperType TAMPER_TYPE_INVALID;
    public static final TamperType UNRECOVERABLE_TAMPER;
    private final int value;

    private static final /* synthetic */ TamperType[] $values() {
        return new TamperType[]{TAMPER_TYPE_INVALID, UNRECOVERABLE_TAMPER};
    }

    @JvmStatic
    public static final TamperType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<TamperType> getEntries() {
        return $ENTRIES;
    }

    public static TamperType valueOf(String str) {
        return (TamperType) Enum.valueOf(TamperType.class, str);
    }

    public static TamperType[] values() {
        return (TamperType[]) $VALUES.clone();
    }

    private TamperType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final TamperType tamperType = new TamperType("TAMPER_TYPE_INVALID", 0, 0);
        TAMPER_TYPE_INVALID = tamperType;
        UNRECOVERABLE_TAMPER = new TamperType("UNRECOVERABLE_TAMPER", 1, 1);
        TamperType[] tamperTypeArr$values = $values();
        $VALUES = tamperTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(tamperTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TamperType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<TamperType>(orCreateKotlinClass, syntax, tamperType) { // from class: com.stripe.proto.terminal_observability.pub.message.TamperType$Companion$ADAPTER$1
            {
                TamperType tamperType2 = tamperType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public TamperType fromValue(int value) {
                return TamperType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: TamperType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal_observability/pub/message/TamperType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal_observability/pub/message/TamperType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final TamperType fromValue(int value) {
            if (value == 0) {
                return TamperType.TAMPER_TYPE_INVALID;
            }
            if (value != 1) {
                return null;
            }
            return TamperType.UNRECOVERABLE_TAMPER;
        }
    }
}
