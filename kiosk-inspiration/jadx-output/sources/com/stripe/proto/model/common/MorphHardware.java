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
/* JADX INFO: compiled from: MorphHardware.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0011B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/common/MorphHardware;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "MORPH_MODEL_NOT_SET", "VFS0100", "VFS0200", "VFM0100", "VFM0200", "VFU0100", "CTS0100", "CTM0100", "CTU0100", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MorphHardware implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MorphHardware[] $VALUES;
    public static final ProtoAdapter<MorphHardware> ADAPTER;
    public static final MorphHardware CTM0100;
    public static final MorphHardware CTS0100;
    public static final MorphHardware CTU0100;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final MorphHardware MORPH_MODEL_NOT_SET;
    public static final MorphHardware VFM0100;
    public static final MorphHardware VFM0200;
    public static final MorphHardware VFS0100;
    public static final MorphHardware VFS0200;
    public static final MorphHardware VFU0100;
    private final int value;

    private static final /* synthetic */ MorphHardware[] $values() {
        return new MorphHardware[]{MORPH_MODEL_NOT_SET, VFS0100, VFS0200, VFM0100, VFM0200, VFU0100, CTS0100, CTM0100, CTU0100};
    }

    @JvmStatic
    public static final MorphHardware fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<MorphHardware> getEntries() {
        return $ENTRIES;
    }

    public static MorphHardware valueOf(String str) {
        return (MorphHardware) Enum.valueOf(MorphHardware.class, str);
    }

    public static MorphHardware[] values() {
        return (MorphHardware[]) $VALUES.clone();
    }

    private MorphHardware(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final MorphHardware morphHardware = new MorphHardware("MORPH_MODEL_NOT_SET", 0, 0);
        MORPH_MODEL_NOT_SET = morphHardware;
        VFS0100 = new MorphHardware("VFS0100", 1, 1);
        VFS0200 = new MorphHardware("VFS0200", 2, 2);
        VFM0100 = new MorphHardware("VFM0100", 3, 3);
        VFM0200 = new MorphHardware("VFM0200", 4, 4);
        VFU0100 = new MorphHardware("VFU0100", 5, 5);
        CTS0100 = new MorphHardware("CTS0100", 6, 6);
        CTM0100 = new MorphHardware("CTM0100", 7, 7);
        CTU0100 = new MorphHardware("CTU0100", 8, 8);
        MorphHardware[] morphHardwareArr$values = $values();
        $VALUES = morphHardwareArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(morphHardwareArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MorphHardware.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<MorphHardware>(orCreateKotlinClass, syntax, morphHardware) { // from class: com.stripe.proto.model.common.MorphHardware$Companion$ADAPTER$1
            {
                MorphHardware morphHardware2 = morphHardware;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public MorphHardware fromValue(int value) {
                return MorphHardware.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: MorphHardware.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/MorphHardware$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/MorphHardware;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final MorphHardware fromValue(int value) {
            switch (value) {
                case 0:
                    return MorphHardware.MORPH_MODEL_NOT_SET;
                case 1:
                    return MorphHardware.VFS0100;
                case 2:
                    return MorphHardware.VFS0200;
                case 3:
                    return MorphHardware.VFM0100;
                case 4:
                    return MorphHardware.VFM0200;
                case 5:
                    return MorphHardware.VFU0100;
                case 6:
                    return MorphHardware.CTS0100;
                case 7:
                    return MorphHardware.CTM0100;
                case 8:
                    return MorphHardware.CTU0100;
                default:
                    return null;
            }
        }
    }
}
