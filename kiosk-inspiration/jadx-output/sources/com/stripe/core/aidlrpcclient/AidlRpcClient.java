package com.stripe.core.aidlrpcclient;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.squareup.wire.Message;
import com.stripe.core.aidlrpc.AidlRpc;
import com.stripe.core.aidlrpc.AidlRpcErrorCode;
import com.stripe.core.aidlrpc.AidlRpcException;
import com.stripe.core.aidlrpc.AidlRpcListener;
import com.stripe.core.aidlrpc.AidlRpcUpdateListener;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.net.rpc.base.RpcRequest;
import com.stripe.wirecrpc.AidlWireClient;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* JADX INFO: compiled from: AidlRpcClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0015H\u0016J0\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00152\u000e\u0010\u001c\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J$\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u00152\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0018\u0010%\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020\u0013H\u0016J\u001c\u0010(\u001a\u00020\u00132\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00130*H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u0002`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/stripe/core/aidlrpcclient/AidlRpcClient;", "Lcom/stripe/wirecrpc/AidlWireClient;", "context", "Landroid/content/Context;", "crpcRequestContextProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "aidlServiceConnection", "Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Landroid/content/Context;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "requestId", "", "bindToService", "", "action", "", RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "className", "clearUpdateListener", NotificationCompat.CATEGORY_SERVICE, "makeRequest", FirebaseAnalytics.Param.METHOD, "message", "Lcom/squareup/wire/Message;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/core/aidlrpc/AidlRpcListener;", "onAidlError", "errorCode", "Lcom/stripe/core/aidlrpc/AidlRpcErrorCode;", "cause", "", "setUpdateListener", "Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;", "unbindFromService", "withAidlService", "block", "Lkotlin/Function1;", "Lcom/stripe/core/aidlrpc/AidlRpc;", "aidlrpcclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AidlRpcClient implements AidlWireClient {
    private final AidlServiceConnection aidlServiceConnection;
    private final Context context;
    private final CrpcClient.CrpcRequestContextProvider crpcRequestContextProvider;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private long requestId;

    public AidlRpcClient(Context context, CrpcClient.CrpcRequestContextProvider crpcRequestContextProvider, AidlServiceConnection aidlServiceConnection, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(crpcRequestContextProvider, "crpcRequestContextProvider");
        Intrinsics.checkNotNullParameter(aidlServiceConnection, "aidlServiceConnection");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.context = context;
        this.crpcRequestContextProvider = crpcRequestContextProvider;
        this.aidlServiceConnection = aidlServiceConnection;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(AidlRpcClient.class));
    }

    @Override // com.stripe.wirecrpc.AidlWireClient
    public void bindToService(String action, String packageName, String className) throws AidlRpcException {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(className, "className");
        this.logger.d("bindToService", TuplesKt.to("action", action), TuplesKt.to(RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, packageName), TuplesKt.to("className", className));
        try {
            Intent className2 = new Intent(action).setClassName(packageName, className);
            Intrinsics.checkNotNullExpressionValue(className2, "setClassName(...)");
            boolean zBindService = this.context.bindService(className2, this.aidlServiceConnection, 1);
            this.logger.d("Context::bindService completed", TuplesKt.to(FirebaseAnalytics.Param.SUCCESS, Boolean.valueOf(zBindService)));
            if (!zBindService) {
                onAidlError$default(this, AidlRpcErrorCode.CONNECTION_FAILURE, "Failure to connect to service " + packageName + '.' + className, null, 4, null);
            }
        } catch (SecurityException e) {
            onAidlError(AidlRpcErrorCode.CONNECTION_FAILURE, "Failure to connect to service " + packageName + '.' + className, e);
        }
        try {
            this.aidlServiceConnection.waitForServiceConnected();
        } catch (Exception e2) {
            onAidlError(AidlRpcErrorCode.UNEXPECTED_DISCONNECT, "Service never connected", e2);
        }
    }

    @Override // com.stripe.wirecrpc.AidlWireClient
    public void unbindFromService() throws AidlRpcException {
        this.logger.d("unbindFromService", new Pair[0]);
        this.aidlServiceConnection.disconnectFromService(false);
        this.context.unbindService(this.aidlServiceConnection);
    }

    @Override // com.stripe.wirecrpc.AidlWireClient
    public void makeRequest(final String service, final String method, final Message<?, ?> message, final AidlRpcListener listener) throws AidlRpcException {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.logger.d("makeRequest", TuplesKt.to(NotificationCompat.CATEGORY_SERVICE, service), TuplesKt.to(FirebaseAnalytics.Param.METHOD, method), TuplesKt.to("requestId", Long.valueOf(this.requestId)));
        withAidlService(new Function1<AidlRpc, Unit>() { // from class: com.stripe.core.aidlrpcclient.AidlRpcClient.makeRequest.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AidlRpc aidlRpc) throws RemoteException {
                invoke2(aidlRpc);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AidlRpc it) throws RemoteException {
                Intrinsics.checkNotNullParameter(it, "it");
                AidlRpcClient aidlRpcClient = AidlRpcClient.this;
                long j = aidlRpcClient.requestId;
                aidlRpcClient.requestId = 1 + j;
                ByteString byteStringEncodeByteString = message.encodeByteString();
                String token = AidlRpcClient.this.crpcRequestContextProvider.getToken();
                String localIp = AidlRpcClient.this.crpcRequestContextProvider.getLocalIp();
                DeviceInfo deviceInfo = AidlRpcClient.this.crpcRequestContextProvider.getDeviceInfo();
                it.makeRequest(new RpcRequest(j, service, method, byteStringEncodeByteString, 0L, null, localIp, token, null, AidlRpcClient.this.crpcRequestContextProvider.getVersionInfo(), deviceInfo, 0L, null, 6448, null).encode(), listener);
            }
        });
    }

    @Override // com.stripe.wirecrpc.AidlWireClient
    public void setUpdateListener(final String service, final AidlRpcUpdateListener listener) throws AidlRpcException {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(listener, "listener");
        withAidlService(new Function1<AidlRpc, Unit>() { // from class: com.stripe.core.aidlrpcclient.AidlRpcClient.setUpdateListener.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AidlRpc aidlRpc) throws RemoteException {
                invoke2(aidlRpc);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AidlRpc it) throws RemoteException {
                Intrinsics.checkNotNullParameter(it, "it");
                it.setUpdateListener(service, listener);
            }
        });
    }

    @Override // com.stripe.wirecrpc.AidlWireClient
    public void clearUpdateListener(final String service) throws AidlRpcException {
        Intrinsics.checkNotNullParameter(service, "service");
        withAidlService(new Function1<AidlRpc, Unit>() { // from class: com.stripe.core.aidlrpcclient.AidlRpcClient.clearUpdateListener.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AidlRpc aidlRpc) throws RemoteException {
                invoke2(aidlRpc);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AidlRpc it) throws RemoteException {
                Intrinsics.checkNotNullParameter(it, "it");
                it.clearUpdateListener(service);
            }
        });
    }

    private final void withAidlService(Function1<? super AidlRpc, Unit> block) throws AidlRpcException {
        Unit unit;
        AidlRpc aidlService$aidlrpcclient_release = this.aidlServiceConnection.getAidlService$aidlrpcclient_release();
        if (aidlService$aidlrpcclient_release != null) {
            try {
                block.invoke(aidlService$aidlrpcclient_release);
            } catch (RemoteException e) {
                onAidlError(AidlRpcErrorCode.REQUEST_FAILURE, "Failed to send request to AIDL server", e);
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            onAidlError$default(this, AidlRpcErrorCode.UNEXPECTED_DISCONNECT, "AIDL server is not connected", null, 4, null);
        }
    }

    static /* synthetic */ void onAidlError$default(AidlRpcClient aidlRpcClient, AidlRpcErrorCode aidlRpcErrorCode, String str, Throwable th, int i, Object obj) throws AidlRpcException {
        if ((i & 4) != 0) {
            th = null;
        }
        aidlRpcClient.onAidlError(aidlRpcErrorCode, str, th);
    }

    private final void onAidlError(AidlRpcErrorCode errorCode, String message, Throwable cause) throws AidlRpcException {
        AidlRpcException aidlRpcException = new AidlRpcException(errorCode, message, cause);
        this.logger.e("AIDL RPC error", aidlRpcException, new Pair[0]);
        throw aidlRpcException;
    }
}
