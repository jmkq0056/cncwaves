package com.stripe.proto.event_channel.pub.message;

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
/* JADX INFO: compiled from: AllowRedisplay.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ALLOW_REDISPLAY_INVALID", "ALWAYS", "LIMITED", "UNSPECIFIED", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AllowRedisplay implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AllowRedisplay[] $VALUES;
    public static final ProtoAdapter<AllowRedisplay> ADAPTER;
    public static final AllowRedisplay ALLOW_REDISPLAY_INVALID;
    public static final AllowRedisplay ALWAYS;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final AllowRedisplay LIMITED;
    public static final AllowRedisplay UNSPECIFIED;
    private final int value;

    private static final /* synthetic */ AllowRedisplay[] $values() {
        return new AllowRedisplay[]{ALLOW_REDISPLAY_INVALID, ALWAYS, LIMITED, UNSPECIFIED};
    }

    @JvmStatic
    public static final AllowRedisplay fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<AllowRedisplay> getEntries() {
        return $ENTRIES;
    }

    public static AllowRedisplay valueOf(String str) {
        return (AllowRedisplay) Enum.valueOf(AllowRedisplay.class, str);
    }

    public static AllowRedisplay[] values() {
        return (AllowRedisplay[]) $VALUES.clone();
    }

    private AllowRedisplay(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final AllowRedisplay allowRedisplay = new AllowRedisplay("ALLOW_REDISPLAY_INVALID", 0, 0);
        ALLOW_REDISPLAY_INVALID = allowRedisplay;
        ALWAYS = new AllowRedisplay("ALWAYS", 1, 1);
        LIMITED = new AllowRedisplay("LIMITED", 2, 2);
        UNSPECIFIED = new AllowRedisplay("UNSPECIFIED", 3, 3);
        AllowRedisplay[] allowRedisplayArr$values = $values();
        $VALUES = allowRedisplayArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(allowRedisplayArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AllowRedisplay.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<AllowRedisplay>(orCreateKotlinClass, syntax, allowRedisplay) { // from class: com.stripe.proto.event_channel.pub.message.AllowRedisplay$Companion$ADAPTER$1
            {
                AllowRedisplay allowRedisplay2 = allowRedisplay;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public AllowRedisplay fromValue(int value) {
                return AllowRedisplay.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: AllowRedisplay.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AllowRedisplay fromValue(int value) {
            if (value == 0) {
                return AllowRedisplay.ALLOW_REDISPLAY_INVALID;
            }
            if (value == 1) {
                return AllowRedisplay.ALWAYS;
            }
            if (value == 2) {
                return AllowRedisplay.LIMITED;
            }
            if (value != 3) {
                return null;
            }
            return AllowRedisplay.UNSPECIFIED;
        }
    }
}
