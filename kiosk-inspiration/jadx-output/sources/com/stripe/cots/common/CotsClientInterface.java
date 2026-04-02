package com.stripe.cots.common;

import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.aidlrpc.AidlRpcException;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.cots.aidlservice.CotsCollectPinResponse;
import com.stripe.cots.aidlservice.CotsContactlessResult;
import com.stripe.cots.aidlservice.CotsReader;
import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: CotsClientInterface.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J@\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH¦@¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\u00020\u0012H¦@¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0015H&J\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H¦@¢\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\nH¦@¢\u0006\u0002\u0010\u001eJ\u000e\u0010\u001f\u001a\u00020\u0012H¦@¢\u0006\u0002\u0010\u0013J\u0010\u0010 \u001a\u0004\u0018\u00010\bH¦@¢\u0006\u0002\u0010\u0013J\b\u0010!\u001a\u00020\u0012H&J\u0016\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$H¦@¢\u0006\u0002\u0010%J\u0016\u0010&\u001a\u00020\u00122\u0006\u0010'\u001a\u00020(H¦@¢\u0006\u0002\u0010)J\u0010\u0010*\u001a\u0004\u0018\u00010+H¦@¢\u0006\u0002\u0010\u0013R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006,À\u0006\u0001"}, d2 = {"Lcom/stripe/cots/common/CotsClientInterface;", "", "disconnectFlow", "Lkotlinx/coroutines/flow/Flow;", "", "getDisconnectFlow", "()Lkotlinx/coroutines/flow/Flow;", RemoteConfigComponent.ACTIVATE_FILE_NAME, "Lcom/stripe/cots/aidlservice/CotsReader;", "sessionToken", "", "rpcSessionToken", "clientType", "clientVersion", "deviceUuid", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelCollectPayment", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkDeviceCompatibility", "Lcom/stripe/cots/common/CotsError;", "collectPayment", "Lcom/stripe/cots/aidlservice/CotsContactlessResult;", "parameters", "Lcom/stripe/cots/common/CotsCollectionParameters;", "(Lcom/stripe/cots/common/CotsCollectionParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectPin", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disconnect", "discover", "initializeKeys", "killAidlServer", "delayMs", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setFakedContactlessOutcome", "fakedContactlessOutcomeType", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateReader", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CotsClientInterface {
    Object activate(String str, String str2, String str3, String str4, String str5, String str6, Continuation<? super CotsReader> continuation) throws IllegalStateException, AidlRpcException;

    Object cancelCollectPayment(Continuation<? super Unit> continuation);

    CotsError checkDeviceCompatibility();

    Object collectPayment(CotsCollectionParameters cotsCollectionParameters, Continuation<? super CotsContactlessResult> continuation) throws IllegalStateException, AidlRpcException;

    Object collectPin(String str, Continuation<? super CotsCollectPinResponse> continuation) throws AidlRpcException;

    Object disconnect(Continuation<? super Unit> continuation) throws AidlRpcException;

    Object discover(Continuation<? super CotsReader> continuation) throws AidlRpcException;

    Flow<Boolean> getDisconnectFlow();

    void initializeKeys();

    Object killAidlServer(long j, Continuation<? super Unit> continuation);

    Object setFakedContactlessOutcome(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType, Continuation<? super Unit> continuation);

    Object updateReader(Continuation<? super ReaderFeatureFlags> continuation);
}
