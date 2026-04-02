package com.stripe.offlinemode.forwarding;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.log.OfflineForwardingTraceManager;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ReceivedAccountIdFromConnectionToken;
import com.stripe.proto.model.rest.RedeemedForOfflineConnectionToken;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.external.callable.ConnectionTokenCallback;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import com.stripe.stripeterminal.external.models.ConnectionTokenException;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: compiled from: DefaultOfflineCredentialsProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 02\u00020\u0001:\u00010BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\"\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\rj\u0002`\u0012¢\u0006\u0002\u0010\u0013J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u000e\u0010\u001c\u001a\u00020\u001dH\u0082@¢\u0006\u0002\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u001d2\b\b\u0002\u0010 \u001a\u00020!H\u0082@¢\u0006\u0002\u0010\"J&\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u00192\u0006\u0010'\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010(J\u001e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u0015H\u0082@¢\u0006\u0002\u0010-J\u000e\u0010.\u001a\u00020/H\u0096@¢\u0006\u0002\u0010\u001eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\rj\u0002`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;", "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;", "offlineConnectionService", "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;", "connectionTokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", "offlineForwardingDelayCalculator", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;", "traceManager", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;", "logger", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;", "discreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "(Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/jvmcore/logging/HealthLogger;)V", "buildRedemptionRequest", "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;", "offlineReader", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "offlineConnection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "offlineLocation", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "fetchConnectionToken", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchConnectionTokenAndRetryErrors", "attempts", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchOfflineCredentials", "Lcom/stripe/offlinemode/forwarding/OfflineCredentials;", OfflineStorageConstantsKt.READER, "connection", FirebaseAnalytics.Param.LOCATION, "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "redeemForOfflineStripeSessionToken", "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;", "accountId", "request", "(Ljava/lang/String;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveAccountId", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineCredentialsProvider implements OfflineCredentialsProvider {
    private static final int MAX_TOKEN_REDEMPTION_ATTEMPTS = 5;
    private final ConnectionTokenProvider connectionTokenProvider;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger;
    private final OfflineForwardingTraceLogger logger;
    private final OfflineConnectionService offlineConnectionService;
    private final DefaultOfflineForwardingDelayCalculator offlineForwardingDelayCalculator;
    private final OfflineForwardingTraceManager traceManager;

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineCredentialsProvider.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider", f = "DefaultOfflineCredentialsProvider.kt", i = {0, 0, 1, 1}, l = {WinError.ERROR_SEM_OWNER_DIED, WinError.ERROR_BUFFER_OVERFLOW, 112}, m = "fetchConnectionTokenAndRetryErrors", n = {"this", "attempts", "this", "failures"}, s = {"L$0", "I$0", "L$0", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
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
            return DefaultOfflineCredentialsProvider.this.fetchConnectionTokenAndRetryErrors(0, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineCredentialsProvider.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider", f = "DefaultOfflineCredentialsProvider.kt", i = {}, l = {40}, m = "fetchOfflineCredentials", n = {}, s = {})
    static final class C02951 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02951(Continuation<? super C02951> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineCredentialsProvider.this.fetchOfflineCredentials(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineCredentialsProvider.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider", f = "DefaultOfflineCredentialsProvider.kt", i = {0, 0, 0, 1, 1, 1, 2}, l = {72, 79, 82}, m = "redeemForOfflineStripeSessionToken", n = {"this", "accountId", "request", "this", "accountId", "request", "this"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0"})
    static final class C02961 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02961(Continuation<? super C02961> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineCredentialsProvider.this.redeemForOfflineStripeSessionToken(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$retrieveAccountId$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineCredentialsProvider.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider", f = "DefaultOfflineCredentialsProvider.kt", i = {0, 1}, l = {52, 56, 57}, m = "retrieveAccountId", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C02971 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02971(Continuation<? super C02971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineCredentialsProvider.this.retrieveAccountId(this);
        }
    }

    public DefaultOfflineCredentialsProvider(OfflineConnectionService offlineConnectionService, ConnectionTokenProvider connectionTokenProvider, DefaultOfflineForwardingDelayCalculator offlineForwardingDelayCalculator, OfflineForwardingTraceManager traceManager, OfflineForwardingTraceLogger logger, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger) {
        Intrinsics.checkNotNullParameter(offlineConnectionService, "offlineConnectionService");
        Intrinsics.checkNotNullParameter(connectionTokenProvider, "connectionTokenProvider");
        Intrinsics.checkNotNullParameter(offlineForwardingDelayCalculator, "offlineForwardingDelayCalculator");
        Intrinsics.checkNotNullParameter(traceManager, "traceManager");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
        this.offlineConnectionService = offlineConnectionService;
        this.connectionTokenProvider = connectionTokenProvider;
        this.offlineForwardingDelayCalculator = offlineForwardingDelayCalculator;
        this.traceManager = traceManager;
        this.logger = logger;
        this.discreteLogger = discreteLogger;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.offlinemode.forwarding.OfflineCredentialsProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object fetchOfflineCredentials(com.stripe.proto.model.offline_mode.OfflineReader r5, com.stripe.proto.model.offline_mode.OfflineConnection r6, com.stripe.proto.model.offline_mode.OfflineLocation r7, kotlin.coroutines.Continuation<? super com.stripe.offlinemode.forwarding.OfflineCredentials> r8) throws java.lang.IllegalAccessException, java.lang.InstantiationException, com.stripe.offlinemode.forwarding.ForwardingApiException, com.stripe.stripeterminal.external.models.ConnectionTokenException {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.C02951
            if (r0 == 0) goto L14
            r0 = r8
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1 r0 = (com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.C02951) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1 r0 = new com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L44
        L2a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L32:
            kotlin.ResultKt.throwOnFailure(r8)
            com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest r5 = r4.buildRedemptionRequest(r5, r6, r7)
            java.lang.String r6 = r6.account_id
            r0.label = r3
            java.lang.Object r8 = r4.redeemForOfflineStripeSessionToken(r6, r5, r0)
            if (r8 != r1) goto L44
            return r1
        L44:
            com.stripe.proto.model.rest.RedeemedForOfflineConnectionToken r8 = (com.stripe.proto.model.rest.RedeemedForOfflineConnectionToken) r8
            com.stripe.offlinemode.forwarding.OfflineCredentials r5 = new com.stripe.offlinemode.forwarding.OfflineCredentials
            java.lang.Boolean r6 = r8.livemode
            if (r6 == 0) goto L51
            boolean r6 = r6.booleanValue()
            goto L52
        L51:
            r6 = 0
        L52:
            java.lang.String r7 = r8.account_id
            java.lang.String r8 = r8.stripe_session_token
            r5.<init>(r6, r7, r8)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.fetchOfflineCredentials(com.stripe.proto.model.offline_mode.OfflineReader, com.stripe.proto.model.offline_mode.OfflineConnection, com.stripe.proto.model.offline_mode.OfflineLocation, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0092 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.offlinemode.forwarding.OfflineCredentialsProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object retrieveAccountId(kotlin.coroutines.Continuation<? super com.stripe.proto.model.rest.ReceivedAccountIdFromConnectionToken> r9) throws com.stripe.stripeterminal.external.models.ConnectionTokenException {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.C02971
            if (r0 == 0) goto L14
            r0 = r9
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$retrieveAccountId$1 r0 = (com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.C02971) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$retrieveAccountId$1 r0 = new com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$retrieveAccountId$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 0
            r7 = 1
            if (r2 == 0) goto L4a
            if (r2 == r7) goto L42
            if (r2 == r5) goto L3a
            if (r2 != r4) goto L32
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3a:
            java.lang.Object r2 = r0.L$0
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider r2 = (com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7e
        L42:
            java.lang.Object r2 = r0.L$0
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider r2 = (com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L59
        L4a:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r8
            r0.label = r7
            java.lang.Object r9 = fetchConnectionTokenAndRetryErrors$default(r8, r3, r0, r7, r6)
            if (r9 != r1) goto L58
            goto L91
        L58:
            r2 = r8
        L59:
            java.lang.String r9 = (java.lang.String) r9
            com.stripe.offlinemode.forwarding.OfflineConnectionService r7 = r2.offlineConnectionService
            r7.setAuthToken(r9)
            com.stripe.offlinemode.log.OfflineForwardingTraceLogger r9 = r2.logger
            java.lang.String r7 = "Retrieving account details."
            kotlin.Pair[] r3 = new kotlin.Pair[r3]
            r9.d(r7, r3)
            com.stripe.offlinemode.forwarding.OfflineConnectionService r9 = r2.offlineConnectionService
            com.stripe.offlinemode.log.OfflineForwardingTraceManager r3 = r2.traceManager
            java.lang.String r7 = ""
            com.stripe.loggingmodels.Trace$Context r3 = r3.getTraceContext(r7)
            r0.L$0 = r2
            r0.label = r5
            java.lang.Object r9 = r9.retrieveAccount(r3, r0)
            if (r9 != r1) goto L7e
            goto L91
        L7e:
            com.stripe.jvmcore.restclient.RestResponse r9 = (com.stripe.jvmcore.restclient.RestResponse) r9
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$retrieveAccountId$2 r3 = new com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$retrieveAccountId$2
            r3.<init>(r6)
            kotlin.jvm.functions.Function2 r3 = (kotlin.jvm.functions.Function2) r3
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r9 = com.stripe.offlinemode.forwarding.RestResponseHandlerKt.decodeResponseAndHandleAuthFailure(r9, r3, r0)
            if (r9 != r1) goto L92
        L91:
            return r1
        L92:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.retrieveAccountId(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$retrieveAccountId$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineCredentialsProvider.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "it", "Lcom/stripe/proto/model/rest/ErrorResponse;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$retrieveAccountId$2", f = "DefaultOfflineCredentialsProvider.kt", i = {}, l = {58}, m = "invokeSuspend", n = {}, s = {})
    static final class C02982 extends SuspendLambda implements Function2<ErrorResponse, Continuation<? super ReceivedAccountIdFromConnectionToken>, Object> {
        int label;

        C02982(Continuation<? super C02982> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineCredentialsProvider.this.new C02982(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ErrorResponse errorResponse, Continuation<? super ReceivedAccountIdFromConnectionToken> continuation) {
            return ((C02982) create(errorResponse, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws ConnectionTokenException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object objRetrieveAccountId = DefaultOfflineCredentialsProvider.this.retrieveAccountId(this);
            return objRetrieveAccountId == coroutine_suspended ? coroutine_suspended : objRetrieveAccountId;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ce, code lost:
    
        if (r12 != r1) goto L41;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9 A[Catch: ForwardingApiException -> 0x0037, PHI: r2 r10 r11 r12
      0x00b9: PHI (r2v9 java.lang.Object) = (r2v7 java.lang.Object), (r2v15 java.lang.Object) binds: [B:36:0x00b6, B:22:0x0052] A[DONT_GENERATE, DONT_INLINE]
      0x00b9: PHI (r10v9 com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider) = 
      (r10v23 com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider)
      (r10v17 com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider)
     binds: [B:36:0x00b6, B:22:0x0052] A[DONT_GENERATE, DONT_INLINE]
      0x00b9: PHI (r11v9 ??) = (r11v14 ??), (r11v15 ??) binds: [B:36:0x00b6, B:22:0x0052] A[DONT_GENERATE, DONT_INLINE]
      0x00b9: PHI (r12v11 com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest) = 
      (r12v7 com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest)
      (r12v15 com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest)
     binds: [B:36:0x00b6, B:22:0x0052] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {ForwardingApiException -> 0x0037, blocks: (B:14:0x0032, B:41:0x00d1, B:38:0x00b9, B:35:0x00a0), top: B:48:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2, types: [com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider] */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object redeemForOfflineStripeSessionToken(java.lang.String r10, com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest r11, kotlin.coroutines.Continuation<? super com.stripe.proto.model.rest.RedeemedForOfflineConnectionToken> r12) throws java.lang.IllegalAccessException, java.lang.InstantiationException, com.stripe.offlinemode.forwarding.ForwardingApiException, com.stripe.stripeterminal.external.models.ConnectionTokenException {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.redeemForOfflineStripeSessionToken(java.lang.String, com.stripe.proto.api.rest.RedeemForOfflineConnectionTokenRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$2, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineCredentialsProvider.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;", "it", "Lcom/stripe/proto/model/rest/ErrorResponse;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$2", f = "DefaultOfflineCredentialsProvider.kt", i = {}, l = {83}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<ErrorResponse, Continuation<? super RedeemedForOfflineConnectionToken>, Object> {
        final /* synthetic */ String $accountId;
        final /* synthetic */ RedeemForOfflineConnectionTokenRequest $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, RedeemForOfflineConnectionTokenRequest redeemForOfflineConnectionTokenRequest, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$accountId = str;
            this.$request = redeemForOfflineConnectionTokenRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineCredentialsProvider.this.new AnonymousClass2(this.$accountId, this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ErrorResponse errorResponse, Continuation<? super RedeemedForOfflineConnectionToken> continuation) {
            return ((AnonymousClass2) create(errorResponse, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IllegalAccessException, InstantiationException, ForwardingApiException, ConnectionTokenException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            Object objRedeemForOfflineStripeSessionToken = DefaultOfflineCredentialsProvider.this.redeemForOfflineStripeSessionToken(this.$accountId, this.$request, this);
            return objRedeemForOfflineStripeSessionToken == coroutine_suspended ? coroutine_suspended : objRedeemForOfflineStripeSessionToken;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a8, code lost:
    
        if (r12 != r1) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetchConnectionTokenAndRetryErrors(int r11, kotlin.coroutines.Continuation<? super java.lang.String> r12) throws com.stripe.stripeterminal.external.models.ConnectionTokenException {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r12
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1 r0 = (com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1 r0 = new com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1
            r0.<init>(r12)
        L19:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L50
            if (r2 == r6) goto L44
            if (r2 == r5) goto L3a
            if (r2 != r4) goto L32
            kotlin.ResultKt.throwOnFailure(r12)
            goto Lab
        L32:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3a:
            int r11 = r0.I$0
            java.lang.Object r2 = r0.L$0
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider r2 = (com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider) r2
            kotlin.ResultKt.throwOnFailure(r12)
            goto L9f
        L44:
            int r11 = r0.I$0
            java.lang.Object r2 = r0.L$0
            com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider r2 = (com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider) r2
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: com.stripe.stripeterminal.external.models.ConnectionTokenException -> L4e
            goto L77
        L4e:
            r12 = move-exception
            goto L7c
        L50:
            kotlin.ResultKt.throwOnFailure(r12)
            com.stripe.offlinemode.log.OfflineForwardingTraceLogger r12 = r10.logger
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r7 = "Fetch connection token attempt: "
            r2.<init>(r7)
            java.lang.StringBuilder r2 = r2.append(r11)
            java.lang.String r2 = r2.toString()
            kotlin.Pair[] r7 = new kotlin.Pair[r3]
            r12.d(r2, r7)
            r0.L$0 = r10     // Catch: com.stripe.stripeterminal.external.models.ConnectionTokenException -> L7a
            r0.I$0 = r11     // Catch: com.stripe.stripeterminal.external.models.ConnectionTokenException -> L7a
            r0.label = r6     // Catch: com.stripe.stripeterminal.external.models.ConnectionTokenException -> L7a
            java.lang.Object r12 = r10.fetchConnectionToken(r0)     // Catch: com.stripe.stripeterminal.external.models.ConnectionTokenException -> L7a
            if (r12 != r1) goto L76
            goto Laa
        L76:
            r2 = r10
        L77:
            java.lang.String r12 = (java.lang.String) r12     // Catch: com.stripe.stripeterminal.external.models.ConnectionTokenException -> L4e
            return r12
        L7a:
            r12 = move-exception
            r2 = r10
        L7c:
            com.stripe.offlinemode.log.OfflineForwardingTraceLogger r7 = r2.logger
            r8 = r12
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            kotlin.Pair[] r3 = new kotlin.Pair[r3]
            java.lang.String r9 = "Failed to fetch token"
            r7.e(r9, r8, r3)
            int r11 = r11 + r6
            r3 = 5
            if (r11 >= r3) goto Lae
            com.stripe.offlinemode.forwarding.DefaultOfflineForwardingDelayCalculator r12 = r2.offlineForwardingDelayCalculator
            long r6 = r12.calculateExponentialDelay(r11)
            r0.L$0 = r2
            r0.I$0 = r11
            r0.label = r5
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.delay(r6, r0)
            if (r12 != r1) goto L9f
            goto Laa
        L9f:
            r12 = 0
            r0.L$0 = r12
            r0.label = r4
            java.lang.Object r12 = r2.fetchConnectionTokenAndRetryErrors(r11, r0)
            if (r12 != r1) goto Lab
        Laa:
            return r1
        Lab:
            java.lang.String r12 = (java.lang.String) r12
            return r12
        Lae:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider.fetchConnectionTokenAndRetryErrors(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object fetchConnectionTokenAndRetryErrors$default(DefaultOfflineCredentialsProvider defaultOfflineCredentialsProvider, int i, Continuation continuation, int i2, Object obj) throws ConnectionTokenException {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return defaultOfflineCredentialsProvider.fetchConnectionTokenAndRetryErrors(i, continuation);
    }

    private final RedeemForOfflineConnectionTokenRequest buildRedemptionRequest(OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation) {
        String str;
        Long lValueOf;
        String str2 = offlineReader.stripe_id;
        String str3 = offlineReader.serial_number;
        Long lValueOf2 = Long.valueOf(offlineReader.last_activated_at);
        if (lValueOf2.longValue() == 0) {
            lValueOf2 = null;
        }
        if (lValueOf2 != null) {
            lValueOf = Long.valueOf(lValueOf2.longValue() / ((long) 1000));
            str = null;
        } else {
            str = null;
            lValueOf = null;
        }
        String str4 = offlineConnection.device_type;
        ApiLocationPb apiLocationPb = offlineLocation.full_location;
        if (apiLocationPb != null) {
            str = apiLocationPb.id;
        }
        return new RedeemForOfflineConnectionTokenRequest(str4, str3, str, lValueOf, str2, offlineConnection.pos_version_info, offlineConnection.pos_device_info, offlineConnection.reader_device_info, offlineConnection.connection_type, null, 512, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object fetchConnectionToken(Continuation<? super String> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        this.connectionTokenProvider.fetchConnectionToken(new ConnectionTokenCallback() { // from class: com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider$fetchConnectionToken$2$1
            @Override // com.stripe.stripeterminal.external.callable.ConnectionTokenCallback
            public void onSuccess(String token) {
                Intrinsics.checkNotNullParameter(token, "token");
                CancellableContinuation<String> cancellableContinuation = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m817constructorimpl(token));
            }

            @Override // com.stripe.stripeterminal.external.callable.ConnectionTokenCallback
            public void onFailure(ConnectionTokenException e) {
                Intrinsics.checkNotNullParameter(e, "e");
                CancellableContinuation<String> cancellableContinuation = cancellableContinuationImpl2;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m817constructorimpl(ResultKt.createFailure(e)));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
