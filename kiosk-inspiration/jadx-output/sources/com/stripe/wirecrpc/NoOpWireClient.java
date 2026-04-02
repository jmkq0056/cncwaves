package com.stripe.wirecrpc;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.squareup.wire.Message;
import com.stripe.core.aidlrpc.AidlRpcListener;
import com.stripe.core.aidlrpc.AidlRpcUpdateListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NoOpWireClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0016J0\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u000e\u0010\r\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016¨\u0006\u0014"}, d2 = {"Lcom/stripe/wirecrpc/NoOpWireClient;", "Lcom/stripe/wirecrpc/AidlWireClient;", "()V", "bindToService", "", "action", "", RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "className", "clearUpdateListener", NotificationCompat.CATEGORY_SERVICE, "makeRequest", FirebaseAnalytics.Param.METHOD, "message", "Lcom/squareup/wire/Message;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/core/aidlrpc/AidlRpcListener;", "setUpdateListener", "Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;", "unbindFromService", "aidl-utils_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NoOpWireClient implements AidlWireClient {
    @Override // com.stripe.wirecrpc.AidlWireClient
    public void bindToService(String action, String packageName, String className) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(className, "className");
    }

    @Override // com.stripe.wirecrpc.AidlWireClient
    public void clearUpdateListener(String service) {
        Intrinsics.checkNotNullParameter(service, "service");
    }

    @Override // com.stripe.wirecrpc.AidlWireClient
    public void makeRequest(String service, String method, Message<?, ?> message, AidlRpcListener listener) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(listener, "listener");
    }

    @Override // com.stripe.wirecrpc.AidlWireClient
    public void setUpdateListener(String service, AidlRpcUpdateListener listener) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(listener, "listener");
    }

    @Override // com.stripe.wirecrpc.AidlWireClient
    public void unbindFromService() {
    }
}
