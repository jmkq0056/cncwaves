package com.stripe.kmpcore.jackrabbitclient;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.Message;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: KmpCrpcClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J°\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0012\b\u0000\u0010\u0007*\f\u0012\u0004\u0012\u0002H\u0007\u0012\u0002\b\u00030\b\"\u0012\b\u0001\u0010\t*\f\u0012\u0004\u0012\u0002H\t\u0012\u0002\b\u00030\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u0002H\t2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\t0\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00070\u00112\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0086@¢\u0006\u0002\u0010\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;", "", "()V", "requestId", "", "post", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;", "M", "Lcom/squareup/wire/Message;", "RE", "httpClient", "Lio/ktor/client/HttpClient;", NotificationCompat.CATEGORY_SERVICE, "", FirebaseAnalytics.Param.METHOD, "message", "requestProtoAdapter", "Lcom/squareup/wire/ProtoAdapter;", "responseProtoAdapter", "sessionToken", "localIpAddress", "deviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "versionInfo", "Lcom/stripe/proto/model/common/VersionInfoPb;", "baseUrl", "urlPort", "", "urlProtocol", "Lio/ktor/http/URLProtocol;", "(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KmpCrpcClient {
    private long requestId;

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient$post$1, reason: invalid class name */
    /* JADX INFO: compiled from: KmpCrpcClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient", f = "KmpCrpcClient.kt", i = {0, 0}, l = {WinError.ERROR_BUFFER_OVERFLOW, 64}, m = "post", n = {"responseProtoAdapter", "crpcRequest"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1<M extends Message<M, ?>, RE extends Message<RE, ?>> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return KmpCrpcClient.this.post(null, null, null, null, null, null, null, null, null, null, null, 0, null, this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0141, code lost:
    
        if (r0 == r3) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <M extends com.squareup.wire.Message<M, ?>, RE extends com.squareup.wire.Message<RE, ?>> java.lang.Object post(io.ktor.client.HttpClient r29, java.lang.String r30, java.lang.String r31, RE r32, com.squareup.wire.ProtoAdapter<RE> r33, com.squareup.wire.ProtoAdapter<M> r34, java.lang.String r35, java.lang.String r36, com.stripe.proto.model.common.DeviceInfo r37, com.stripe.proto.model.common.VersionInfoPb r38, java.lang.String r39, int r40, io.ktor.http.URLProtocol r41, kotlin.coroutines.Continuation<? super com.stripe.kmpcore.jackrabbitclient.CrpcResponse<M>> r42) {
        /*
            Method dump skipped, instruction units count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient.post(io.ktor.client.HttpClient, java.lang.String, java.lang.String, com.squareup.wire.Message, com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapter, java.lang.String, java.lang.String, com.stripe.proto.model.common.DeviceInfo, com.stripe.proto.model.common.VersionInfoPb, java.lang.String, int, io.ktor.http.URLProtocol, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
