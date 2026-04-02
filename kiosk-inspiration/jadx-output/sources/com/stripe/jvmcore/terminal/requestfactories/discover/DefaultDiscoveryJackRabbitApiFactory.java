package com.stripe.jvmcore.terminal.requestfactories.discover;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.proto.api.sdk.DiscoverReadersRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultDiscoveryJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\b"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/discover/DefaultDiscoveryJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;", "()V", "discoverReaders", "Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;", "connectionToken", "", FirebaseAnalytics.Param.LOCATION, "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultDiscoveryJackRabbitApiFactory implements DiscoverJackRabbitApiFactory {
    @Override // com.stripe.jvmcore.terminal.requestfactories.discover.DiscoverJackRabbitApiFactory
    public DiscoverReadersRequest discoverReaders(String connectionToken, String location) {
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        if (location == null) {
            location = "";
        }
        return new DiscoverReadersRequest(connectionToken, location, null, 4, null);
    }
}
