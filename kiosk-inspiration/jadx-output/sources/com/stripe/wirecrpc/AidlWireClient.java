package com.stripe.wirecrpc;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.squareup.wire.Message;
import com.stripe.core.aidlrpc.AidlRpcListener;
import com.stripe.core.aidlrpc.AidlRpcUpdateListener;
import kotlin.Metadata;

/* JADX INFO: compiled from: AidlWireClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H&J0\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u000e\u0010\f\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0011H&J\b\u0010\u0012\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0013À\u0006\u0001"}, d2 = {"Lcom/stripe/wirecrpc/AidlWireClient;", "", "bindToService", "", "action", "", RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "className", "clearUpdateListener", NotificationCompat.CATEGORY_SERVICE, "makeRequest", FirebaseAnalytics.Param.METHOD, "message", "Lcom/squareup/wire/Message;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/core/aidlrpc/AidlRpcListener;", "setUpdateListener", "Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;", "unbindFromService", "aidl-utils_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AidlWireClient {
    void bindToService(String action, String packageName, String className) throws Exception;

    void clearUpdateListener(String service) throws Exception;

    void makeRequest(String service, String method, Message<?, ?> message, AidlRpcListener listener) throws Exception;

    void setUpdateListener(String service, AidlRpcUpdateListener listener) throws Exception;

    void unbindFromService() throws Exception;
}
