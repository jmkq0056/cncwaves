package com.stripe.stripeterminal.internal.common.crpc;

import com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.proto.model.common.ApplicationModel;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: PlymouthRequestContextProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;", "Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;", "rpcSessionTokenProvider", "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "posInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "localIpAddressProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;", "(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V", "appInfo", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "getAppInfo", "()Lcom/stripe/terminal/appinfo/ApplicationInformation;", "appInfo$delegate", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "getDeviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "getSessionToken", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PlymouthRequestContextProvider extends SdkCrpcRequestContextProvider {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(PlymouthRequestContextProvider.class, "appInfo", "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;", 0))};

    /* JADX INFO: renamed from: appInfo$delegate, reason: from kotlin metadata */
    private final ApplicationInformationProvider appInfo;
    private final RpcSessionTokenProvider rpcSessionTokenProvider;
    private final TerminalStatusManager terminalStatusManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlymouthRequestContextProvider(RpcSessionTokenProvider rpcSessionTokenProvider, ApplicationInformationProvider applicationInformationProvider, TerminalStatusManager terminalStatusManager, PosInfoFactory posInfoFactory, LocalIpAddressProvider localIpAddressProvider) {
        super(posInfoFactory, localIpAddressProvider);
        Intrinsics.checkNotNullParameter(rpcSessionTokenProvider, "rpcSessionTokenProvider");
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
        Intrinsics.checkNotNullParameter(localIpAddressProvider, "localIpAddressProvider");
        this.rpcSessionTokenProvider = rpcSessionTokenProvider;
        this.terminalStatusManager = terminalStatusManager;
        this.appInfo = applicationInformationProvider;
    }

    private final ApplicationInformation getAppInfo() {
        return this.appInfo.getValue(this, $$delegatedProperties[0]);
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    /* JADX INFO: renamed from: getSessionToken */
    public String getToken() {
        String rpcSessionToken = this.rpcSessionTokenProvider.getRpcSessionToken();
        return rpcSessionToken == null ? "" : rpcSessionToken;
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    public DeviceInfo getDeviceInfo() {
        DeviceInfo deviceInfo;
        Reader connectedReader = this.terminalStatusManager.getConnectedReader();
        return DeviceInfo.copy$default((connectedReader == null || (deviceInfo = connectedReader.toDeviceInfo()) == null) ? new DeviceInfo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null) : deviceInfo, DeviceInfo.DeviceClass.POS, getAppInfo().getDeviceUuid().getValue(), null, new ApplicationModel(getAppInfo().getAppId(), getAppInfo().getAppVersion(), null, 4, null), getLocalIp(), getAppInfo().getDeviceModel(), getAppInfo().getDeviceOsVersion(), null, null, null, null, null, null, null, null, null, 65412, null);
    }
}
