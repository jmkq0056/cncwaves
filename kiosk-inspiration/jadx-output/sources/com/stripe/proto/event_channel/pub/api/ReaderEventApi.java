package com.stripe.proto.event_channel.pub.api;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import dagger.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderEventApi.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\rJ\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\n2\u0006\u0010\f\u001a\u00020\u0010R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/event_channel/pub/api/ReaderEventApi;", "", "lazyClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "(Ldagger/Lazy;)V", "client", "getClient", "()Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "pollServerEvent", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "Lcom/stripe/proto/event_channel/pub/api/PollServerEventResponse;", "message", "Lcom/stripe/proto/event_channel/pub/api/PollServerEventRequest;", "postReaderEvent", "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventResponse;", "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderEventApi {
    private final Lazy<? extends CrpcClient> lazyClient;

    public ReaderEventApi(Lazy<? extends CrpcClient> lazyClient) {
        Intrinsics.checkNotNullParameter(lazyClient, "lazyClient");
        this.lazyClient = lazyClient;
    }

    public final CrpcClient getClient() {
        CrpcClient crpcClient = this.lazyClient.get();
        Intrinsics.checkNotNullExpressionValue(crpcClient, "get(...)");
        return crpcClient;
    }

    public final CrpcResponse<PollServerEventResponse> pollServerEvent(PollServerEventRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "ReaderEventApiService", "PollServerEvent", message, PollServerEventRequest.ADAPTER, PollServerEventResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<PostReaderEventResponse> postReaderEvent(PostReaderEventRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "ReaderEventApiService", "PostReaderEvent", message, PostReaderEventRequest.ADAPTER, PostReaderEventResponse.ADAPTER, null, 32, null);
    }
}
