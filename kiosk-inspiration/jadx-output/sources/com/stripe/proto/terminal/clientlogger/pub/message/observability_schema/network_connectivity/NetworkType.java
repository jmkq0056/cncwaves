package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity;

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
/* JADX INFO: compiled from: NetworkType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NETWORK_TYPE_INVALID", "WIFI", "ETHERNET", "CELLULAR", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetworkType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NetworkType[] $VALUES;
    public static final ProtoAdapter<NetworkType> ADAPTER;
    public static final NetworkType CELLULAR;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final NetworkType ETHERNET;
    public static final NetworkType NETWORK_TYPE_INVALID;
    public static final NetworkType WIFI;
    private final int value;

    private static final /* synthetic */ NetworkType[] $values() {
        return new NetworkType[]{NETWORK_TYPE_INVALID, WIFI, ETHERNET, CELLULAR};
    }

    @JvmStatic
    public static final NetworkType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<NetworkType> getEntries() {
        return $ENTRIES;
    }

    public static NetworkType valueOf(String str) {
        return (NetworkType) Enum.valueOf(NetworkType.class, str);
    }

    public static NetworkType[] values() {
        return (NetworkType[]) $VALUES.clone();
    }

    private NetworkType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final NetworkType networkType = new NetworkType("NETWORK_TYPE_INVALID", 0, 0);
        NETWORK_TYPE_INVALID = networkType;
        WIFI = new NetworkType("WIFI", 1, 1);
        ETHERNET = new NetworkType("ETHERNET", 2, 2);
        CELLULAR = new NetworkType("CELLULAR", 3, 3);
        NetworkType[] networkTypeArr$values = $values();
        $VALUES = networkTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(networkTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NetworkType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<NetworkType>(orCreateKotlinClass, syntax, networkType) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.NetworkType$Companion$ADAPTER$1
            {
                NetworkType networkType2 = networkType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public NetworkType fromValue(int value) {
                return NetworkType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: NetworkType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final NetworkType fromValue(int value) {
            if (value == 0) {
                return NetworkType.NETWORK_TYPE_INVALID;
            }
            if (value == 1) {
                return NetworkType.WIFI;
            }
            if (value == 2) {
                return NetworkType.ETHERNET;
            }
            if (value != 3) {
                return null;
            }
            return NetworkType.CELLULAR;
        }
    }
}
