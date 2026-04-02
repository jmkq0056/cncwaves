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
/* JADX INFO: compiled from: Livemode.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/Livemode;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "TRUE", "FALSE", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Livemode implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Livemode[] $VALUES;
    public static final ProtoAdapter<Livemode> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @Deprecated(message = "FALSE is deprecated")
    public static final Livemode FALSE;

    @Deprecated(message = "TRUE is deprecated")
    public static final Livemode TRUE;
    private final int value;

    private static final /* synthetic */ Livemode[] $values() {
        return new Livemode[]{TRUE, FALSE};
    }

    @JvmStatic
    public static final Livemode fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<Livemode> getEntries() {
        return $ENTRIES;
    }

    public static Livemode valueOf(String str) {
        return (Livemode) Enum.valueOf(Livemode.class, str);
    }

    public static Livemode[] values() {
        return (Livemode[]) $VALUES.clone();
    }

    private Livemode(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final Livemode livemode = new Livemode("TRUE", 0, 0);
        TRUE = livemode;
        FALSE = new Livemode("FALSE", 1, 1);
        Livemode[] livemodeArr$values = $values();
        $VALUES = livemodeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(livemodeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Livemode.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<Livemode>(orCreateKotlinClass, syntax, livemode) { // from class: com.stripe.proto.model.common.Livemode$Companion$ADAPTER$1
            {
                Livemode livemode2 = livemode;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public Livemode fromValue(int value) {
                return Livemode.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: Livemode.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/Livemode$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/Livemode;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Livemode fromValue(int value) {
            if (value == 0) {
                return Livemode.TRUE;
            }
            if (value != 1) {
                return null;
            }
            return Livemode.FALSE;
        }
    }
}
