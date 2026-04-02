package com.stripe.loggingmodels;

import com.stripe.loggingmodels.Outcome;
import com.stripe.proto.net.rpc.base.ApplicationEC;
import com.stripe.proto.net.rpc.base.RpcEC;
import com.stripe.proto.net.rpc.base.RpcResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RpcResponseOutcomeExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toOutcome", "Lcom/stripe/loggingmodels/Outcome;", "Lcom/stripe/proto/net/rpc/base/RpcResponse;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class RpcResponseOutcomeExtKt {
    public static final Outcome toOutcome(RpcResponse rpcResponse) {
        Intrinsics.checkNotNullParameter(rpcResponse, "<this>");
        if (rpcResponse.app_error_code != ApplicationEC.OK && rpcResponse.app_error_code != ApplicationEC.APPLICATION_EC_INVALID) {
            return Outcome.RpcApplicationError.INSTANCE.toOutcome(rpcResponse.app_error_code);
        }
        if (rpcResponse.rpc_error_code != RpcEC.RPC_OK && rpcResponse.rpc_error_code != RpcEC.RPC_EC_INVALID) {
            return Outcome.RpcTransportError.INSTANCE.toOutcome(rpcResponse.rpc_error_code);
        }
        return Outcome.Ok.INSTANCE;
    }
}
