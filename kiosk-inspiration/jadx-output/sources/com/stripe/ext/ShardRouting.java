package com.stripe.ext;

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
/* JADX INFO: compiled from: ShardRouting.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/ext/ShardRouting;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ANY", "DEFAULT_SHARD", "ID", "CUSTOM", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ShardRouting implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ShardRouting[] $VALUES;
    public static final ProtoAdapter<ShardRouting> ADAPTER;
    public static final ShardRouting ANY;
    public static final ShardRouting CUSTOM;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ShardRouting DEFAULT_SHARD;
    public static final ShardRouting ID;
    private final int value;

    private static final /* synthetic */ ShardRouting[] $values() {
        return new ShardRouting[]{ANY, DEFAULT_SHARD, ID, CUSTOM};
    }

    @JvmStatic
    public static final ShardRouting fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ShardRouting> getEntries() {
        return $ENTRIES;
    }

    public static ShardRouting valueOf(String str) {
        return (ShardRouting) Enum.valueOf(ShardRouting.class, str);
    }

    public static ShardRouting[] values() {
        return (ShardRouting[]) $VALUES.clone();
    }

    private ShardRouting(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ShardRouting shardRouting = new ShardRouting("ANY", 0, 0);
        ANY = shardRouting;
        DEFAULT_SHARD = new ShardRouting("DEFAULT_SHARD", 1, 1);
        ID = new ShardRouting("ID", 2, 2);
        CUSTOM = new ShardRouting("CUSTOM", 3, 3);
        ShardRouting[] shardRoutingArr$values = $values();
        $VALUES = shardRoutingArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(shardRoutingArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ShardRouting.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new EnumAdapter<ShardRouting>(orCreateKotlinClass, syntax, shardRouting) { // from class: com.stripe.ext.ShardRouting$Companion$ADAPTER$1
            {
                ShardRouting shardRouting2 = shardRouting;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ShardRouting fromValue(int value) {
                return ShardRouting.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ShardRouting.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/ShardRouting$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/ShardRouting;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ShardRouting fromValue(int value) {
            if (value == 0) {
                return ShardRouting.ANY;
            }
            if (value == 1) {
                return ShardRouting.DEFAULT_SHARD;
            }
            if (value == 2) {
                return ShardRouting.ID;
            }
            if (value != 3) {
                return null;
            }
            return ShardRouting.CUSTOM;
        }
    }
}
