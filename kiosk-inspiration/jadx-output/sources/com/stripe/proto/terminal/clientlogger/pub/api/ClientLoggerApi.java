package com.stripe.proto.terminal.clientlogger.pub.api;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import dagger.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientLoggerApi.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\rJ\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\n2\u0006\u0010\f\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\n2\u0006\u0010\f\u001a\u00020\u0013J\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\n2\u0006\u0010\f\u001a\u00020\u0016J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\n2\u0006\u0010\f\u001a\u00020\u0019J\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\n2\u0006\u0010\f\u001a\u00020\u001cJ\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\n2\u0006\u0010\f\u001a\u00020\u001fR\u0011\u0010\u0006\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;", "", "lazyClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "(Ldagger/Lazy;)V", "client", "getClient", "()Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "completeUpload", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/CompleteUploadResponse;", "message", "Lcom/stripe/proto/terminal/clientlogger/pub/api/CompleteUploadRequest;", "createUpload", "Lcom/stripe/proto/terminal/clientlogger/pub/api/CreateUploadResponse;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/CreateUploadRequest;", "reportEvent", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventResponse;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;", "reportHealthMetric", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportHealthMetricResponse;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportHealthMetricRequest;", "reportLogEvents", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportLogEventsResponse;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportLogEventsRequest;", "reportObservabilityData", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataResponse;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportObservabilityDataRequest;", "reportTrace", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceResponse;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ClientLoggerApi {
    private final Lazy<? extends CrpcClient> lazyClient;

    public ClientLoggerApi(Lazy<? extends CrpcClient> lazyClient) {
        Intrinsics.checkNotNullParameter(lazyClient, "lazyClient");
        this.lazyClient = lazyClient;
    }

    public final CrpcClient getClient() {
        CrpcClient crpcClient = this.lazyClient.get();
        Intrinsics.checkNotNullExpressionValue(crpcClient, "get(...)");
        return crpcClient;
    }

    public final CrpcResponse<ReportEventResponse> reportEvent(ReportEventRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "ClientLoggerService", "reportEvent", message, ReportEventRequest.ADAPTER, ReportEventResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ReportTraceResponse> reportTrace(ReportTraceRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "ClientLoggerService", "reportTrace", message, ReportTraceRequest.ADAPTER, ReportTraceResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ReportLogEventsResponse> reportLogEvents(ReportLogEventsRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "ClientLoggerService", "reportLogEvents", message, ReportLogEventsRequest.ADAPTER, ReportLogEventsResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ReportHealthMetricResponse> reportHealthMetric(ReportHealthMetricRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "ClientLoggerService", "reportHealthMetric", message, ReportHealthMetricRequest.ADAPTER, ReportHealthMetricResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<ReportObservabilityDataResponse> reportObservabilityData(ReportObservabilityDataRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "ClientLoggerService", "ReportObservabilityData", message, ReportObservabilityDataRequest.ADAPTER, ReportObservabilityDataResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CreateUploadResponse> createUpload(CreateUploadRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "ClientLoggerService", "CreateUpload", message, CreateUploadRequest.ADAPTER, CreateUploadResponse.ADAPTER, null, 32, null);
    }

    public final CrpcResponse<CompleteUploadResponse> completeUpload(CompleteUploadRequest message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return CrpcClient.blockingPost$default(getClient(), "ClientLoggerService", "CompleteUpload", message, CompleteUploadRequest.ADAPTER, CompleteUploadResponse.ADAPTER, null, 32, null);
    }
}
