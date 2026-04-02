package com.stripe.proto.api.warden;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import dagger.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WardenApi.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\rJ\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u000fJ\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\f\u001a\u00020\u0012J\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\f\u001a\u00020\u0014J\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\n2\u0006\u0010\f\u001a\u00020\u0017R\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/warden/WardenApi;", "", "lazyClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "(Ldagger/Lazy;)V", "client", "getClient", "()Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "checkAppVersions", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "Lcom/stripe/proto/api/warden/CheckAppVersionsResponse;", "message", "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;", "checkUnauthAppVersions", "Lcom/stripe/proto/api/warden/CheckUnauthAppVersionsRequest;", "checkUnauthVersion", "Lcom/stripe/proto/api/warden/CheckVersionResponse;", "Lcom/stripe/proto/api/warden/CheckUnauthVersionRequest;", "checkVersion", "Lcom/stripe/proto/api/warden/CheckVersionRequest;", "reportDeviceAssetUpdateStatus", "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusResponse;", "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WardenApi {
    private final Lazy<? extends CrpcClient> lazyClient;

    public WardenApi(Lazy<? extends CrpcClient> lazyClient) {
        Intrinsics.checkNotNullParameter(lazyClient, "lazyClient");
        this.lazyClient = lazyClient;
    }

    public final CrpcClient getClient() {
        CrpcClient crpcClient = this.lazyClient.get();
        Intrinsics.checkNotNullExpressionValue(crpcClient, "get(...)");
        return crpcClient;
    }

    public final CrpcResponse<CheckVersionResponse> checkVersion(CheckVersionRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "WardenService", "checkVersion", message, CheckVersionRequest.ADAPTER, CheckVersionResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CheckVersionResponse> checkUnauthVersion(CheckUnauthVersionRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "WardenService", "checkUnauthVersion", message, CheckUnauthVersionRequest.ADAPTER, CheckVersionResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CheckAppVersionsResponse> checkAppVersions(CheckAppVersionsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "WardenService", "checkAppVersions", message, CheckAppVersionsRequest.ADAPTER, CheckAppVersionsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CheckAppVersionsResponse> checkUnauthAppVersions(CheckUnauthAppVersionsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "WardenService", "checkUnauthAppVersions", message, CheckUnauthAppVersionsRequest.ADAPTER, CheckAppVersionsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ReportDeviceAssetUpdateStatusResponse> reportDeviceAssetUpdateStatus(ReportDeviceAssetUpdateStatusRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "WardenService", "reportDeviceAssetUpdateStatus", message, ReportDeviceAssetUpdateStatusRequest.ADAPTER, ReportDeviceAssetUpdateStatusResponse.ADAPTER, null, 32, null);
    }
}
