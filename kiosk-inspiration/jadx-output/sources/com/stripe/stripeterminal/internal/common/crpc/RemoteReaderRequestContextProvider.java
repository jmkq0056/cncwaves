package com.stripe.stripeterminal.internal.common.crpc;

import com.stripe.jvmcore.crpcclient.CrpcTimeout;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.net.rpc.base.RpcRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: compiled from: RemoteReaderRequestContextProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0014"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;", "Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;", "posInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "localIpAddressProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;", "(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V", "token", "", "getToken", "()Ljava/lang/String;", "setToken", "(Ljava/lang/String;)V", "getDeviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "getRequestTimeout", "Lcom/stripe/jvmcore/crpcclient/CrpcTimeout;", "crpcRequest", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "getSessionToken", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RemoteReaderRequestContextProvider extends SdkCrpcRequestContextProvider {
    private final PosInfoFactory posInfoFactory;
    private String token;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteReaderRequestContextProvider(PosInfoFactory posInfoFactory, LocalIpAddressProvider localIpAddressProvider) {
        super(posInfoFactory, localIpAddressProvider);
        Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
        Intrinsics.checkNotNullParameter(localIpAddressProvider, "localIpAddressProvider");
        this.posInfoFactory = posInfoFactory;
        this.token = "";
    }

    public final String getToken() {
        return this.token;
    }

    public final void setToken(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.token = str;
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    /* JADX INFO: renamed from: getSessionToken, reason: from getter */
    public String getToken() {
        return this.token;
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    public DeviceInfo getDeviceInfo() {
        return DeviceInfo.copy$default(this.posInfoFactory.createForLocalPos().getDeviceInfo(), null, null, null, null, getLocalIp(), null, null, null, null, null, null, null, null, null, null, null, 65519, null);
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    public CrpcTimeout getRequestTimeout(RpcRequest crpcRequest) {
        Intrinsics.checkNotNullParameter(crpcRequest, "crpcRequest");
        if (!Intrinsics.areEqual(crpcRequest.method, "terminalHeartbeat")) {
            return CrpcTimeout.Default.INSTANCE;
        }
        Duration.Companion companion = Duration.INSTANCE;
        return new CrpcTimeout.Specified(DurationKt.toDuration(10, DurationUnit.SECONDS), null);
    }
}
