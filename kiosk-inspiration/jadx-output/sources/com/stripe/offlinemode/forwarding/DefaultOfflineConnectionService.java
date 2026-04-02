package com.stripe.offlinemode.forwarding;

import com.squareup.moshi.Moshi;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.dagger.Mainland;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.dagger.OfflineForwarding;
import com.stripe.jvmcore.environment.EnvironmentKt;
import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.restclient.RestClient;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.loggingmodels.Trace;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.logwriter.LogWriter;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest;
import com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequestExt;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.ReceivedAccountIdFromConnectionToken;
import com.stripe.proto.model.rest.UserAgent;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope;
import com.stripe.stripeterminal.internal.common.extensions.FormBodyExtensionsKt;
import javax.inject.Inject;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;
import okhttp3.FormBody;
import okhttp3.Headers;

/* JADX INFO: compiled from: DefaultOfflineConnectionService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002By\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0001\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\"\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\fj\u0002`\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\b\b\u0001\u0010\u0018\u001a\u00020\u0019\u0012\b\b\u0001\u0010\u001a\u001a\u00020\u001b¢\u0006\u0002\u0010\u001cJ*\u0010-\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0096@¢\u0006\u0002\u00105J\"\u00106\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u0002000.2\u0006\u00103\u001a\u000204H\u0096@¢\u0006\u0002\u00108J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020>2\u0006\u00101\u001a\u000202H\u0002R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u00020\u001eX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020$8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010'\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b)\u0010*¨\u0006?"}, d2 = {"Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;", "Lcom/stripe/offlinemode/forwarding/OfflineRestService;", "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;", "moshi", "Lcom/squareup/moshi/Moshi;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "baseUrlProvider", "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;", "userAgentProvider", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "stageLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineStageLogger;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V", "hasConnectionToken", "", "getHasConnectionToken", "()Z", "setHasConnectionToken", "(Z)V", "headers", "Lokhttp3/Headers;", "getHeaders", "()Lokhttp3/Headers;", "userAgent", "Lcom/stripe/proto/model/rest/UserAgent;", "getUserAgent", "()Lcom/stripe/proto/model/rest/UserAgent;", "userAgent$delegate", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "redeemOfflineConnection", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "request", "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;", "traceContext", "Lcom/stripe/loggingmodels/Trace$Context;", "(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveAccount", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "(Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setAuthToken", "", "token", "", "toBody", "Lokhttp3/FormBody;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineConnectionService extends OfflineRestService implements OfflineConnectionService {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DefaultOfflineConnectionService.class, "userAgent", "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;", 0))};
    private final CoroutineDispatcher dispatcher;
    private boolean hasConnectionToken;
    private final OfflineRepository offlineRepository;

    /* JADX INFO: renamed from: userAgent$delegate, reason: from kotlin metadata */
    private final UserAgentProvider userAgent;

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService$redeemOfflineConnection$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineConnectionService.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService", f = "DefaultOfflineConnectionService.kt", i = {0}, l = {70}, m = "redeemOfflineConnection", n = {"this"}, s = {"L$0"})
    static final class C02941 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02941(Continuation<? super C02941> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineConnectionService.this.redeemOfflineConnection(null, null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public DefaultOfflineConnectionService(Moshi moshi, OkHttpClientProvider okHttpClientProvider, @Mainland RestClient.BaseUrlProvider baseUrlProvider, UserAgentProvider userAgentProvider, HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder> stageLogger, OfflineConfigHelper offlineConfigHelper, TraceLogger traceLogger, LogWriter logWriter, @OfflineForwarding OfflineRepository offlineRepository, @Offline CoroutineDispatcher dispatcher) {
        super(moshi, baseUrlProvider, okHttpClientProvider, offlineConfigHelper, stageLogger, traceLogger, logWriter);
        Intrinsics.checkNotNullParameter(moshi, "moshi");
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(baseUrlProvider, "baseUrlProvider");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(stageLogger, "stageLogger");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.offlineRepository = offlineRepository;
        this.dispatcher = dispatcher;
        this.userAgent = userAgentProvider;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(dispatcher), null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineConnectionService
    public boolean getHasConnectionToken() {
        return this.hasConnectionToken;
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineConnectionService
    public void setHasConnectionToken(boolean z) {
        this.hasConnectionToken = z;
    }

    private final UserAgent getUserAgent() {
        return this.userAgent.getValue(this, $$delegatedProperties[0]);
    }

    private final Headers getHeaders() {
        return Headers.INSTANCE.of(EnvironmentKt.toRequestHeaders(getUserAgent(), true));
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineConnectionService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService$1", f = "DefaultOfflineConnectionService.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineConnectionService.this.new AnonymousClass1(continuation);
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
                StateFlow<String> activeAccountFlow = DefaultOfflineConnectionService.this.offlineRepository.getActiveAccountFlow();
                final DefaultOfflineConnectionService defaultOfflineConnectionService = DefaultOfflineConnectionService.this;
                this.label = 1;
                if (activeAccountFlow.collect(new FlowCollector() { // from class: com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((String) obj2, (Continuation<? super Unit>) continuation);
                    }

                    public final Object emit(String str, Continuation<? super Unit> continuation) {
                        defaultOfflineConnectionService.setHasConnectionToken(false);
                        return Unit.INSTANCE;
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.offlinemode.forwarding.OfflineConnectionService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object redeemOfflineConnection(com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest r12, com.stripe.loggingmodels.Trace.Context r13, kotlin.coroutines.Continuation<? super com.stripe.jvmcore.restclient.RestResponse<com.stripe.proto.model.rest.RedeemedForOfflineConnectionToken, com.stripe.proto.model.rest.ErrorWrapper>> r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService.C02941
            if (r0 == 0) goto L14
            r0 = r14
            com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService$redeemOfflineConnection$1 r0 = (com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService.C02941) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService$redeemOfflineConnection$1 r0 = new com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService$redeemOfflineConnection$1
            r0.<init>(r14)
        L19:
            r10 = r0
            java.lang.Object r14 = r10.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.label
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r12 = r10.L$0
            com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService r12 = (com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService) r12
            kotlin.ResultKt.throwOnFailure(r14)
            goto L67
        L2f:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L37:
            kotlin.ResultKt.throwOnFailure(r14)
            r14 = r2
            okhttp3.Headers r2 = r11.getHeaders()
            okhttp3.FormBody r3 = r11.toBody(r12)
            com.stripe.proto.model.rest.ErrorWrapper r4 = new com.stripe.proto.model.rest.ErrorWrapper
            r8 = 7
            r9 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r4.<init>(r5, r6, r7, r8, r9)
            java.lang.Class<com.stripe.proto.model.rest.RedeemedForOfflineConnectionToken> r6 = com.stripe.proto.model.rest.RedeemedForOfflineConnectionToken.class
            com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope$RequestType r8 = com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope.RequestType.REDEEM_FOR_OFFLINE
            r5 = r4
            com.squareup.wire.Message r5 = (com.squareup.wire.Message) r5
            r7 = r12
            com.squareup.wire.Message r7 = (com.squareup.wire.Message) r7
            r10.L$0 = r11
            r10.label = r14
            java.lang.String r4 = "v1/terminal/connection_tokens/redeem_for_offline"
            r1 = r11
            r9 = r13
            java.lang.Object r14 = r1.post(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            if (r14 != r0) goto L66
            return r0
        L66:
            r12 = r11
        L67:
            r13 = r14
            com.stripe.jvmcore.restclient.RestResponse r13 = (com.stripe.jvmcore.restclient.RestResponse) r13
            boolean r13 = r13 instanceof com.stripe.jvmcore.restclient.RestResponse.Success
            if (r13 == 0) goto L72
            r13 = 0
            r12.setHasConnectionToken(r13)
        L72:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService.redeemOfflineConnection(com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest, com.stripe.loggingmodels.Trace$Context, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineConnectionService
    public Object retrieveAccount(Trace.Context context, Continuation<? super RestResponse<ReceivedAccountIdFromConnectionToken, ErrorWrapper>> continuation) {
        return get(getHeaders(), CollectionsKt.emptyList(), "v1/terminal/connection_tokens/account", new ErrorWrapper(null, null, null, 7, null), ReceivedAccountIdFromConnectionToken.class, null, StageScope.RequestType.RETRIEVE_ACCOUNT_ID, context, continuation);
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineRestService, com.stripe.offlinemode.forwarding.AuthTokenListener
    public void setAuthToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        super.setAuthToken(token);
        setHasConnectionToken(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final FormBody toBody(RedeemForOfflineConnectionTokenRequest request) {
        return FormBodyExtensionsKt.stripEmptyValues(RedeemForOfflineConnectionTokenRequestExt.INSTANCE.addRedeemForOfflineConnectionTokenRequest(new FormBody.Builder(null, 1, 0 == true ? 1 : 0), request, "").build());
    }
}
