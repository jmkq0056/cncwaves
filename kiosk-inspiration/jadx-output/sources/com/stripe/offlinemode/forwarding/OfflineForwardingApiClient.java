package com.stripe.offlinemode.forwarding;

import com.stripe.offlinemode.models.OfflineForwardingRequest;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.stripeterminal.external.models.ConnectionTokenException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OfflineForwardingApiClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\bJ.\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H¦@¢\u0006\u0002\u0010\u0014ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0015À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;", "", "clearStoredCredentials", "", "forwardOfflinePayment", "Lcom/stripe/proto/model/rest/PaymentIntent;", "request", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forwardOfflineSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "retrieveSetupIntent", OfflineStorageConstantsKt.ID, "", "offlineReader", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "offlineConnection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "offlineLocation", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineForwardingApiClient {
    void clearStoredCredentials();

    Object forwardOfflinePayment(OfflineForwardingRequest offlineForwardingRequest, Continuation<? super PaymentIntent> continuation) throws ForwardingApiException, ConnectionTokenException;

    Object forwardOfflineSetupIntent(OfflineForwardingRequest offlineForwardingRequest, Continuation<? super SetupIntent> continuation) throws ForwardingApiException, ConnectionTokenException;

    Object retrieveSetupIntent(String str, OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation, Continuation<? super SetupIntent> continuation);
}
