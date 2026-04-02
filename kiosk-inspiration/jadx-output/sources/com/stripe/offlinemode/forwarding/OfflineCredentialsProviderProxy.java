package com.stripe.offlinemode.forwarding;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.ReceivedAccountIdFromConnectionToken;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineCredentialsProviderProxy.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J&\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0096@¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u0011H\u0096@¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;", "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;", "credentialsProvider", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;", "offlineListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;", "(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;)V", "fetchOfflineCredentials", "Lcom/stripe/offlinemode/forwarding/OfflineCredentials;", OfflineStorageConstantsKt.READER, "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "connection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveAccountId", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineCredentialsProviderProxy implements OfflineCredentialsProvider {
    private final DefaultOfflineCredentialsProvider credentialsProvider;
    private final ProxyOfflineListener offlineListener;

    public OfflineCredentialsProviderProxy(DefaultOfflineCredentialsProvider credentialsProvider, ProxyOfflineListener offlineListener) {
        Intrinsics.checkNotNullParameter(credentialsProvider, "credentialsProvider");
        Intrinsics.checkNotNullParameter(offlineListener, "offlineListener");
        this.credentialsProvider = credentialsProvider;
        this.offlineListener = offlineListener;
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineCredentialsProvider
    public Object fetchOfflineCredentials(OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation, Continuation<? super OfflineCredentials> continuation) {
        OfflineListener listener = this.offlineListener.getListener();
        DefaultOfflineCredentialsProvider defaultOfflineCredentialsProvider = listener instanceof OfflineCredentialsProvider ? (OfflineCredentialsProvider) listener : null;
        if (defaultOfflineCredentialsProvider == null) {
            defaultOfflineCredentialsProvider = this.credentialsProvider;
        }
        return defaultOfflineCredentialsProvider.fetchOfflineCredentials(offlineReader, offlineConnection, offlineLocation, continuation);
    }

    @Override // com.stripe.offlinemode.forwarding.OfflineCredentialsProvider
    public Object retrieveAccountId(Continuation<? super ReceivedAccountIdFromConnectionToken> continuation) {
        return this.credentialsProvider.retrieveAccountId(continuation);
    }
}
