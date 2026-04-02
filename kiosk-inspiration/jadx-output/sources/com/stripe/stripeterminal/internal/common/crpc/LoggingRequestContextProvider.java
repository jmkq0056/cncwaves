package com.stripe.stripeterminal.internal.common.crpc;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcTimeout;
import com.stripe.jvmcore.terminal.api.PosInfo;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.net.rpc.base.RpcRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoggingRequestContextProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0007\u001a\u00020\bH\u0096\u0001J\t\u0010\t\u001a\u00020\nH\u0096\u0001J\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0096\u0001J\t\u0010\u000f\u001a\u00020\nH\u0096\u0001J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "posInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "plymouthRequestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;", "(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;)V", "getDeviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "getLocalIp", "", "getRequestTimeout", "Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;", "crpcRequest", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "getSessionToken", "getVersionInfo", "Lcom/stripe/proto/model/common/VersionInfoPb;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LoggingRequestContextProvider implements CrpcClient.CrpcRequestContextProvider {
    private final /* synthetic */ PlymouthRequestContextProvider $$delegate_0;
    private final PosInfoFactory posInfoFactory;

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    public DeviceInfo getDeviceInfo() {
        return this.$$delegate_0.getDeviceInfo();
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    public String getLocalIp() {
        return this.$$delegate_0.getLocalIp();
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    public CrpcTimeout getRequestTimeout(RpcRequest crpcRequest) {
        Intrinsics.checkNotNullParameter(crpcRequest, "crpcRequest");
        return this.$$delegate_0.getRequestTimeout(crpcRequest);
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    /* JADX INFO: renamed from: getSessionToken */
    public String getToken() {
        return this.$$delegate_0.getToken();
    }

    public LoggingRequestContextProvider(PosInfoFactory posInfoFactory, PlymouthRequestContextProvider plymouthRequestContextProvider) {
        Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
        Intrinsics.checkNotNullParameter(plymouthRequestContextProvider, "plymouthRequestContextProvider");
        this.posInfoFactory = posInfoFactory;
        this.$$delegate_0 = plymouthRequestContextProvider;
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    public VersionInfoPb getVersionInfo() {
        VersionInfoPb.ClientType clientType;
        PosInfo posInfoCreateForLocalPos = this.posInfoFactory.createForLocalPos();
        VersionInfoPb secondaryVersionInfo = posInfoCreateForLocalPos.getSecondaryVersionInfo();
        if (secondaryVersionInfo == null || (clientType = secondaryVersionInfo.client_type) == null) {
            clientType = posInfoCreateForLocalPos.getVersionInfo().client_type;
        }
        return VersionInfoPb.copy$default(posInfoCreateForLocalPos.getVersionInfo(), clientType, null, 0, null, 14, null);
    }
}
