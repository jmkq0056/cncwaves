package com.stripe.proto.api.armada;

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
/* JADX INFO: compiled from: BBPosResourceType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/armada/BBPosResourceType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "FIRMWARE", "CONFIG", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BBPosResourceType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BBPosResourceType[] $VALUES;
    public static final ProtoAdapter<BBPosResourceType> ADAPTER;
    public static final BBPosResourceType CONFIG;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final BBPosResourceType FIRMWARE;
    private final int value;

    private static final /* synthetic */ BBPosResourceType[] $values() {
        return new BBPosResourceType[]{FIRMWARE, CONFIG};
    }

    @JvmStatic
    public static final BBPosResourceType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<BBPosResourceType> getEntries() {
        return $ENTRIES;
    }

    public static BBPosResourceType valueOf(String str) {
        return (BBPosResourceType) Enum.valueOf(BBPosResourceType.class, str);
    }

    public static BBPosResourceType[] values() {
        return (BBPosResourceType[]) $VALUES.clone();
    }

    private BBPosResourceType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final BBPosResourceType bBPosResourceType = new BBPosResourceType("FIRMWARE", 0, 0);
        FIRMWARE = bBPosResourceType;
        CONFIG = new BBPosResourceType("CONFIG", 1, 1);
        BBPosResourceType[] bBPosResourceTypeArr$values = $values();
        $VALUES = bBPosResourceTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(bBPosResourceTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BBPosResourceType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<BBPosResourceType>(orCreateKotlinClass, syntax, bBPosResourceType) { // from class: com.stripe.proto.api.armada.BBPosResourceType$Companion$ADAPTER$1
            {
                BBPosResourceType bBPosResourceType2 = bBPosResourceType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public BBPosResourceType fromValue(int value) {
                return BBPosResourceType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: BBPosResourceType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/armada/BBPosResourceType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/BBPosResourceType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final BBPosResourceType fromValue(int value) {
            if (value == 0) {
                return BBPosResourceType.FIRMWARE;
            }
            if (value != 1) {
                return null;
            }
            return BBPosResourceType.CONFIG;
        }
    }
}
