package com.stripe.jvmcore.terminal.requestfactories.discover;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.proto.api.sdk.DiscoverReadersRequest;
import kotlin.Metadata;

/* JADX INFO: compiled from: DiscoverJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;", "", "discoverReaders", "Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;", "connectionToken", "", FirebaseAnalytics.Param.LOCATION, "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DiscoverJackRabbitApiFactory {
    DiscoverReadersRequest discoverReaders(String connectionToken, String location);
}
