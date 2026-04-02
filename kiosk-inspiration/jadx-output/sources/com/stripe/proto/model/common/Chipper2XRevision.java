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
/* JADX INFO: compiled from: Chipper2XRevision.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/common/Chipper2XRevision;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CHIPPER2X_REVISION_UNKNOWN", "CHIPPER2X_20", "CHIPPER2X_20Y", "CHIPPER2X_20Z", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Chipper2XRevision implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Chipper2XRevision[] $VALUES;
    public static final ProtoAdapter<Chipper2XRevision> ADAPTER;
    public static final Chipper2XRevision CHIPPER2X_20;
    public static final Chipper2XRevision CHIPPER2X_20Y;
    public static final Chipper2XRevision CHIPPER2X_20Z;
    public static final Chipper2XRevision CHIPPER2X_REVISION_UNKNOWN;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final int value;

    private static final /* synthetic */ Chipper2XRevision[] $values() {
        return new Chipper2XRevision[]{CHIPPER2X_REVISION_UNKNOWN, CHIPPER2X_20, CHIPPER2X_20Y, CHIPPER2X_20Z};
    }

    @JvmStatic
    public static final Chipper2XRevision fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<Chipper2XRevision> getEntries() {
        return $ENTRIES;
    }

    public static Chipper2XRevision valueOf(String str) {
        return (Chipper2XRevision) Enum.valueOf(Chipper2XRevision.class, str);
    }

    public static Chipper2XRevision[] values() {
        return (Chipper2XRevision[]) $VALUES.clone();
    }

    private Chipper2XRevision(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final Chipper2XRevision chipper2XRevision = new Chipper2XRevision("CHIPPER2X_REVISION_UNKNOWN", 0, 0);
        CHIPPER2X_REVISION_UNKNOWN = chipper2XRevision;
        CHIPPER2X_20 = new Chipper2XRevision("CHIPPER2X_20", 1, 1);
        CHIPPER2X_20Y = new Chipper2XRevision("CHIPPER2X_20Y", 2, 2);
        CHIPPER2X_20Z = new Chipper2XRevision("CHIPPER2X_20Z", 3, 3);
        Chipper2XRevision[] chipper2XRevisionArr$values = $values();
        $VALUES = chipper2XRevisionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(chipper2XRevisionArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Chipper2XRevision.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<Chipper2XRevision>(orCreateKotlinClass, syntax, chipper2XRevision) { // from class: com.stripe.proto.model.common.Chipper2XRevision$Companion$ADAPTER$1
            {
                Chipper2XRevision chipper2XRevision2 = chipper2XRevision;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public Chipper2XRevision fromValue(int value) {
                return Chipper2XRevision.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: Chipper2XRevision.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/Chipper2XRevision$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/Chipper2XRevision;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Chipper2XRevision fromValue(int value) {
            if (value == 0) {
                return Chipper2XRevision.CHIPPER2X_REVISION_UNKNOWN;
            }
            if (value == 1) {
                return Chipper2XRevision.CHIPPER2X_20;
            }
            if (value == 2) {
                return Chipper2XRevision.CHIPPER2X_20Y;
            }
            if (value != 3) {
                return null;
            }
            return Chipper2XRevision.CHIPPER2X_20Z;
        }
    }
}
