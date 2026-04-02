package com.stripe.stripeterminal.internal.common.connectivity;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.helpers.StripeHealthCheckerDefaultConfig;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: compiled from: DefaultStripeNetworkHealthChecker.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@¢\u0006\u0002\u0010\u0015J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\u000e\u0010\u0019\u001a\u00020\u0018H\u0096@¢\u0006\u0002\u0010\u001aJ \u0010\u001b\u001a\u00020\u0012*\b\u0012\u0004\u0012\u00020\u00180\u001c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@¢\u0006\u0002\u0010\u001dR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;", "stateMachine", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;", "networkClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "stripeHealthCheckUrl", "Lokhttp3/HttpUrl;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/HttpUrl;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;)V", "healthCheckTimeoutClient", "Lokhttp3/OkHttpClient;", "getHealthCheckTimeoutClient", "()Lokhttp3/OkHttpClient;", "healthCheckTimeoutClient$delegate", "Lkotlin/Lazy;", "delayForState", "", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;", "(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getNetworkHealthStatusFlow", "Lkotlinx/coroutines/flow/Flow;", "", "isNetworkHealthy", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emitValueForState", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultStripeNetworkHealthChecker implements StripeNetworkHealthChecker {

    /* JADX INFO: renamed from: healthCheckTimeoutClient$delegate, reason: from kotlin metadata */
    private final Lazy healthCheckTimeoutClient;
    private final OkHttpClientProvider networkClientProvider;
    private final OfflineConfigHelper offlineConfigHelper;
    private final StripeHealthCheckerStateMachine stateMachine;
    private final HttpUrl stripeHealthCheckUrl;

    /* JADX INFO: compiled from: DefaultStripeNetworkHealthChecker.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StripeHealthCheckerState.values().length];
            try {
                iArr[StripeHealthCheckerState.ONLINE_STABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StripeHealthCheckerState.OFFLINE_STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StripeHealthCheckerState.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StripeHealthCheckerState.OFFLINE_UNSTABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[StripeHealthCheckerState.ONLINE_UNSTABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Inject
    public DefaultStripeNetworkHealthChecker(StripeHealthCheckerStateMachine stateMachine, OkHttpClientProvider networkClientProvider, HttpUrl stripeHealthCheckUrl, OfflineConfigHelper offlineConfigHelper) {
        Intrinsics.checkNotNullParameter(stateMachine, "stateMachine");
        Intrinsics.checkNotNullParameter(networkClientProvider, "networkClientProvider");
        Intrinsics.checkNotNullParameter(stripeHealthCheckUrl, "stripeHealthCheckUrl");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        this.stateMachine = stateMachine;
        this.networkClientProvider = networkClientProvider;
        this.stripeHealthCheckUrl = stripeHealthCheckUrl;
        this.offlineConfigHelper = offlineConfigHelper;
        this.healthCheckTimeoutClient = LazyKt.lazy(new Function0<OkHttpClient>() { // from class: com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker$healthCheckTimeoutClient$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final OkHttpClient invoke() {
                OkHttpClient.Builder builderNewBuilder = this.this$0.networkClientProvider.get().newBuilder();
                Long httpHealthCheckTimeoutMs = this.this$0.offlineConfigHelper.getHttpHealthCheckTimeoutMs();
                if (httpHealthCheckTimeoutMs != null) {
                    builderNewBuilder.callTimeout(httpHealthCheckTimeoutMs.longValue(), TimeUnit.MILLISECONDS);
                }
                return builderNewBuilder.build();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OkHttpClient getHealthCheckTimeoutClient() {
        return (OkHttpClient) this.healthCheckTimeoutClient.getValue();
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultStripeNetworkHealthChecker.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1", f = "DefaultStripeNetworkHealthChecker.kt", i = {0, 1, 1, 2}, l = {73, 75, 76}, m = "invokeSuspend", n = {"$this$flow", "$this$flow", RemoteConfigConstants.ResponseFieldKey.STATE, "$this$flow"}, s = {"L$0", "L$0", "L$1", "L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super Boolean>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = DefaultStripeNetworkHealthChecker.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super Boolean> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x009b A[PHI: r1 r5
          0x009b: PHI (r1v3 com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState) = 
          (r1v5 com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState)
          (r1v10 com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState)
         binds: [B:22:0x0098, B:10:0x0022] A[DONT_GENERATE, DONT_INLINE]
          0x009b: PHI (r5v2 kotlinx.coroutines.flow.FlowCollector) = (r5v3 kotlinx.coroutines.flow.FlowCollector), (r5v8 kotlinx.coroutines.flow.FlowCollector) binds: [B:22:0x0098, B:10:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00ab -> B:13:0x004d). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L3a
                if (r1 == r4) goto L2e
                if (r1 == r3) goto L22
                if (r1 != r2) goto L1a
                java.lang.Object r1 = r8.L$0
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                kotlin.ResultKt.throwOnFailure(r9)
                r5 = r1
                goto L4d
            L1a:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L22:
                java.lang.Object r1 = r8.L$1
                com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState r1 = (com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState) r1
                java.lang.Object r5 = r8.L$0
                kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
                kotlin.ResultKt.throwOnFailure(r9)
                goto L9b
            L2e:
                java.lang.Object r1 = r8.L$1
                com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerStateMachine r1 = (com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerStateMachine) r1
                java.lang.Object r5 = r8.L$0
                kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
                kotlin.ResultKt.throwOnFailure(r9)
                goto L6f
            L3a:
                kotlin.ResultKt.throwOnFailure(r9)
                java.lang.Object r9 = r8.L$0
                kotlinx.coroutines.flow.FlowCollector r9 = (kotlinx.coroutines.flow.FlowCollector) r9
                com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker r1 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.this
                com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerStateMachine r1 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.access$getStateMachine$p(r1)
                com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState r5 = com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState.UNKNOWN
                r1.reset(r5)
                r5 = r9
            L4d:
                kotlin.coroutines.CoroutineContext r9 = r8.getContext()
                boolean r9 = kotlinx.coroutines.JobKt.isActive(r9)
                if (r9 == 0) goto Lae
                com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker r9 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.this
                com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerStateMachine r1 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.access$getStateMachine$p(r9)
                com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker r9 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.this
                r6 = r8
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r8.L$0 = r5
                r8.L$1 = r1
                r8.label = r4
                java.lang.Object r9 = r9.isNetworkHealthy(r6)
                if (r9 != r0) goto L6f
                goto Lad
            L6f:
                java.lang.Boolean r9 = (java.lang.Boolean) r9
                boolean r9 = r9.booleanValue()
                r1.update(r9)
                com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker r9 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.this
                com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerStateMachine r9 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.access$getStateMachine$p(r9)
                java.lang.Object r9 = r9.getState()
                com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState r9 = (com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState) r9
                if (r9 != 0) goto L88
                com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState r9 = com.stripe.stripeterminal.internal.common.connectivity.StripeHealthCheckerState.UNKNOWN
            L88:
                r1 = r9
                com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker r9 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.this
                r6 = r8
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r8.L$0 = r5
                r8.L$1 = r1
                r8.label = r3
                java.lang.Object r9 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.access$emitValueForState(r9, r5, r1, r6)
                if (r9 != r0) goto L9b
                goto Lad
            L9b:
                com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker r9 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.this
                r6 = r8
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r8.L$0 = r5
                r7 = 0
                r8.L$1 = r7
                r8.label = r2
                java.lang.Object r9 = com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.access$delayForState(r9, r1, r6)
                if (r9 != r0) goto L4d
            Lad:
                return r0
            Lae:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.connectivity.StripeNetworkHealthChecker
    public Flow<Boolean> getNetworkHealthStatusFlow() {
        return FlowKt.distinctUntilChanged(FlowKt.flow(new AnonymousClass1(null)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object delayForState(StripeHealthCheckerState stripeHealthCheckerState, Continuation<? super Unit> continuation) {
        long j;
        int i = WhenMappings.$EnumSwitchMapping$0[stripeHealthCheckerState.ordinal()];
        if (i == 1) {
            j = StripeHealthCheckerDefaultConfig.ONLINE_STABLE_RETRY_DELAY_MS;
        } else if (i == 2) {
            j = 30000;
        } else {
            if (i != 3 && i != 4 && i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            j = 5000;
        }
        Object objDelay = DelayKt.delay(j, continuation);
        return objDelay == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDelay : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object emitValueForState(FlowCollector<? super Boolean> flowCollector, StripeHealthCheckerState stripeHealthCheckerState, Continuation<? super Unit> continuation) {
        int i = WhenMappings.$EnumSwitchMapping$0[stripeHealthCheckerState.ordinal()];
        boolean z = true;
        if (i != 1) {
            if (i == 2 || i == 3 || i == 4) {
                z = false;
            } else if (i != 5) {
                throw new NoWhenBranchMatchedException();
            }
        }
        Object objEmit = flowCollector.emit(Boxing.boxBoolean(z), continuation);
        return objEmit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEmit : Unit.INSTANCE;
    }

    @Override // com.stripe.stripeterminal.internal.common.connectivity.StripeNetworkHealthChecker
    public Object isNetworkHealthy(Continuation<? super Boolean> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final Call callNewCall = getHealthCheckTimeoutClient().newCall(new Request.Builder().url(this.stripeHealthCheckUrl).build());
        FirebasePerfOkHttpClient.enqueue(callNewCall, new Callback() { // from class: com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker$isNetworkHealthy$2$1$1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(e, "e");
                CancellableContinuation<Boolean> cancellableContinuation = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m817constructorimpl(false));
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                CancellableContinuation<Boolean> cancellableContinuation = cancellableContinuationImpl2;
                Response response2 = response;
                try {
                    Boolean boolValueOf = Boolean.valueOf(response2.isSuccessful());
                    CloseableKt.closeFinally(response2, null);
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m817constructorimpl(boolValueOf));
                } finally {
                }
            }
        });
        cancellableContinuationImpl2.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker$isNetworkHealthy$2$1$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                try {
                    callNewCall.cancel();
                } catch (Throwable unused) {
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
