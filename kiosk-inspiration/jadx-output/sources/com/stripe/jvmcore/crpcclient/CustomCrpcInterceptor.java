package com.stripe.jvmcore.crpcclient;

import com.squareup.wire.Message;
import com.stripe.proto.net.rpc.base.RpcRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;

/* JADX INFO: compiled from: CustomCrpcInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J[\u0010\f\u001a\u00020\r\"\u0012\b\u0000\u0010\u000e*\f\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\b\u00030\u000f\"\u0012\b\u0001\u0010\u0010*\f\u0012\u0004\u0012\u0002H\u0010\u0012\u0002\b\u00030\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u0002H\u00102\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0017H&¢\u0006\u0002\u0010\u0018J9\u0010\u0019\u001a\u00020\r\"\u0012\b\u0000\u0010\u000e*\f\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\b\u00030\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u0002H\u000eH&¢\u0006\u0002\u0010\u001aR\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001b"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;", "", "()V", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "hashCode", "", "postCallAction", "", "M", "Lcom/squareup/wire/Message;", "RE", "okHttpRequest", "Lokhttp3/Request;", "rpcRequest", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "apiRequest", "crpcResponse", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V", "preCallAction", "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class CustomCrpcInterceptor {
    public abstract String getName();

    public abstract <M extends Message<M, ?>, RE extends Message<RE, ?>> void postCallAction(Request okHttpRequest, RpcRequest rpcRequest, RE apiRequest, CrpcResponse<M> crpcResponse);

    public abstract <M extends Message<M, ?>> void preCallAction(Request okHttpRequest, RpcRequest rpcRequest, M apiRequest);

    public boolean equals(Object other) {
        return (other instanceof CustomCrpcInterceptor) && Intrinsics.areEqual(getName(), ((CustomCrpcInterceptor) other).getName());
    }

    public int hashCode() {
        return getName().hashCode();
    }
}
