package com.stripe.offlinemode.forwarding;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.ReceivedAccountIdFromConnectionToken;
import com.stripe.stripeterminal.external.models.ConnectionTokenException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OfflineCredentialsProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH¦@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\fH¦@¢\u0006\u0002\u0010\rø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;", "", "fetchOfflineCredentials", "Lcom/stripe/offlinemode/forwarding/OfflineCredentials;", OfflineStorageConstantsKt.READER, "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "connection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveAccountId", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineCredentialsProvider {
    Object fetchOfflineCredentials(OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation, Continuation<? super OfflineCredentials> continuation) throws ForwardingApiException, ConnectionTokenException;

    Object retrieveAccountId(Continuation<? super ReceivedAccountIdFromConnectionToken> continuation);
}
