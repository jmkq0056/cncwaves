package com.stripe.kmpcore.jackrabbitclient;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.stripe.kmpcore.jackrabbitclient.CrpcResponse;
import com.stripe.proto.net.rpc.base.ApplicationEC;
import com.stripe.proto.net.rpc.base.RpcEC;
import com.stripe.proto.net.rpc.base.RpcResponse;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Mappers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aB\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0012\b\u0000\u0010\u0002*\f\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\b\u00030\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\bH\u0086@¢\u0006\u0002\u0010\t\u001aE\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0012\b\u0000\u0010\u0002*\f\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\b\u00030\u0003*\u00020\u000b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"toCrpcResponse", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;", "M", "Lcom/squareup/wire/Message;", "Lio/ktor/client/statement/HttpResponse;", "requestId", "", "protoAdapter", "Lcom/squareup/wire/ProtoAdapter;", "(Lio/ktor/client/statement/HttpResponse;JLcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toResponseType", "Lcom/stripe/proto/net/rpc/base/RpcResponse;", "durationMillis", "(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;", "jackrabbitclient_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class MappersKt {

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.MappersKt$toCrpcResponse$1, reason: invalid class name */
    /* JADX INFO: compiled from: Mappers.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.MappersKt", f = "Mappers.kt", i = {0, 0, 0}, l = {22}, m = "toCrpcResponse", n = {"protoAdapter", "requestId", "durationMillis"}, s = {"L$0", "J$0", "J$1"})
    static final class AnonymousClass1<M extends Message<M, ?>> extends ContinuationImpl {
        long J$0;
        long J$1;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MappersKt.toCrpcResponse(null, 0L, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <M extends com.squareup.wire.Message<M, ?>> java.lang.Object toCrpcResponse(io.ktor.client.statement.HttpResponse r9, long r10, com.squareup.wire.ProtoAdapter<M> r12, kotlin.coroutines.Continuation<? super com.stripe.kmpcore.jackrabbitclient.CrpcResponse<M>> r13) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.kmpcore.jackrabbitclient.MappersKt.toCrpcResponse(io.ktor.client.statement.HttpResponse, long, com.squareup.wire.ProtoAdapter, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ CrpcResponse toResponseType$default(RpcResponse rpcResponse, ProtoAdapter protoAdapter, Long l, int i, Object obj) {
        if ((i & 2) != 0) {
            l = null;
        }
        return toResponseType(rpcResponse, protoAdapter, l);
    }

    public static final <M extends Message<M, ?>> CrpcResponse<M> toResponseType(RpcResponse rpcResponse, ProtoAdapter<M> protoAdapter, Long l) {
        Intrinsics.checkNotNullParameter(rpcResponse, "<this>");
        Intrinsics.checkNotNullParameter(protoAdapter, "protoAdapter");
        if (!CollectionsKt.listOf((Object[]) new ApplicationEC[]{ApplicationEC.OK, ApplicationEC.APPLICATION_EC_INVALID}).contains(rpcResponse.app_error_code)) {
            return new CrpcResponse.ApplicationError(rpcResponse.app_error_code, rpcResponse.error, l);
        }
        if (!CollectionsKt.listOf((Object[]) new RpcEC[]{RpcEC.RPC_OK, RpcEC.RPC_EC_INVALID}).contains(rpcResponse.rpc_error_code)) {
            return new CrpcResponse.RpcError(rpcResponse.rpc_error_code, rpcResponse.error, l, null, 8, null);
        }
        return new CrpcResponse.Success(protoAdapter.decode(rpcResponse.content.toByteArray()), l);
    }
}
