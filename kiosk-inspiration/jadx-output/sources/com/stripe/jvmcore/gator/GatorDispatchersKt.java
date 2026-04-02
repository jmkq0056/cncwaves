package com.stripe.jvmcore.gator;

import com.squareup.wire.Message;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: compiled from: GatorDispatchers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u0001\"\u0012\b\u0000\u0010\u0002*\f\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\b\u00030\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0002¨\u0006\u0005"}, d2 = {"toResult", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "M", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "gator"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class GatorDispatchersKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <M extends Message<M, ?>> Dispatcher.Result toResult(CrpcResponse<M> crpcResponse) {
        if (crpcResponse instanceof CrpcResponse.Success) {
            return Dispatcher.Result.Success.INSTANCE;
        }
        if (!(crpcResponse instanceof CrpcResponse.ApplicationError) && !(crpcResponse instanceof CrpcResponse.RpcError)) {
            throw new NoWhenBranchMatchedException();
        }
        return Dispatcher.Result.Retry.INSTANCE;
    }
}
