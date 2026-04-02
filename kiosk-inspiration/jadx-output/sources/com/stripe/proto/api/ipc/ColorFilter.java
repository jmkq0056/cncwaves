package com.stripe.proto.api.ipc;

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
/* JADX INFO: compiled from: ColorFilter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/ipc/ColorFilter;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NONE", "MONOCHROMACY", "DEUTERANOMALY", "TRITANOMALY", "PROTANOMALY", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ColorFilter implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ColorFilter[] $VALUES;
    public static final ProtoAdapter<ColorFilter> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ColorFilter DEUTERANOMALY;
    public static final ColorFilter MONOCHROMACY;
    public static final ColorFilter NONE;
    public static final ColorFilter PROTANOMALY;
    public static final ColorFilter TRITANOMALY;
    private final int value;

    private static final /* synthetic */ ColorFilter[] $values() {
        return new ColorFilter[]{NONE, MONOCHROMACY, DEUTERANOMALY, TRITANOMALY, PROTANOMALY};
    }

    @JvmStatic
    public static final ColorFilter fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ColorFilter> getEntries() {
        return $ENTRIES;
    }

    public static ColorFilter valueOf(String str) {
        return (ColorFilter) Enum.valueOf(ColorFilter.class, str);
    }

    public static ColorFilter[] values() {
        return (ColorFilter[]) $VALUES.clone();
    }

    private ColorFilter(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ColorFilter colorFilter = new ColorFilter("NONE", 0, 0);
        NONE = colorFilter;
        MONOCHROMACY = new ColorFilter("MONOCHROMACY", 1, 1);
        DEUTERANOMALY = new ColorFilter("DEUTERANOMALY", 2, 2);
        TRITANOMALY = new ColorFilter("TRITANOMALY", 3, 3);
        PROTANOMALY = new ColorFilter("PROTANOMALY", 4, 4);
        ColorFilter[] colorFilterArr$values = $values();
        $VALUES = colorFilterArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(colorFilterArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ColorFilter.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ColorFilter>(orCreateKotlinClass, syntax, colorFilter) { // from class: com.stripe.proto.api.ipc.ColorFilter$Companion$ADAPTER$1
            {
                ColorFilter colorFilter2 = colorFilter;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ColorFilter fromValue(int value) {
                return ColorFilter.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ColorFilter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/ipc/ColorFilter$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/ipc/ColorFilter;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ColorFilter fromValue(int value) {
            if (value == 0) {
                return ColorFilter.NONE;
            }
            if (value == 1) {
                return ColorFilter.MONOCHROMACY;
            }
            if (value == 2) {
                return ColorFilter.DEUTERANOMALY;
            }
            if (value == 3) {
                return ColorFilter.TRITANOMALY;
            }
            if (value != 4) {
                return null;
            }
            return ColorFilter.PROTANOMALY;
        }
    }
}
