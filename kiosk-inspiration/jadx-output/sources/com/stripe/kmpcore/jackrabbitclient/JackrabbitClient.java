package com.stripe.kmpcore.jackrabbitclient;

import com.stripe.kmpcore.jackrabbitclient.models.KmpTerminalException;
import com.stripe.kmpcore.jackrabbitclient.transformers.KmpCollectInputsRequestTransformer;
import com.stripe.kmpcore.jackrabbitclient.transformers.KmpCollectInputsResultTransformer;
import com.stripe.proto.api.sdk.CancelCollectDataRequest;
import com.stripe.proto.api.sdk.CancelCollectDataResponse;
import com.stripe.proto.api.sdk.CancelCollectInputsRequest;
import com.stripe.proto.api.sdk.CancelCollectInputsResponse;
import com.stripe.proto.api.sdk.CollectDataRequest;
import com.stripe.proto.api.sdk.CollectInputsRequest;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.sun.jna.platform.win32.WinError;
import io.ktor.client.HttpClient;
import io.ktor.http.URLProtocol;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import org.apache.http.HttpStatus;

/* JADX INFO: compiled from: JackrabbitClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004JN\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"JN\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\\\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010)\u001a\u00020*2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0082@¢\u0006\u0002\u0010+Jf\u0010,\u001a\u00020-2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010/2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010)\u001a\u00020*2\u0006\u0010!\u001a\u00020\"H\u0086@¢\u0006\u0002\u00100J\\\u00101\u001a\b\u0012\u0004\u0012\u0002020'2\u0006\u00103\u001a\u0002042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0082@¢\u0006\u0002\u00105Jf\u00106\u001a\u0002072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010/2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u00108\u001a\u0002092\u0006\u0010!\u001a\u00020\"H\u0086@¢\u0006\u0002\u0010:J\\\u0010;\u001a\b\u0012\u0004\u0012\u00020<0'2\u0006\u0010=\u001a\u00020>2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0082@¢\u0006\u0002\u0010?J\\\u0010@\u001a\b\u0012\u0004\u0012\u00020A0'2\u0006\u0010B\u001a\u00020C2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0082@¢\u0006\u0002\u0010DJ\u0006\u0010E\u001a\u00020\u0013R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006F"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;", "", "kmpCrpcClient", "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;", "(Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;)V", "collectInputsJob", "Lkotlinx/coroutines/Deferred;", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "jackRabbitService", "", "kmpCollectInputsRequestTransformer", "Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;", "kmpCollectInputsResultTransformer", "Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;", "getKmpCrpcClient", "()Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;", "cancelCollectData", "", "cancelCollectDataRequest", "Lcom/stripe/proto/api/sdk/CancelCollectDataRequest;", "httpClient", "Lio/ktor/client/HttpClient;", "sessionToken", "localIpAddress", "baseUrl", "urlPort", "", "versionInfo", "Lcom/stripe/proto/model/common/VersionInfoPb;", "deviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "urlProtocol", "Lio/ktor/http/URLProtocol;", "cancelCollectInputs", "cancelCollectInputsRequest", "Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;", "collectData", "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;", "Lcom/stripe/proto/api/sdk/CollectDataResponse;", "collectDataRequest", "Lcom/stripe/proto/api/sdk/CollectDataRequest;", "(Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectDataPollForResult", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;", "onUnexpectedDisconnect", "Lkotlin/Function0;", "(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectInputs", "Lcom/stripe/proto/api/sdk/CollectInputsResponse;", "collectInputsRequest", "Lcom/stripe/proto/api/sdk/CollectInputsRequest;", "(Lcom/stripe/proto/api/sdk/CollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectInputsPollForResult", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "kmpCollectInputsParameters", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "queryCollectData", "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;", "queryCollectDataRequest", "Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;", "(Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "queryCollectInputs", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;", "queryCollectInputsRequest", "Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;", "(Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tearDownConnection", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class JackrabbitClient {
    private Deferred<? extends CollectInputsResultInternal> collectInputsJob;
    private final CoroutineScope coroutineScope;
    private final String jackRabbitService;
    private final KmpCollectInputsRequestTransformer kmpCollectInputsRequestTransformer;
    private final KmpCollectInputsResultTransformer kmpCollectInputsResultTransformer;
    private final KmpCrpcClient kmpCrpcClient;

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: JackrabbitClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient", f = "JackrabbitClient.kt", i = {}, l = {380}, m = "collectData", n = {}, s = {})
    static final class C02761 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02761(Continuation<? super C02761> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return JackrabbitClient.this.collectData(null, null, null, null, null, 0, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectInputs$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: JackrabbitClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient", f = "JackrabbitClient.kt", i = {}, l = {228}, m = "collectInputs", n = {}, s = {})
    static final class C02771 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02771(Continuation<? super C02771> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return JackrabbitClient.this.collectInputs(null, null, null, null, null, 0, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectInputsPollForResult$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: JackrabbitClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient", f = "JackrabbitClient.kt", i = {0}, l = {WinError.ERROR_ALREADY_EXISTS}, m = "collectInputsPollForResult", n = {"this"}, s = {"L$0"})
    static final class C02781 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02781(Continuation<? super C02781> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return JackrabbitClient.this.collectInputsPollForResult(null, null, null, null, 0, null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$queryCollectData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: JackrabbitClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient", f = "JackrabbitClient.kt", i = {}, l = {HttpStatus.SC_CONFLICT}, m = "queryCollectData", n = {}, s = {})
    static final class C02791 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02791(Continuation<? super C02791> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return JackrabbitClient.this.queryCollectData(null, null, null, null, null, 0, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$queryCollectInputs$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: JackrabbitClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient", f = "JackrabbitClient.kt", i = {}, l = {257}, m = "queryCollectInputs", n = {}, s = {})
    static final class C02801 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02801(Continuation<? super C02801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return JackrabbitClient.this.queryCollectInputs(null, null, null, null, null, 0, null, null, null, this);
        }
    }

    public JackrabbitClient(KmpCrpcClient kmpCrpcClient) {
        Intrinsics.checkNotNullParameter(kmpCrpcClient, "kmpCrpcClient");
        this.kmpCrpcClient = kmpCrpcClient;
        this.coroutineScope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getDefault()));
        this.jackRabbitService = "JackRabbitService";
        this.kmpCollectInputsResultTransformer = new KmpCollectInputsResultTransformer();
        this.kmpCollectInputsRequestTransformer = new KmpCollectInputsRequestTransformer();
    }

    public final KmpCrpcClient getKmpCrpcClient() {
        return this.kmpCrpcClient;
    }

    public final void tearDownConnection() {
        Deferred<? extends CollectInputsResultInternal> deferred = this.collectInputsJob;
        if (deferred != null) {
            Job.DefaultImpls.cancel$default((Job) deferred, (CancellationException) null, 1, (Object) null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collectInputsPollForResult(io.ktor.client.HttpClient r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, int r22, kotlin.jvm.functions.Function0<kotlin.Unit> r23, com.stripe.proto.model.common.VersionInfoPb r24, com.stripe.proto.model.common.DeviceInfo r25, com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters r26, io.ktor.http.URLProtocol r27, kotlin.coroutines.Continuation<? super com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult> r28) {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.collectInputsPollForResult(io.ktor.client.HttpClient, java.lang.String, java.lang.String, java.lang.String, int, kotlin.jvm.functions.Function0, com.stripe.proto.model.common.VersionInfoPb, com.stripe.proto.model.common.DeviceInfo, com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters, io.ktor.http.URLProtocol, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectInputsPollForResult$2, reason: invalid class name */
    /* JADX INFO: compiled from: JackrabbitClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectInputsPollForResult$2", f = "JackrabbitClient.kt", i = {0, 1, 2, 2, 3}, l = {77, WinError.ERROR_BUFFER_OVERFLOW, 122, 126}, m = "invokeSuspend", n = {"$this$async", "$this$async", "$this$async", "queryResponse", "$this$async"}, s = {"L$0", "L$0", "L$0", "L$1", "L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CollectInputsResultInternal>, Object> {
        final /* synthetic */ String $baseUrl;
        final /* synthetic */ CollectInputsRequest $collectInputsRequest;
        final /* synthetic */ DeviceInfo $deviceInfo;
        final /* synthetic */ HttpClient $httpClient;
        final /* synthetic */ String $localIpAddress;
        final /* synthetic */ Function0<Unit> $onUnexpectedDisconnect;
        final /* synthetic */ String $sessionToken;
        final /* synthetic */ int $urlPort;
        final /* synthetic */ URLProtocol $urlProtocol;
        final /* synthetic */ VersionInfoPb $versionInfo;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectInputsPollForResult$2$WhenMappings */
        /* JADX INFO: compiled from: JackrabbitClient.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[TerminalErrorCode.values().length];
                try {
                    iArr[TerminalErrorCode.COLLECT_INPUTS_INVALID_PARAMETER.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TerminalErrorCode.COLLECT_INPUTS_APPLICATION_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[TerminalErrorCode.CANCELED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[TerminalErrorCode.COLLECT_INPUTS_TIMED_OUT.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[TerminalErrorCode.COLLECT_INPUTS_UNSUPPORTED.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(CollectInputsRequest collectInputsRequest, HttpClient httpClient, String str, String str2, String str3, int i, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, URLProtocol uRLProtocol, Function0<Unit> function0, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$collectInputsRequest = collectInputsRequest;
            this.$httpClient = httpClient;
            this.$sessionToken = str;
            this.$localIpAddress = str2;
            this.$baseUrl = str3;
            this.$urlPort = i;
            this.$versionInfo = versionInfoPb;
            this.$deviceInfo = deviceInfo;
            this.$urlProtocol = uRLProtocol;
            this.$onUnexpectedDisconnect = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = JackrabbitClient.this.new AnonymousClass2(this.$collectInputsRequest, this.$httpClient, this.$sessionToken, this.$localIpAddress, this.$baseUrl, this.$urlPort, this.$versionInfo, this.$deviceInfo, this.$urlProtocol, this.$onUnexpectedDisconnect, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CollectInputsResultInternal> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x007e, code lost:
        
            if (r4 == r1) goto L42;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00e0  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0126  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0136  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0149  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01d6  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0146 -> B:44:0x0147). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r23) {
            /*
                Method dump skipped, instruction units count: 478
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collectInputs(com.stripe.proto.api.sdk.CollectInputsRequest r19, io.ktor.client.HttpClient r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, int r24, com.stripe.proto.model.common.VersionInfoPb r25, com.stripe.proto.model.common.DeviceInfo r26, io.ktor.http.URLProtocol r27, kotlin.coroutines.Continuation<? super com.stripe.kmpcore.jackrabbitclient.CrpcResponse<com.stripe.proto.api.sdk.CollectInputsResponse>> r28) {
        /*
            r18 = this;
            r0 = r18
            r1 = r28
            boolean r2 = r1 instanceof com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.C02771
            if (r2 == 0) goto L18
            r2 = r1
            com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectInputs$1 r2 = (com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.C02771) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 & r4
            if (r3 == 0) goto L18
            int r1 = r2.label
            int r1 = r1 - r4
            r2.label = r1
            goto L1d
        L18:
            com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectInputs$1 r2 = new com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectInputs$1
            r2.<init>(r1)
        L1d:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L36
            if (r4 != r5) goto L2e
            kotlin.ResultKt.throwOnFailure(r1)
            goto L65
        L2e:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L36:
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r3
            com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient r3 = r0.kmpCrpcClient
            java.lang.String r4 = r0.jackRabbitService
            r7 = r19
            com.squareup.wire.Message r7 = (com.squareup.wire.Message) r7
            com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.CollectInputsRequest> r8 = com.stripe.proto.api.sdk.CollectInputsRequest.ADAPTER
            com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.CollectInputsResponse> r9 = com.stripe.proto.api.sdk.CollectInputsResponse.ADAPTER
            r2.label = r5
            java.lang.String r6 = "collectInputs"
            r10 = r21
            r11 = r22
            r14 = r23
            r15 = r24
            r13 = r25
            r12 = r26
            r16 = r27
            r17 = r2
            r5 = r4
            r4 = r20
            java.lang.Object r2 = r3.post(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            if (r2 != r1) goto L64
            return r1
        L64:
            r1 = r2
        L65:
            com.stripe.kmpcore.jackrabbitclient.CrpcResponse r1 = (com.stripe.kmpcore.jackrabbitclient.CrpcResponse) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.collectInputs(com.stripe.proto.api.sdk.CollectInputsRequest, io.ktor.client.HttpClient, java.lang.String, java.lang.String, java.lang.String, int, com.stripe.proto.model.common.VersionInfoPb, com.stripe.proto.model.common.DeviceInfo, io.ktor.http.URLProtocol, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object queryCollectInputs(com.stripe.proto.api.sdk.QueryCollectInputsRequest r19, io.ktor.client.HttpClient r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, int r24, com.stripe.proto.model.common.VersionInfoPb r25, com.stripe.proto.model.common.DeviceInfo r26, io.ktor.http.URLProtocol r27, kotlin.coroutines.Continuation<? super com.stripe.kmpcore.jackrabbitclient.CrpcResponse<com.stripe.proto.api.sdk.QueryCollectInputsResponse>> r28) {
        /*
            r18 = this;
            r0 = r18
            r1 = r28
            boolean r2 = r1 instanceof com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.C02801
            if (r2 == 0) goto L18
            r2 = r1
            com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$queryCollectInputs$1 r2 = (com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.C02801) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 & r4
            if (r3 == 0) goto L18
            int r1 = r2.label
            int r1 = r1 - r4
            r2.label = r1
            goto L1d
        L18:
            com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$queryCollectInputs$1 r2 = new com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$queryCollectInputs$1
            r2.<init>(r1)
        L1d:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L36
            if (r4 != r5) goto L2e
            kotlin.ResultKt.throwOnFailure(r1)
            goto L65
        L2e:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L36:
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r3
            com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient r3 = r0.kmpCrpcClient
            java.lang.String r4 = r0.jackRabbitService
            r7 = r19
            com.squareup.wire.Message r7 = (com.squareup.wire.Message) r7
            com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.QueryCollectInputsRequest> r8 = com.stripe.proto.api.sdk.QueryCollectInputsRequest.ADAPTER
            com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.QueryCollectInputsResponse> r9 = com.stripe.proto.api.sdk.QueryCollectInputsResponse.ADAPTER
            r2.label = r5
            java.lang.String r6 = "queryCollectInputs"
            r10 = r21
            r11 = r22
            r14 = r23
            r15 = r24
            r13 = r25
            r12 = r26
            r16 = r27
            r17 = r2
            r5 = r4
            r4 = r20
            java.lang.Object r2 = r3.post(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            if (r2 != r1) goto L64
            return r1
        L64:
            r1 = r2
        L65:
            com.stripe.kmpcore.jackrabbitclient.CrpcResponse r1 = (com.stripe.kmpcore.jackrabbitclient.CrpcResponse) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.queryCollectInputs(com.stripe.proto.api.sdk.QueryCollectInputsRequest, io.ktor.client.HttpClient, java.lang.String, java.lang.String, java.lang.String, int, com.stripe.proto.model.common.VersionInfoPb, com.stripe.proto.model.common.DeviceInfo, io.ktor.http.URLProtocol, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$cancelCollectInputs$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: JackrabbitClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$cancelCollectInputs$1", f = "JackrabbitClient.kt", i = {}, l = {287}, m = "invokeSuspend", n = {}, s = {})
    static final class C02751 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $baseUrl;
        final /* synthetic */ CancelCollectInputsRequest $cancelCollectInputsRequest;
        final /* synthetic */ DeviceInfo $deviceInfo;
        final /* synthetic */ HttpClient $httpClient;
        final /* synthetic */ String $localIpAddress;
        final /* synthetic */ String $sessionToken;
        final /* synthetic */ int $urlPort;
        final /* synthetic */ URLProtocol $urlProtocol;
        final /* synthetic */ VersionInfoPb $versionInfo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02751(HttpClient httpClient, CancelCollectInputsRequest cancelCollectInputsRequest, String str, String str2, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, String str3, int i, URLProtocol uRLProtocol, Continuation<? super C02751> continuation) {
            super(2, continuation);
            this.$httpClient = httpClient;
            this.$cancelCollectInputsRequest = cancelCollectInputsRequest;
            this.$sessionToken = str;
            this.$localIpAddress = str2;
            this.$deviceInfo = deviceInfo;
            this.$versionInfo = versionInfoPb;
            this.$baseUrl = str3;
            this.$urlPort = i;
            this.$urlProtocol = uRLProtocol;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return JackrabbitClient.this.new C02751(this.$httpClient, this.$cancelCollectInputsRequest, this.$sessionToken, this.$localIpAddress, this.$deviceInfo, this.$versionInfo, this.$baseUrl, this.$urlPort, this.$urlProtocol, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02751) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (JackrabbitClient.this.getKmpCrpcClient().post(this.$httpClient, JackrabbitClient.this.jackRabbitService, "cancelCollectInputs", this.$cancelCollectInputsRequest, CancelCollectInputsRequest.ADAPTER, CancelCollectInputsResponse.ADAPTER, this.$sessionToken, this.$localIpAddress, this.$deviceInfo, this.$versionInfo, this.$baseUrl, this.$urlPort, this.$urlProtocol, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final void cancelCollectInputs(CancelCollectInputsRequest cancelCollectInputsRequest, HttpClient httpClient, String sessionToken, String localIpAddress, String baseUrl, int urlPort, VersionInfoPb versionInfo, DeviceInfo deviceInfo, URLProtocol urlProtocol) {
        Intrinsics.checkNotNullParameter(cancelCollectInputsRequest, "cancelCollectInputsRequest");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        Intrinsics.checkNotNullParameter(localIpAddress, "localIpAddress");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(versionInfo, "versionInfo");
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        Intrinsics.checkNotNullParameter(urlProtocol, "urlProtocol");
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C02751(httpClient, cancelCollectInputsRequest, sessionToken, localIpAddress, deviceInfo, versionInfo, baseUrl, urlPort, urlProtocol, null), 3, null);
    }

    public final Object collectDataPollForResult(HttpClient httpClient, String str, String str2, String str3, int i, Function0<Unit> function0, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, CollectDataRequest collectDataRequest, URLProtocol uRLProtocol, Continuation<? super CollectDataResultInternal> continuation) throws KmpTerminalException, CancellationException {
        LoggerKt.logInfo(Reflection.getOrCreateKotlinClass(JackrabbitClient.class), "collectDataPollForResult");
        return BuildersKt__Builders_commonKt.async$default(this.coroutineScope, null, null, new JackrabbitClient$collectDataPollForResult$collectDataDeferred$1(this, collectDataRequest, httpClient, str, str2, str3, i, versionInfoPb, deviceInfo, uRLProtocol, function0, null), 3, null).await(continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collectData(com.stripe.proto.api.sdk.CollectDataRequest r19, io.ktor.client.HttpClient r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, int r24, com.stripe.proto.model.common.VersionInfoPb r25, com.stripe.proto.model.common.DeviceInfo r26, io.ktor.http.URLProtocol r27, kotlin.coroutines.Continuation<? super com.stripe.kmpcore.jackrabbitclient.CrpcResponse<com.stripe.proto.api.sdk.CollectDataResponse>> r28) {
        /*
            r18 = this;
            r0 = r18
            r1 = r28
            boolean r2 = r1 instanceof com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.C02761
            if (r2 == 0) goto L18
            r2 = r1
            com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectData$1 r2 = (com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.C02761) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 & r4
            if (r3 == 0) goto L18
            int r1 = r2.label
            int r1 = r1 - r4
            r2.label = r1
            goto L1d
        L18:
            com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectData$1 r2 = new com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectData$1
            r2.<init>(r1)
        L1d:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L36
            if (r4 != r5) goto L2e
            kotlin.ResultKt.throwOnFailure(r1)
            goto L65
        L2e:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L36:
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r3
            com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient r3 = r0.kmpCrpcClient
            java.lang.String r4 = r0.jackRabbitService
            r7 = r19
            com.squareup.wire.Message r7 = (com.squareup.wire.Message) r7
            com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.CollectDataRequest> r8 = com.stripe.proto.api.sdk.CollectDataRequest.ADAPTER
            com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.CollectDataResponse> r9 = com.stripe.proto.api.sdk.CollectDataResponse.ADAPTER
            r2.label = r5
            java.lang.String r6 = "collectData"
            r10 = r21
            r11 = r22
            r14 = r23
            r15 = r24
            r13 = r25
            r12 = r26
            r16 = r27
            r17 = r2
            r5 = r4
            r4 = r20
            java.lang.Object r2 = r3.post(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            if (r2 != r1) goto L64
            return r1
        L64:
            r1 = r2
        L65:
            com.stripe.kmpcore.jackrabbitclient.CrpcResponse r1 = (com.stripe.kmpcore.jackrabbitclient.CrpcResponse) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.collectData(com.stripe.proto.api.sdk.CollectDataRequest, io.ktor.client.HttpClient, java.lang.String, java.lang.String, java.lang.String, int, com.stripe.proto.model.common.VersionInfoPb, com.stripe.proto.model.common.DeviceInfo, io.ktor.http.URLProtocol, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object queryCollectData(com.stripe.proto.api.sdk.QueryCollectDataRequest r19, io.ktor.client.HttpClient r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, int r24, com.stripe.proto.model.common.VersionInfoPb r25, com.stripe.proto.model.common.DeviceInfo r26, io.ktor.http.URLProtocol r27, kotlin.coroutines.Continuation<? super com.stripe.kmpcore.jackrabbitclient.CrpcResponse<com.stripe.proto.api.sdk.QueryCollectDataResponse>> r28) {
        /*
            r18 = this;
            r0 = r18
            r1 = r28
            boolean r2 = r1 instanceof com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.C02791
            if (r2 == 0) goto L18
            r2 = r1
            com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$queryCollectData$1 r2 = (com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.C02791) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 & r4
            if (r3 == 0) goto L18
            int r1 = r2.label
            int r1 = r1 - r4
            r2.label = r1
            goto L1d
        L18:
            com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$queryCollectData$1 r2 = new com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$queryCollectData$1
            r2.<init>(r1)
        L1d:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L36
            if (r4 != r5) goto L2e
            kotlin.ResultKt.throwOnFailure(r1)
            goto L65
        L2e:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L36:
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r3
            com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient r3 = r0.kmpCrpcClient
            java.lang.String r4 = r0.jackRabbitService
            r7 = r19
            com.squareup.wire.Message r7 = (com.squareup.wire.Message) r7
            com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.QueryCollectDataRequest> r8 = com.stripe.proto.api.sdk.QueryCollectDataRequest.ADAPTER
            com.squareup.wire.ProtoAdapter<com.stripe.proto.api.sdk.QueryCollectDataResponse> r9 = com.stripe.proto.api.sdk.QueryCollectDataResponse.ADAPTER
            r2.label = r5
            java.lang.String r6 = "queryCollectData"
            r10 = r21
            r11 = r22
            r14 = r23
            r15 = r24
            r13 = r25
            r12 = r26
            r16 = r27
            r17 = r2
            r5 = r4
            r4 = r20
            java.lang.Object r2 = r3.post(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            if (r2 != r1) goto L64
            return r1
        L64:
            r1 = r2
        L65:
            com.stripe.kmpcore.jackrabbitclient.CrpcResponse r1 = (com.stripe.kmpcore.jackrabbitclient.CrpcResponse) r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient.queryCollectData(com.stripe.proto.api.sdk.QueryCollectDataRequest, io.ktor.client.HttpClient, java.lang.String, java.lang.String, java.lang.String, int, com.stripe.proto.model.common.VersionInfoPb, com.stripe.proto.model.common.DeviceInfo, io.ktor.http.URLProtocol, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$cancelCollectData$1, reason: invalid class name */
    /* JADX INFO: compiled from: JackrabbitClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$cancelCollectData$1", f = "JackrabbitClient.kt", i = {}, l = {439}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $baseUrl;
        final /* synthetic */ CancelCollectDataRequest $cancelCollectDataRequest;
        final /* synthetic */ DeviceInfo $deviceInfo;
        final /* synthetic */ HttpClient $httpClient;
        final /* synthetic */ String $localIpAddress;
        final /* synthetic */ String $sessionToken;
        final /* synthetic */ int $urlPort;
        final /* synthetic */ URLProtocol $urlProtocol;
        final /* synthetic */ VersionInfoPb $versionInfo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HttpClient httpClient, CancelCollectDataRequest cancelCollectDataRequest, String str, String str2, DeviceInfo deviceInfo, VersionInfoPb versionInfoPb, String str3, int i, URLProtocol uRLProtocol, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$httpClient = httpClient;
            this.$cancelCollectDataRequest = cancelCollectDataRequest;
            this.$sessionToken = str;
            this.$localIpAddress = str2;
            this.$deviceInfo = deviceInfo;
            this.$versionInfo = versionInfoPb;
            this.$baseUrl = str3;
            this.$urlPort = i;
            this.$urlProtocol = uRLProtocol;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return JackrabbitClient.this.new AnonymousClass1(this.$httpClient, this.$cancelCollectDataRequest, this.$sessionToken, this.$localIpAddress, this.$deviceInfo, this.$versionInfo, this.$baseUrl, this.$urlPort, this.$urlProtocol, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (JackrabbitClient.this.getKmpCrpcClient().post(this.$httpClient, JackrabbitClient.this.jackRabbitService, "cancelCollectData", this.$cancelCollectDataRequest, CancelCollectDataRequest.ADAPTER, CancelCollectDataResponse.ADAPTER, this.$sessionToken, this.$localIpAddress, this.$deviceInfo, this.$versionInfo, this.$baseUrl, this.$urlPort, this.$urlProtocol, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final void cancelCollectData(CancelCollectDataRequest cancelCollectDataRequest, HttpClient httpClient, String sessionToken, String localIpAddress, String baseUrl, int urlPort, VersionInfoPb versionInfo, DeviceInfo deviceInfo, URLProtocol urlProtocol) {
        Intrinsics.checkNotNullParameter(cancelCollectDataRequest, "cancelCollectDataRequest");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        Intrinsics.checkNotNullParameter(localIpAddress, "localIpAddress");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(versionInfo, "versionInfo");
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        Intrinsics.checkNotNullParameter(urlProtocol, "urlProtocol");
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new AnonymousClass1(httpClient, cancelCollectDataRequest, sessionToken, localIpAddress, deviceInfo, versionInfo, baseUrl, urlPort, urlProtocol, null), 3, null);
    }
}
