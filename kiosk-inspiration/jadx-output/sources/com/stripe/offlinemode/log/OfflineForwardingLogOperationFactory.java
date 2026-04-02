package com.stripe.offlinemode.log;

import com.google.gson.Gson;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationFactory;
import com.stripe.loggingmodels.Trace;
import com.stripe.loggingmodels.TraceLogger;
import com.stripe.offlinemode.log.OfflineTrace;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineForwardingLogOperationFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \r2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\rB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationFactory;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "offlineTraceManager", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;", "gson", "Lcom/google/gson/Gson;", "(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/google/gson/Gson;)V", "create", "request", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineForwardingLogOperationFactory implements LogOperationFactory<OfflineTrace, OfflineForwardingLogOperation> {
    private static final String TAG_ENTITY_ID = "EntityId";
    private static final String TAG_OFFLINE_ID = "OfflineId";
    private static final String TAG_REQUEST_TYPE = "RequestType";
    private final Gson gson;
    private final OfflineForwardingTraceManager offlineTraceManager;
    private final TraceLogger traceLogger;

    public OfflineForwardingLogOperationFactory(TraceLogger traceLogger, OfflineForwardingTraceManager offlineTraceManager, Gson gson) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(offlineTraceManager, "offlineTraceManager");
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.traceLogger = traceLogger;
        this.offlineTraceManager = offlineTraceManager;
        this.gson = gson;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationFactory
    public OfflineForwardingLogOperation create(OfflineTrace request) {
        Trace traceStartTrace$default;
        Intrinsics.checkNotNullParameter(request, "request");
        if (request instanceof OfflineTrace.OfflineForwarding) {
            TraceLogger traceLogger = this.traceLogger;
            String service = request.getService();
            String method = request.getMethod();
            OfflineTrace.OfflineForwarding offlineForwarding = (OfflineTrace.OfflineForwarding) request;
            Trace.Context context = new Trace.Context(offlineForwarding.getDeviceSerial(), this.offlineTraceManager.sessionId(), this.offlineTraceManager.nextTraceId());
            String json = this.gson.toJson(request);
            Pair[] pairArr = new Pair[3];
            String entityId = offlineForwarding.getEntityId();
            pairArr[0] = entityId != null ? TuplesKt.to(TAG_ENTITY_ID, entityId) : null;
            String offlineId = offlineForwarding.getOfflineId();
            pairArr[1] = offlineId != null ? TuplesKt.to(TAG_OFFLINE_ID, offlineId) : null;
            pairArr[2] = TuplesKt.to("RequestType", offlineForwarding.getType().name());
            Map map = MapsKt.toMap(CollectionsKt.listOfNotNull((Object[]) pairArr));
            Intrinsics.checkNotNull(json);
            traceStartTrace$default = TraceLogger.startTrace$default(traceLogger, service, method, json, (Long) null, (Long) null, (Long) null, context, (String) null, (String) null, (Map) null, map, 952, (Object) null);
        } else {
            TraceLogger traceLogger2 = this.traceLogger;
            String service2 = request.getService();
            String method2 = request.getMethod();
            Trace.Context context2 = new Trace.Context(null, this.offlineTraceManager.sessionId(), this.offlineTraceManager.nextTraceId());
            String json2 = this.gson.toJson(request);
            Intrinsics.checkNotNull(json2);
            traceStartTrace$default = TraceLogger.startTrace$default(traceLogger2, service2, method2, json2, (Long) null, (Long) null, (Long) null, context2, (String) null, (String) null, (Map) null, (Map) null, 1976, (Object) null);
        }
        return new OfflineForwardingLogOperation(traceStartTrace$default);
    }
}
