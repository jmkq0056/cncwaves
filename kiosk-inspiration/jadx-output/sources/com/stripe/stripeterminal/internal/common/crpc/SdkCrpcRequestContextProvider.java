package com.stripe.stripeterminal.internal.common.crpc;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.proto.model.common.VersionInfoPb;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SdkCrpcRequestContextProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/crpc/SdkCrpcRequestContextProvider;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "posInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "localIpAddressProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;", "(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;)V", "getLocalIp", "", "getVersionInfo", "Lcom/stripe/proto/model/common/VersionInfoPb;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class SdkCrpcRequestContextProvider implements CrpcClient.CrpcRequestContextProvider {
    private final LocalIpAddressProvider localIpAddressProvider;
    private final PosInfoFactory posInfoFactory;

    public SdkCrpcRequestContextProvider(PosInfoFactory posInfoFactory, LocalIpAddressProvider localIpAddressProvider) {
        Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
        Intrinsics.checkNotNullParameter(localIpAddressProvider, "localIpAddressProvider");
        this.posInfoFactory = posInfoFactory;
        this.localIpAddressProvider = localIpAddressProvider;
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    public final String getLocalIp() {
        return this.localIpAddressProvider.getLocalIp();
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcClient.CrpcRequestContextProvider
    public final VersionInfoPb getVersionInfo() {
        return this.posInfoFactory.createForLocalPos().getVersionInfo();
    }
}
