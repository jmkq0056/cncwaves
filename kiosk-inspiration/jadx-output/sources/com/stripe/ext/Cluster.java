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
/* JADX INFO: compiled from: Cluster.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/Cluster;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CLUSTER_INVALID", "NORTHWEST", "CMH", "BOM", "EAST", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Cluster implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Cluster[] $VALUES;
    public static final ProtoAdapter<Cluster> ADAPTER;
    public static final Cluster BOM;
    public static final Cluster CLUSTER_INVALID;
    public static final Cluster CMH;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final Cluster EAST;
    public static final Cluster NORTHWEST;
    private final int value;

    private static final /* synthetic */ Cluster[] $values() {
        return new Cluster[]{CLUSTER_INVALID, NORTHWEST, CMH, BOM, EAST};
    }

    @JvmStatic
    public static final Cluster fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<Cluster> getEntries() {
        return $ENTRIES;
    }

    public static Cluster valueOf(String str) {
        return (Cluster) Enum.valueOf(Cluster.class, str);
    }

    public static Cluster[] values() {
        return (Cluster[]) $VALUES.clone();
    }

    private Cluster(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final Cluster cluster = new Cluster("CLUSTER_INVALID", 0, 0);
        CLUSTER_INVALID = cluster;
        NORTHWEST = new Cluster("NORTHWEST", 1, 1);
        CMH = new Cluster("CMH", 2, 2);
        BOM = new Cluster("BOM", 3, 3);
        EAST = new Cluster("EAST", 4, 4);
        Cluster[] clusterArr$values = $values();
        $VALUES = clusterArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(clusterArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Cluster.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new EnumAdapter<Cluster>(orCreateKotlinClass, syntax, cluster) { // from class: com.stripe.ext.Cluster$Companion$ADAPTER$1
            {
                Cluster cluster2 = cluster;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public Cluster fromValue(int value) {
                return Cluster.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: Cluster.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/Cluster$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/Cluster;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Cluster fromValue(int value) {
            if (value == 0) {
                return Cluster.CLUSTER_INVALID;
            }
            if (value == 1) {
                return Cluster.NORTHWEST;
            }
            if (value == 2) {
                return Cluster.CMH;
            }
            if (value == 3) {
                return Cluster.BOM;
            }
            if (value != 4) {
                return null;
            }
            return Cluster.EAST;
        }
    }
}
