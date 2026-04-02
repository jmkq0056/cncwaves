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
/* JADX INFO: compiled from: NetworkEventType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkEventType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NETWORK_EVENT_TYPE_INVALID", "NETWORK_CONNECTED", "NETWORK_DISCONNECTED", "NETWORK_LOST", "NETWORK_PROPERTIES_CHANGED", "WIFI_CONNECTIVITY_CHANGED", "WIFI_CONNECTION_ATTEMPT", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetworkEventType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NetworkEventType[] $VALUES;
    public static final ProtoAdapter<NetworkEventType> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final NetworkEventType NETWORK_CONNECTED;
    public static final NetworkEventType NETWORK_DISCONNECTED;
    public static final NetworkEventType NETWORK_EVENT_TYPE_INVALID;
    public static final NetworkEventType NETWORK_LOST;
    public static final NetworkEventType NETWORK_PROPERTIES_CHANGED;
    public static final NetworkEventType WIFI_CONNECTION_ATTEMPT;
    public static final NetworkEventType WIFI_CONNECTIVITY_CHANGED;
    private final int value;

    private static final /* synthetic */ NetworkEventType[] $values() {
        return new NetworkEventType[]{NETWORK_EVENT_TYPE_INVALID, NETWORK_CONNECTED, NETWORK_DISCONNECTED, NETWORK_LOST, NETWORK_PROPERTIES_CHANGED, WIFI_CONNECTIVITY_CHANGED, WIFI_CONNECTION_ATTEMPT};
    }

    @JvmStatic
    public static final NetworkEventType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<NetworkEventType> getEntries() {
        return $ENTRIES;
    }

    public static NetworkEventType valueOf(String str) {
        return (NetworkEventType) Enum.valueOf(NetworkEventType.class, str);
    }

    public static NetworkEventType[] values() {
        return (NetworkEventType[]) $VALUES.clone();
    }

    private NetworkEventType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final NetworkEventType networkEventType = new NetworkEventType("NETWORK_EVENT_TYPE_INVALID", 0, 0);
        NETWORK_EVENT_TYPE_INVALID = networkEventType;
        NETWORK_CONNECTED = new NetworkEventType("NETWORK_CONNECTED", 1, 1);
        NETWORK_DISCONNECTED = new NetworkEventType("NETWORK_DISCONNECTED", 2, 2);
        NETWORK_LOST = new NetworkEventType("NETWORK_LOST", 3, 3);
        NETWORK_PROPERTIES_CHANGED = new NetworkEventType("NETWORK_PROPERTIES_CHANGED", 4, 4);
        WIFI_CONNECTIVITY_CHANGED = new NetworkEventType("WIFI_CONNECTIVITY_CHANGED", 5, 5);
        WIFI_CONNECTION_ATTEMPT = new NetworkEventType("WIFI_CONNECTION_ATTEMPT", 6, 6);
        NetworkEventType[] networkEventTypeArr$values = $values();
        $VALUES = networkEventTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(networkEventTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NetworkEventType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<NetworkEventType>(orCreateKotlinClass, syntax, networkEventType) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.NetworkEventType$Companion$ADAPTER$1
            {
                NetworkEventType networkEventType2 = networkEventType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public NetworkEventType fromValue(int value) {
                return NetworkEventType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: NetworkEventType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkEventType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkEventType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final NetworkEventType fromValue(int value) {
            switch (value) {
                case 0:
                    return NetworkEventType.NETWORK_EVENT_TYPE_INVALID;
                case 1:
                    return NetworkEventType.NETWORK_CONNECTED;
                case 2:
                    return NetworkEventType.NETWORK_DISCONNECTED;
                case 3:
                    return NetworkEventType.NETWORK_LOST;
                case 4:
                    return NetworkEventType.NETWORK_PROPERTIES_CHANGED;
                case 5:
                    return NetworkEventType.WIFI_CONNECTIVITY_CHANGED;
                case 6:
                    return NetworkEventType.WIFI_CONNECTION_ATTEMPT;
                default:
                    return null;
            }
        }
    }
}
