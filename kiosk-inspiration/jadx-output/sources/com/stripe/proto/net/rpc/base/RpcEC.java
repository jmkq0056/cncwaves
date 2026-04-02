package com.stripe.proto.net.rpc.base;

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
/* JADX INFO: compiled from: RpcEC.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0013B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/net/rpc/base/RpcEC;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "RPC_EC_INVALID", "RPC_OK", "RPC_ERROR", "NETWORK_UNAVAILABLE", "SERVER_UNRESOLVABLE", "SERVER_UNREACHABLE", "BAD_REQUEST", "BAD_RESPONSE", "TIMEOUT", "RETRY", "SERVER_BUSY", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RpcEC implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RpcEC[] $VALUES;
    public static final ProtoAdapter<RpcEC> ADAPTER;
    public static final RpcEC BAD_REQUEST;
    public static final RpcEC BAD_RESPONSE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final RpcEC NETWORK_UNAVAILABLE;
    public static final RpcEC RETRY;
    public static final RpcEC RPC_EC_INVALID;
    public static final RpcEC RPC_ERROR;
    public static final RpcEC RPC_OK;
    public static final RpcEC SERVER_BUSY;
    public static final RpcEC SERVER_UNREACHABLE;
    public static final RpcEC SERVER_UNRESOLVABLE;
    public static final RpcEC TIMEOUT;
    private final int value;

    private static final /* synthetic */ RpcEC[] $values() {
        return new RpcEC[]{RPC_EC_INVALID, RPC_OK, RPC_ERROR, NETWORK_UNAVAILABLE, SERVER_UNRESOLVABLE, SERVER_UNREACHABLE, BAD_REQUEST, BAD_RESPONSE, TIMEOUT, RETRY, SERVER_BUSY};
    }

    @JvmStatic
    public static final RpcEC fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<RpcEC> getEntries() {
        return $ENTRIES;
    }

    public static RpcEC valueOf(String str) {
        return (RpcEC) Enum.valueOf(RpcEC.class, str);
    }

    public static RpcEC[] values() {
        return (RpcEC[]) $VALUES.clone();
    }

    private RpcEC(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final RpcEC rpcEC = new RpcEC("RPC_EC_INVALID", 0, 0);
        RPC_EC_INVALID = rpcEC;
        RPC_OK = new RpcEC("RPC_OK", 1, 1);
        RPC_ERROR = new RpcEC("RPC_ERROR", 2, 2);
        NETWORK_UNAVAILABLE = new RpcEC("NETWORK_UNAVAILABLE", 3, 3);
        SERVER_UNRESOLVABLE = new RpcEC("SERVER_UNRESOLVABLE", 4, 4);
        SERVER_UNREACHABLE = new RpcEC("SERVER_UNREACHABLE", 5, 5);
        BAD_REQUEST = new RpcEC("BAD_REQUEST", 6, 6);
        BAD_RESPONSE = new RpcEC("BAD_RESPONSE", 7, 7);
        TIMEOUT = new RpcEC("TIMEOUT", 8, 8);
        RETRY = new RpcEC("RETRY", 9, 9);
        SERVER_BUSY = new RpcEC("SERVER_BUSY", 10, 10);
        RpcEC[] rpcECArr$values = $values();
        $VALUES = rpcECArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(rpcECArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RpcEC.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<RpcEC>(orCreateKotlinClass, syntax, rpcEC) { // from class: com.stripe.proto.net.rpc.base.RpcEC$Companion$ADAPTER$1
            {
                RpcEC rpcEC2 = rpcEC;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public RpcEC fromValue(int value) {
                return RpcEC.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: RpcEC.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/net/rpc/base/RpcEC$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/net/rpc/base/RpcEC;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final RpcEC fromValue(int value) {
            switch (value) {
                case 0:
                    return RpcEC.RPC_EC_INVALID;
                case 1:
                    return RpcEC.RPC_OK;
                case 2:
                    return RpcEC.RPC_ERROR;
                case 3:
                    return RpcEC.NETWORK_UNAVAILABLE;
                case 4:
                    return RpcEC.SERVER_UNRESOLVABLE;
                case 5:
                    return RpcEC.SERVER_UNREACHABLE;
                case 6:
                    return RpcEC.BAD_REQUEST;
                case 7:
                    return RpcEC.BAD_RESPONSE;
                case 8:
                    return RpcEC.TIMEOUT;
                case 9:
                    return RpcEC.RETRY;
                case 10:
                    return RpcEC.SERVER_BUSY;
                default:
                    return null;
            }
        }
    }
}
