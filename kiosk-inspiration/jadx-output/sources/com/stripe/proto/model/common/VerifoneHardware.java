package com.stripe.proto.model.common;

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
/* JADX INFO: compiled from: VerifoneHardware.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/common/VerifoneHardware;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "MODEL_NOT_SET", "P400", "P400_DEBUG", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VerifoneHardware implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ VerifoneHardware[] $VALUES;
    public static final ProtoAdapter<VerifoneHardware> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final VerifoneHardware MODEL_NOT_SET;
    public static final VerifoneHardware P400;
    public static final VerifoneHardware P400_DEBUG;
    private final int value;

    private static final /* synthetic */ VerifoneHardware[] $values() {
        return new VerifoneHardware[]{MODEL_NOT_SET, P400, P400_DEBUG};
    }

    @JvmStatic
    public static final VerifoneHardware fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<VerifoneHardware> getEntries() {
        return $ENTRIES;
    }

    public static VerifoneHardware valueOf(String str) {
        return (VerifoneHardware) Enum.valueOf(VerifoneHardware.class, str);
    }

    public static VerifoneHardware[] values() {
        return (VerifoneHardware[]) $VALUES.clone();
    }

    private VerifoneHardware(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final VerifoneHardware verifoneHardware = new VerifoneHardware("MODEL_NOT_SET", 0, 0);
        MODEL_NOT_SET = verifoneHardware;
        P400 = new VerifoneHardware("P400", 1, 1);
        P400_DEBUG = new VerifoneHardware("P400_DEBUG", 2, 2);
        VerifoneHardware[] verifoneHardwareArr$values = $values();
        $VALUES = verifoneHardwareArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(verifoneHardwareArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(VerifoneHardware.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<VerifoneHardware>(orCreateKotlinClass, syntax, verifoneHardware) { // from class: com.stripe.proto.model.common.VerifoneHardware$Companion$ADAPTER$1
            {
                VerifoneHardware verifoneHardware2 = verifoneHardware;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public VerifoneHardware fromValue(int value) {
                return VerifoneHardware.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: VerifoneHardware.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/VerifoneHardware$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/VerifoneHardware;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final VerifoneHardware fromValue(int value) {
            if (value == 0) {
                return VerifoneHardware.MODEL_NOT_SET;
            }
            if (value == 1) {
                return VerifoneHardware.P400;
            }
            if (value != 2) {
                return null;
            }
            return VerifoneHardware.P400_DEBUG;
        }
    }
}
