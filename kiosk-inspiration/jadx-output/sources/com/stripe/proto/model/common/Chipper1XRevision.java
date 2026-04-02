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
/* JADX INFO: compiled from: Chipper1XRevision.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/common/Chipper1XRevision;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CHIPPER1X_REVISION_UNKNOWN", "CHIPPER1X_10", "CHIPPER1X_11", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Chipper1XRevision implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Chipper1XRevision[] $VALUES;
    public static final ProtoAdapter<Chipper1XRevision> ADAPTER;
    public static final Chipper1XRevision CHIPPER1X_10;
    public static final Chipper1XRevision CHIPPER1X_11;
    public static final Chipper1XRevision CHIPPER1X_REVISION_UNKNOWN;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final int value;

    private static final /* synthetic */ Chipper1XRevision[] $values() {
        return new Chipper1XRevision[]{CHIPPER1X_REVISION_UNKNOWN, CHIPPER1X_10, CHIPPER1X_11};
    }

    @JvmStatic
    public static final Chipper1XRevision fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<Chipper1XRevision> getEntries() {
        return $ENTRIES;
    }

    public static Chipper1XRevision valueOf(String str) {
        return (Chipper1XRevision) Enum.valueOf(Chipper1XRevision.class, str);
    }

    public static Chipper1XRevision[] values() {
        return (Chipper1XRevision[]) $VALUES.clone();
    }

    private Chipper1XRevision(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final Chipper1XRevision chipper1XRevision = new Chipper1XRevision("CHIPPER1X_REVISION_UNKNOWN", 0, 0);
        CHIPPER1X_REVISION_UNKNOWN = chipper1XRevision;
        CHIPPER1X_10 = new Chipper1XRevision("CHIPPER1X_10", 1, 1);
        CHIPPER1X_11 = new Chipper1XRevision("CHIPPER1X_11", 2, 2);
        Chipper1XRevision[] chipper1XRevisionArr$values = $values();
        $VALUES = chipper1XRevisionArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(chipper1XRevisionArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Chipper1XRevision.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<Chipper1XRevision>(orCreateKotlinClass, syntax, chipper1XRevision) { // from class: com.stripe.proto.model.common.Chipper1XRevision$Companion$ADAPTER$1
            {
                Chipper1XRevision chipper1XRevision2 = chipper1XRevision;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public Chipper1XRevision fromValue(int value) {
                return Chipper1XRevision.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: Chipper1XRevision.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/Chipper1XRevision$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/Chipper1XRevision;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Chipper1XRevision fromValue(int value) {
            if (value == 0) {
                return Chipper1XRevision.CHIPPER1X_REVISION_UNKNOWN;
            }
            if (value == 1) {
                return Chipper1XRevision.CHIPPER1X_10;
            }
            if (value != 2) {
                return null;
            }
            return Chipper1XRevision.CHIPPER1X_11;
        }
    }
}
