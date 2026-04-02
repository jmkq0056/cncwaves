package com.stripe.cots.common;

import android.content.Context;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.aidlrpc.AidlRpcException;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.cots.aidlservice.CotsCollectPinResponse;
import com.stripe.cots.aidlservice.CotsReader;
import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
import com.stripe.cots.common.compatibility.PreFlightChecks;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: SimulatedCotsClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 52\u00020\u0001:\u00015B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ@\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0013H\u0096@¢\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010\u001cJ\b\u0010\u001d\u001a\u00020\u001eH\u0016J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0096@¢\u0006\u0002\u0010#J\u0018\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\u0013H\u0096@¢\u0006\u0002\u0010'J\u000e\u0010(\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010\u001cJ\u0010\u0010)\u001a\u0004\u0018\u00010\u0010H\u0096@¢\u0006\u0002\u0010\u001cJ\b\u0010*\u001a\u00020\u001bH\u0016J\u0016\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020-H\u0096@¢\u0006\u0002\u0010.J\u0016\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u000201H\u0096@¢\u0006\u0002\u00102J\u000e\u00103\u001a\u000204H\u0096@¢\u0006\u0002\u0010\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcom/stripe/cots/common/SimulatedCotsClient;", "Lcom/stripe/cots/common/CotsClientInterface;", "context", "Landroid/content/Context;", "preFlightChecks", "Lcom/stripe/cots/common/compatibility/PreFlightChecks;", "simulatedEmvBlobProvider", "Lcom/stripe/cots/common/SimulatedEmvBlobProvider;", "(Landroid/content/Context;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/cots/common/SimulatedEmvBlobProvider;)V", "disconnectFlow", "Lkotlinx/coroutines/flow/Flow;", "", "getDisconnectFlow", "()Lkotlinx/coroutines/flow/Flow;", "isConnected", OfflineStorageConstantsKt.READER, "Lcom/stripe/cots/aidlservice/CotsReader;", RemoteConfigComponent.ACTIVATE_FILE_NAME, "sessionToken", "", "rpcSessionToken", "clientType", "clientVersion", "deviceUuid", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelCollectPayment", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkDeviceCompatibility", "Lcom/stripe/cots/common/CotsError;", "collectPayment", "Lcom/stripe/cots/aidlservice/CotsContactlessResult;", "parameters", "Lcom/stripe/cots/common/CotsCollectionParameters;", "(Lcom/stripe/cots/common/CotsCollectionParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectPin", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disconnect", "discover", "initializeKeys", "killAidlServer", "delayMs", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setFakedContactlessOutcome", "fakedContactlessOutcomeType", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateReader", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SimulatedCotsClient implements CotsClientInterface {
    public static final String PARAMETERS = "com.stripe.cots.simulator.SimulatedCotsClient.collectionparameters";
    private final Context context;
    private final Flow<Boolean> disconnectFlow;
    private boolean isConnected;
    private final PreFlightChecks preFlightChecks;
    private CotsReader reader;
    private final SimulatedEmvBlobProvider simulatedEmvBlobProvider;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final MutableStateFlow<Boolean> shouldProceed = StateFlowKt.MutableStateFlow(null);

    /* JADX INFO: renamed from: com.stripe.cots.common.SimulatedCotsClient$collectPayment$1, reason: invalid class name */
    /* JADX INFO: compiled from: SimulatedCotsClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.cots.common.SimulatedCotsClient", f = "SimulatedCotsClient.kt", i = {0}, l = {80}, m = "collectPayment", n = {"this"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
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
            return SimulatedCotsClient.this.collectPayment(null, this);
        }
    }

    public SimulatedCotsClient(Context context, PreFlightChecks preFlightChecks, SimulatedEmvBlobProvider simulatedEmvBlobProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(preFlightChecks, "preFlightChecks");
        Intrinsics.checkNotNullParameter(simulatedEmvBlobProvider, "simulatedEmvBlobProvider");
        this.context = context;
        this.preFlightChecks = preFlightChecks;
        this.simulatedEmvBlobProvider = simulatedEmvBlobProvider;
        this.disconnectFlow = StateFlowKt.MutableStateFlow(false);
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Flow<Boolean> getDisconnectFlow() {
        return this.disconnectFlow;
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Object discover(Continuation<? super CotsReader> continuation) throws AidlRpcException {
        CotsError cotsErrorCheckDeviceCompatibility = checkDeviceCompatibility();
        if (cotsErrorCheckDeviceCompatibility != CotsError.NONE) {
            return new CotsReader("", CotsErrorKt.toProto(cotsErrorCheckDeviceCompatibility), null, false, null, 28, null);
        }
        CotsReader cotsReader = this.reader;
        if (cotsReader != null) {
            return cotsReader;
        }
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        CotsReader cotsReader2 = new CotsReader(string, CotsReader.CotsError.NONE, null, true, null, 20, null);
        this.reader = cotsReader2;
        return cotsReader2;
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Object activate(String str, String str2, String str3, String str4, String str5, String str6, Continuation<? super CotsReader> continuation) throws IllegalStateException, AidlRpcException {
        this.isConnected = true;
        return this.reader;
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Object disconnect(Continuation<? super Unit> continuation) throws AidlRpcException {
        this.isConnected = false;
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // com.stripe.cots.common.CotsClientInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collectPayment(com.stripe.cots.common.CotsCollectionParameters r17, kotlin.coroutines.Continuation<? super com.stripe.cots.aidlservice.CotsContactlessResult> r18) throws java.lang.IllegalStateException, com.stripe.core.aidlrpc.AidlRpcException {
        /*
            r16 = this;
            r0 = r16
            r1 = r18
            boolean r2 = r1 instanceof com.stripe.cots.common.SimulatedCotsClient.AnonymousClass1
            if (r2 == 0) goto L18
            r2 = r1
            com.stripe.cots.common.SimulatedCotsClient$collectPayment$1 r2 = (com.stripe.cots.common.SimulatedCotsClient.AnonymousClass1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 & r4
            if (r3 == 0) goto L18
            int r1 = r2.label
            int r1 = r1 - r4
            r2.label = r1
            goto L1d
        L18:
            com.stripe.cots.common.SimulatedCotsClient$collectPayment$1 r2 = new com.stripe.cots.common.SimulatedCotsClient$collectPayment$1
            r2.<init>(r1)
        L1d:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.label
            r5 = 1
            if (r4 == 0) goto L3a
            if (r4 != r5) goto L32
            java.lang.Object r2 = r2.L$0
            com.stripe.cots.common.SimulatedCotsClient r2 = (com.stripe.cots.common.SimulatedCotsClient) r2
            kotlin.ResultKt.throwOnFailure(r1)
            goto L7c
        L32:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3a:
            kotlin.ResultKt.throwOnFailure(r1)
            boolean r1 = r0.isConnected
            if (r1 == 0) goto Lb6
            kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> r1 = com.stripe.cots.common.SimulatedCotsClient.shouldProceed
            r4 = 0
            r1.setValue(r4)
            android.content.Context r4 = r0.context
            android.content.Intent r6 = new android.content.Intent
            r6.<init>()
            android.content.Context r7 = r0.context
            java.lang.String r7 = r7.getPackageName()
            java.lang.String r8 = "com.stripe.cots.simulator.SimulatedContactlessPaymentActivity"
            r6.setClassName(r7, r8)
            java.lang.String r7 = "com.stripe.cots.simulator.SimulatedCotsClient.collectionparameters"
            r8 = r17
            android.os.Parcelable r8 = (android.os.Parcelable) r8
            r6.putExtra(r7, r8)
            r7 = 268435456(0x10000000, float:2.5243549E-29)
            r6.setFlags(r7)
            r4.startActivity(r6)
            kotlinx.coroutines.flow.Flow r1 = (kotlinx.coroutines.flow.Flow) r1
            kotlinx.coroutines.flow.Flow r1 = kotlinx.coroutines.flow.FlowKt.filterNotNull(r1)
            r2.L$0 = r0
            r2.label = r5
            java.lang.Object r1 = kotlinx.coroutines.flow.FlowKt.first(r1, r2)
            if (r1 != r3) goto L7b
            return r3
        L7b:
            r2 = r0
        L7c:
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != r5) goto L9b
            com.stripe.cots.aidlservice.CotsContactlessResult r6 = new com.stripe.cots.aidlservice.CotsContactlessResult
            com.stripe.cots.aidlservice.CotsContactlessResult$ContactlessOutcome r7 = com.stripe.cots.aidlservice.CotsContactlessResult.ContactlessOutcome.PROCEED_ONLINE
            com.stripe.cots.common.SimulatedEmvBlobProvider r1 = r2.simulatedEmvBlobProvider
            java.lang.String r8 = r1.getSimsulatedEmvBlob()
            r13 = 48
            r14 = 0
            java.lang.String r9 = "fakeEncryptedTrack2"
            java.lang.String r10 = "fakeCryptogram"
            r11 = 0
            r12 = 0
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14)
            return r6
        L9b:
            if (r1 != 0) goto Lb0
            com.stripe.cots.aidlservice.CotsContactlessResult r7 = new com.stripe.cots.aidlservice.CotsContactlessResult
            com.stripe.cots.aidlservice.CotsContactlessResult$ContactlessOutcome r8 = com.stripe.cots.aidlservice.CotsContactlessResult.ContactlessOutcome.CANCELED
            r14 = 48
            r15 = 0
            java.lang.String r9 = ""
            java.lang.String r10 = ""
            java.lang.String r11 = ""
            r12 = 0
            r13 = 0
            r7.<init>(r8, r9, r10, r11, r12, r13, r14, r15)
            return r7
        Lb0:
            kotlin.NoWhenBranchMatchedException r1 = new kotlin.NoWhenBranchMatchedException
            r1.<init>()
            throw r1
        Lb6:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "Can't collectPayment from CotsReader. CotsService not connected."
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.cots.common.SimulatedCotsClient.collectPayment(com.stripe.cots.common.CotsCollectionParameters, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Object collectPin(String str, Continuation<? super CotsCollectPinResponse> continuation) {
        throw new NotImplementedError("collectPin is not implemented in SimulatedCotsClient");
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Object cancelCollectPayment(Continuation<? super Unit> continuation) {
        shouldProceed.setValue(Boxing.boxBoolean(false));
        return Unit.INSTANCE;
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Object updateReader(Continuation<? super ReaderFeatureFlags> continuation) {
        throw new NotImplementedError("updateReader is not implemented in SimulatedCotsClient");
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public CotsError checkDeviceCompatibility() {
        return this.preFlightChecks.getDeviceCompatibility();
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public void initializeKeys() throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        this.preFlightChecks.initialize();
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Object killAidlServer(long j, Continuation<? super Unit> continuation) {
        throw new NotImplementedError("killAidlServer is not implemented in SimulatedCotsClient");
    }

    @Override // com.stripe.cots.common.CotsClientInterface
    public Object setFakedContactlessOutcome(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType, Continuation<? super Unit> continuation) {
        throw new NotImplementedError("setFakedContactlessOutcome is not implemented in SimulatedCotsClient");
    }

    /* JADX INFO: compiled from: SimulatedCotsClient.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0019\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/stripe/cots/common/SimulatedCotsClient$Companion;", "", "()V", "PARAMETERS", "", "shouldProceed", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "getShouldProceed", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MutableStateFlow<Boolean> getShouldProceed() {
            return SimulatedCotsClient.shouldProceed;
        }
    }
}
