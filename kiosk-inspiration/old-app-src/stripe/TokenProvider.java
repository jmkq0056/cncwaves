package com.example.digitalkiosk.stripe.providers;

import com.example.digitalkiosk.network.ApiClient;
import com.stripe.stripeterminal.external.callable.ConnectionTokenCallback;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import com.stripe.stripeterminal.external.models.ConnectionTokenException;
import com.sun.jna.Callback;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TokenProvider.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lcom/example/digitalkiosk/stripe/providers/TokenProvider;", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", "<init>", "()V", "fetchConnectionToken", "", Callback.METHOD_NAME, "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TokenProvider implements ConnectionTokenProvider {
    @Override // com.stripe.stripeterminal.external.callable.ConnectionTokenProvider
    public void fetchConnectionToken(ConnectionTokenCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            callback.onSuccess(ApiClient.INSTANCE.stripe_connection_token$app_release());
        } catch (ConnectionTokenException e) {
            callback.onFailure(e);
        }
    }
}
