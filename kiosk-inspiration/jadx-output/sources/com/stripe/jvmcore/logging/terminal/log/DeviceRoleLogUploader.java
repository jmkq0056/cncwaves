package com.stripe.jvmcore.logging.terminal.log;

import com.squareup.wire.Message;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.jvmcore.dagger.LogRole;
import com.stripe.jvmcore.logging.terminal.log.Event;
import com.stripe.jvmcore.logging.terminal.log.LogUploadResult;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.LogPoint;
import com.stripe.loggingmodels.SpanPoint;
import com.stripe.proto.terminal.clientlogger.pub.AdditionalContext;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientSummaryPb;
import com.stripe.proto.terminal.clientlogger.pub.api.EventResultPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ProxyEventPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ProxySpanPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ReportEventRequest;
import com.stripe.proto.terminal.clientlogger.pub.api.ReportTraceRequest;
import com.stripe.proto.terminal.clientlogger.pub.api.ReportedSpanPb;
import com.stripe.terminal.appinfo.DeviceUuid;
import com.stripe.terminal.appinfo.DeviceUuidProvider;
import com.sun.jna.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import okio.ByteString;

/* JADX INFO: compiled from: DeviceRoleLogUploader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ2\u0010\u0016\u001a\u00020\u0017\"\u0012\b\u0000\u0010\u0018*\f\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\b\u00030\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001b2\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0016\u0010\u001d\u001a\u00020\u00172\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fH\u0016J\u0016\u0010!\u001a\u00020\u00172\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u001fH\u0016J\f\u0010$\u001a\u00020%*\u00020 H\u0002J\f\u0010$\u001a\u00020&*\u00020#H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012j\u0002`\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;", "deviceUuidProvider", "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;", "role", "", "clientLoggerApi", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "deviceUuid", "Lcom/stripe/terminal/appinfo/DeviceUuid;", "getDeviceUuid", "()Lcom/stripe/terminal/appinfo/DeviceUuid;", "deviceUuid$delegate", "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "getResultFromResponse", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;", "T", "Lcom/squareup/wire/Message;", "crpcResponse", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "entityType", "uploadEvents", "events", "", "Lcom/stripe/jvmcore/logging/terminal/log/Event;", "uploadTraces", "spans", "Lcom/stripe/jvmcore/logging/terminal/log/Span;", "toClientLoggerProto", "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceRoleLogUploader implements LogUploader {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(DeviceRoleLogUploader.class, "deviceUuid", "getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;", 0))};
    private final ClientLoggerApi clientLoggerApi;

    /* JADX INFO: renamed from: deviceUuid$delegate, reason: from kotlin metadata */
    private final DeviceUuidProvider deviceUuid;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final String role;

    /* JADX INFO: compiled from: DeviceRoleLogUploader.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Event.EventResult.values().length];
            try {
                iArr[Event.EventResult.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Event.EventResult.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DeviceRoleLogUploader(DeviceUuidProvider deviceUuidProvider, @LogRole String role, ClientLoggerApi clientLoggerApi, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(deviceUuidProvider, "deviceUuidProvider");
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(clientLoggerApi, "clientLoggerApi");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.role = role;
        this.clientLoggerApi = clientLoggerApi;
        this.deviceUuid = deviceUuidProvider;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(DeviceRoleLogUploader.class));
    }

    private final DeviceUuid getDeviceUuid() {
        return this.deviceUuid.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.logging.terminal.log.LogUploader
    public LogUploadResult uploadEvents(List<Event> events) {
        Intrinsics.checkNotNullParameter(events, "events");
        List<Event> list = events;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            String str = null;
            ByteString byteString = null;
            arrayList.add(new ProxyEventPb(this.role, getDeviceUuid().getValue(), str, toClientLoggerProto((Event) it.next()), byteString, 20, null));
        }
        return getResultFromResponse(this.clientLoggerApi.reportEvent(new ReportEventRequest(arrayList, null, 2, 0 == true ? 1 : 0)), "events");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.logging.terminal.log.LogUploader
    public LogUploadResult uploadTraces(List<Span> spans) {
        Intrinsics.checkNotNullParameter(spans, "spans");
        List<Span> list = spans;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            String str = null;
            ClientSummaryPb clientSummaryPb = null;
            ByteString byteString = null;
            arrayList.add(new ProxySpanPb(this.role, getDeviceUuid().getValue(), str, toClientLoggerProto((Span) it.next()), clientSummaryPb, byteString, 52, null));
        }
        return getResultFromResponse(this.clientLoggerApi.reportTrace(new ReportTraceRequest(arrayList, null, 2, 0 == true ? 1 : 0)), "traces");
    }

    private final ReportedSpanPb toClientLoggerProto(Span span) {
        String traceId = span.getTraceId();
        String sessionId = span.getSessionId();
        String str = sessionId == null ? "" : sessionId;
        String serialNumber = span.getSerialNumber();
        AdditionalContext additionalContext = new AdditionalContext(traceId, serialNumber == null ? "" : serialNumber, str, null, null, 24, null);
        long startTimeMs = span.getStartTimeMs();
        String service = span.getService();
        String request = span.getRequest();
        String str2 = request == null ? "" : request;
        String response = span.getResponse();
        String str3 = response == null ? "" : response;
        String method = span.getMethod();
        List<LogPoint> logPoints = span.getLogPoints();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(logPoints, 10));
        Iterator<T> it = logPoints.iterator();
        while (it.hasNext()) {
            arrayList.add(((SpanPoint) it.next()).toClientLoggerProto());
        }
        ArrayList arrayList2 = arrayList;
        String exception = span.getException();
        String str4 = exception == null ? "" : exception;
        Long totalTimeMs = span.getTotalTimeMs();
        return new ReportedSpanPb(0L, 0L, 0L, null, null, null, null, null, startTimeMs, totalTimeMs != null ? totalTimeMs.longValue() : 0L, service, method, str2, null, str3, null, str4, null, null, span.getTags(), additionalContext, null, arrayList2, null, 10920191, null);
    }

    private final EventResultPb toClientLoggerProto(Event event) {
        EventResultPb.Result result;
        String event2 = event.getEvent();
        String scope = event.getScope();
        String domain = event.getDomain();
        long duration = event.getDuration();
        String outcome = event.getOutcome();
        if (outcome == null) {
            outcome = "";
        }
        String str = outcome;
        Event.EventResult result2 = event.getResult();
        int i = result2 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[result2.ordinal()];
        if (i == -1 || i == 1) {
            result = EventResultPb.Result.OK;
        } else if (i == 2) {
            result = EventResultPb.Result.ERROR;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return new EventResultPb(domain, scope, event2, event.getTags(), result, str, Long.valueOf(duration), null, null, Function.USE_VARARGS, null);
    }

    private final <T extends Message<T, ?>> LogUploadResult getResultFromResponse(CrpcResponse<T> crpcResponse, String entityType) {
        if (crpcResponse instanceof CrpcResponse.Success) {
            return LogUploadResult.Succeeded.INSTANCE;
        }
        if (crpcResponse instanceof CrpcResponse.ApplicationError) {
            this.logger.w("Failed to upload " + entityType + ", not retrying", new Pair[0]);
            return new LogUploadResult.Failed(false);
        }
        if (!(crpcResponse instanceof CrpcResponse.RpcError)) {
            throw new NoWhenBranchMatchedException();
        }
        boolean zIsRetryable = ((CrpcResponse.RpcError) crpcResponse).isRetryable();
        this.logger.w("Failed to upload " + entityType + ", " + (!zIsRetryable ? "not" : "retrying"), new Pair[0]);
        return new LogUploadResult.Failed(zIsRetryable);
    }
}
