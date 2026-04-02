package com.stripe.jvmcore.crpcclient;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.net.rpc.base.ApplicationEC;
import com.stripe.proto.net.rpc.base.RpcEC;
import com.stripe.proto.net.rpc.base.RpcResponse;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: Mappers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aB\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\u0012\b\u0000\u0010\t*\f\u0012\u0004\u0012\u0002H\t\u0012\u0002\b\u00030\n*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\t0\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001aC\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\u0012\b\u0000\u0010\t*\f\u0012\u0004\u0012\u0002H\t\u0012\u0002\b\u00030\n*\u00020\u00112\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\t0\r2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0012\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0018\u0010\u0002\u001a\u00020\u0003*\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"TAG", "", "durationMillis", "", "Lokhttp3/Response;", "getDurationMillis", "(Lokhttp3/Response;)J", "toCrpcResponse", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "M", "Lcom/squareup/wire/Message;", "requestId", "protoAdapter", "Lcom/squareup/wire/ProtoAdapter;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "toResponseType", "Lcom/stripe/proto/net/rpc/base/RpcResponse;", "(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "crpcclient"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class MappersKt {
    private static final String TAG = "CrpcResponse";

    private static final long getDurationMillis(Response response) {
        return response.receivedResponseAtMillis() - response.sentRequestAtMillis();
    }

    public static final <M extends Message<M, ?>> CrpcResponse<M> toCrpcResponse(Response response, long j, ProtoAdapter<M> protoAdapter, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        Intrinsics.checkNotNullParameter(protoAdapter, "protoAdapter");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        long durationMillis = getDurationMillis(response);
        try {
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody == null) {
                return new CrpcResponse.RpcError(RpcEC.SERVER_UNREACHABLE, "", Long.valueOf(durationMillis), null, 8, null);
            }
            RpcResponse rpcResponseDecode = RpcResponse.ADAPTER.decode(responseBodyBody.bytes());
            if (j != rpcResponseDecode.request_id) {
                logWriter.e(TAG, "Request ID from cRPC request does not match response ID");
                return new CrpcResponse.RpcError(RpcEC.BAD_RESPONSE, "Request ID from cRPC request does not match response ID", Long.valueOf(durationMillis), null, 8, null);
            }
            CrpcResponse<M> responseType = toResponseType(rpcResponseDecode, protoAdapter, Long.valueOf(durationMillis));
            if (responseType instanceof CrpcResponse.ApplicationError) {
                logWriter.e(TAG, "Application error in cRPC response  " + ((CrpcResponse.ApplicationError) responseType).getCode());
            }
            if (responseType instanceof CrpcResponse.RpcError) {
                logWriter.e(TAG, "RPC error in cRPC response  " + ((CrpcResponse.RpcError) responseType).getCode());
            }
            return responseType;
        } catch (IOException e) {
            return new CrpcResponse.RpcError(RpcEC.BAD_RESPONSE, "Unable to parse response", Long.valueOf(durationMillis), e);
        }
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
