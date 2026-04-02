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
/* JADX INFO: compiled from: WiseCubeRevision.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/common/WiseCubeRevision;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "WISECUBE_REVISION_UNKNOWN", "WISECUBE_60", "WISECUBE_61", "WISECUBE_64", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WiseCubeRevision implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WiseCubeRevision[] $VALUES;
    public static final ProtoAdapter<WiseCubeRevision> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final WiseCubeRevision WISECUBE_60;
    public static final WiseCubeRevision WISECUBE_61;
    public static final WiseCubeRevision WISECUBE_64;
    public static final WiseCubeRevision WISECUBE_REVISION_UNKNOWN;
    private final int value;

    private static final /* synthetic */ WiseCubeRevision[] $values() {
        return new WiseCubeRevision[]{WISECUBE_REVISION_UNKNOWN, WISECUBE_60, WISECUBE_61, WISECUBE_64};
    }

    @JvmStatic
    public static final WiseCubeRevision fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<WiseCubeRevision> getEntries() {
        return $ENTRIES;
    }

    public static WiseCubeRevision valueOf(String str) {
        return (WiseCubeRevision) Enum.valueOf(WiseCubeRevision.class, str);
    }

    public static WiseCubeRevision[] values() {
        return (WiseCubeRevision[]) $VALUES.clone();
    }

    private WiseCubeRevision(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final WiseCubeRevision wiseCubeRevision = new WiseCubeRevision("WISECUBE_REVISION_UNKNOWN", 0, 0);
        WISECUBE_REVISION_UNKNOWN = wiseCubeRevision;
        WISECUBE_60 = new WiseCubeRevision("WISECUBE_60", 1, 1);
        WISECUBE_61 = new WiseCubeRevision("WISECUBE_61", 2, 2);
        WISECUBE_64 = new WiseCubeRevision("WISECUBE_64", 3, 3);
        WiseCubeRevision[] wiseCubeRevisionArr$values = $values();
        $VALUES = wiseCubeRevisionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(wiseCubeRevisionArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WiseCubeRevision.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<WiseCubeRevision>(orCreateKotlinClass, syntax, wiseCubeRevision) { // from class: com.stripe.proto.model.common.WiseCubeRevision$Companion$ADAPTER$1
            {
                WiseCubeRevision wiseCubeRevision2 = wiseCubeRevision;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public WiseCubeRevision fromValue(int value) {
                return WiseCubeRevision.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: WiseCubeRevision.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/WiseCubeRevision$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/WiseCubeRevision;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final WiseCubeRevision fromValue(int value) {
            if (value == 0) {
                return WiseCubeRevision.WISECUBE_REVISION_UNKNOWN;
            }
            if (value == 1) {
                return WiseCubeRevision.WISECUBE_60;
            }
            if (value == 2) {
                return WiseCubeRevision.WISECUBE_61;
            }
            if (value != 3) {
                return null;
            }
            return WiseCubeRevision.WISECUBE_64;
        }
    }
}
