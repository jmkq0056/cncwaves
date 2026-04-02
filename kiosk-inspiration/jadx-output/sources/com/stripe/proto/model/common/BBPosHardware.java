package com.stripe.proto.model.common;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: BBPosHardware.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001a\b\u0086\u0081\u0002\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u001dB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/model/common/BBPosHardware;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "BBPOS_MODEL_NOT_SET", "CHIPPER2X", "WISEPAD3", "WISEPAD3S", "WISEPOSPLUS", "WISEPOS_E", "STRIPEM2", "CHIPPER1X", "WISECUBE", "WISEPOS_E_DEBUG", "SHOPIFY_ETNA", "SHOPIFY_ETNA_DEBUG", "S7", "S7_DEBUG", "WISEPOS_E_DEVKIT", "STRIPE_S700", "STRIPE_S700_DEBUG", "STRIPE_S700_DEVKIT", "STRIPE_S710", "STRIPE_S710_DEBUG", "STRIPE_S710_DEVKIT", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BBPosHardware implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BBPosHardware[] $VALUES;
    public static final ProtoAdapter<BBPosHardware> ADAPTER;
    public static final BBPosHardware BBPOS_MODEL_NOT_SET;
    public static final BBPosHardware CHIPPER1X;
    public static final BBPosHardware CHIPPER2X;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @Deprecated(message = "S7 is deprecated")
    public static final BBPosHardware S7;

    @Deprecated(message = "S7_DEBUG is deprecated")
    public static final BBPosHardware S7_DEBUG;
    public static final BBPosHardware SHOPIFY_ETNA;
    public static final BBPosHardware SHOPIFY_ETNA_DEBUG;
    public static final BBPosHardware STRIPEM2;
    public static final BBPosHardware STRIPE_S700;
    public static final BBPosHardware STRIPE_S700_DEBUG;
    public static final BBPosHardware STRIPE_S700_DEVKIT;
    public static final BBPosHardware STRIPE_S710;
    public static final BBPosHardware STRIPE_S710_DEBUG;
    public static final BBPosHardware STRIPE_S710_DEVKIT;
    public static final BBPosHardware WISECUBE;
    public static final BBPosHardware WISEPAD3;
    public static final BBPosHardware WISEPAD3S;

    @Deprecated(message = "WISEPOSPLUS is deprecated")
    public static final BBPosHardware WISEPOSPLUS;
    public static final BBPosHardware WISEPOS_E;
    public static final BBPosHardware WISEPOS_E_DEBUG;
    public static final BBPosHardware WISEPOS_E_DEVKIT;
    private final int value;

    private static final /* synthetic */ BBPosHardware[] $values() {
        return new BBPosHardware[]{BBPOS_MODEL_NOT_SET, CHIPPER2X, WISEPAD3, WISEPAD3S, WISEPOSPLUS, WISEPOS_E, STRIPEM2, CHIPPER1X, WISECUBE, WISEPOS_E_DEBUG, SHOPIFY_ETNA, SHOPIFY_ETNA_DEBUG, S7, S7_DEBUG, WISEPOS_E_DEVKIT, STRIPE_S700, STRIPE_S700_DEBUG, STRIPE_S700_DEVKIT, STRIPE_S710, STRIPE_S710_DEBUG, STRIPE_S710_DEVKIT};
    }

    @JvmStatic
    public static final BBPosHardware fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<BBPosHardware> getEntries() {
        return $ENTRIES;
    }

    public static BBPosHardware valueOf(String str) {
        return (BBPosHardware) Enum.valueOf(BBPosHardware.class, str);
    }

    public static BBPosHardware[] values() {
        return (BBPosHardware[]) $VALUES.clone();
    }

    private BBPosHardware(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final BBPosHardware bBPosHardware = new BBPosHardware("BBPOS_MODEL_NOT_SET", 0, 0);
        BBPOS_MODEL_NOT_SET = bBPosHardware;
        CHIPPER2X = new BBPosHardware("CHIPPER2X", 1, 1);
        WISEPAD3 = new BBPosHardware("WISEPAD3", 2, 2);
        WISEPAD3S = new BBPosHardware("WISEPAD3S", 3, 16);
        WISEPOSPLUS = new BBPosHardware("WISEPOSPLUS", 4, 3);
        WISEPOS_E = new BBPosHardware("WISEPOS_E", 5, 4);
        STRIPEM2 = new BBPosHardware("STRIPEM2", 6, 5);
        CHIPPER1X = new BBPosHardware("CHIPPER1X", 7, 6);
        WISECUBE = new BBPosHardware("WISECUBE", 8, 7);
        WISEPOS_E_DEBUG = new BBPosHardware("WISEPOS_E_DEBUG", 9, 8);
        SHOPIFY_ETNA = new BBPosHardware("SHOPIFY_ETNA", 10, 9);
        SHOPIFY_ETNA_DEBUG = new BBPosHardware("SHOPIFY_ETNA_DEBUG", 11, 10);
        S7 = new BBPosHardware("S7", 12, 11);
        S7_DEBUG = new BBPosHardware("S7_DEBUG", 13, 12);
        WISEPOS_E_DEVKIT = new BBPosHardware("WISEPOS_E_DEVKIT", 14, 13);
        STRIPE_S700 = new BBPosHardware("STRIPE_S700", 15, 14);
        STRIPE_S700_DEBUG = new BBPosHardware("STRIPE_S700_DEBUG", 16, 15);
        STRIPE_S700_DEVKIT = new BBPosHardware("STRIPE_S700_DEVKIT", 17, 17);
        STRIPE_S710 = new BBPosHardware("STRIPE_S710", 18, 18);
        STRIPE_S710_DEBUG = new BBPosHardware("STRIPE_S710_DEBUG", 19, 19);
        STRIPE_S710_DEVKIT = new BBPosHardware("STRIPE_S710_DEVKIT", 20, 20);
        BBPosHardware[] bBPosHardwareArr$values = $values();
        $VALUES = bBPosHardwareArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(bBPosHardwareArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BBPosHardware.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<BBPosHardware>(orCreateKotlinClass, syntax, bBPosHardware) { // from class: com.stripe.proto.model.common.BBPosHardware$Companion$ADAPTER$1
            {
                BBPosHardware bBPosHardware2 = bBPosHardware;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public BBPosHardware fromValue(int value) {
                return BBPosHardware.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: BBPosHardware.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/BBPosHardware$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/BBPosHardware;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final BBPosHardware fromValue(int value) {
            switch (value) {
                case 0:
                    return BBPosHardware.BBPOS_MODEL_NOT_SET;
                case 1:
                    return BBPosHardware.CHIPPER2X;
                case 2:
                    return BBPosHardware.WISEPAD3;
                case 3:
                    return BBPosHardware.WISEPOSPLUS;
                case 4:
                    return BBPosHardware.WISEPOS_E;
                case 5:
                    return BBPosHardware.STRIPEM2;
                case 6:
                    return BBPosHardware.CHIPPER1X;
                case 7:
                    return BBPosHardware.WISECUBE;
                case 8:
                    return BBPosHardware.WISEPOS_E_DEBUG;
                case 9:
                    return BBPosHardware.SHOPIFY_ETNA;
                case 10:
                    return BBPosHardware.SHOPIFY_ETNA_DEBUG;
                case 11:
                    return BBPosHardware.S7;
                case 12:
                    return BBPosHardware.S7_DEBUG;
                case 13:
                    return BBPosHardware.WISEPOS_E_DEVKIT;
                case 14:
                    return BBPosHardware.STRIPE_S700;
                case 15:
                    return BBPosHardware.STRIPE_S700_DEBUG;
                case 16:
                    return BBPosHardware.WISEPAD3S;
                case 17:
                    return BBPosHardware.STRIPE_S700_DEVKIT;
                case 18:
                    return BBPosHardware.STRIPE_S710;
                case 19:
                    return BBPosHardware.STRIPE_S710_DEBUG;
                case 20:
                    return BBPosHardware.STRIPE_S710_DEVKIT;
                default:
                    return null;
            }
        }
    }
}
