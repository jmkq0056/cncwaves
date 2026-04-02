package com.stripe.core.logginginterceptors;

import com.stripe.proto.net.rpc.base.RpcRequest;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CrpcLogLevel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u000e\u001a\u00020\u000f*\u00020\u0010\u001a\n\u0010\u0011\u001a\u00020\u000f*\u00020\u0010\"\"\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\"\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006\"\"\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006¨\u0006\u0012"}, d2 = {"CRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES", "", "Lcom/stripe/core/logginginterceptors/CrpcMethod;", "getCRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES$annotations", "()V", "getCRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES", "()Ljava/util/Set;", "CRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES", "getCRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES$annotations", "getCRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES", "TRACE_EXEMPT_CRPC_SERVICES", "", "getTRACE_EXEMPT_CRPC_SERVICES$annotations", "getTRACE_EXEMPT_CRPC_SERVICES", "getMetricLogLevel", "Lcom/stripe/core/logginginterceptors/CrpcLogLevel;", "Lcom/stripe/proto/net/rpc/base/RpcRequest;", "getTraceLogLevel", "logging-interceptors_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class CrpcLogLevelKt {
    private static final Set<String> TRACE_EXEMPT_CRPC_SERVICES = SetsKt.setOf((Object[]) new String[]{"GatorService", "ClientLoggerService"});
    private static final Set<CrpcMethod> CRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES = SetsKt.setOf((Object[]) new CrpcMethod[]{new CrpcMethod("ArmadaService", "reportHealth", CrpcLogLevel.NONE), new CrpcMethod("ReaderEventApiService", "PollServerEvent", CrpcLogLevel.ERROR)});
    private static final Set<CrpcMethod> CRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES = SetsKt.setOf(new CrpcMethod("GatorService", "reportEvent", CrpcLogLevel.NONE));

    public static /* synthetic */ void getCRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES$annotations() {
    }

    public static /* synthetic */ void getCRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES$annotations() {
    }

    public static /* synthetic */ void getTRACE_EXEMPT_CRPC_SERVICES$annotations() {
    }

    public static final CrpcLogLevel getTraceLogLevel(RpcRequest rpcRequest) {
        Object next;
        CrpcLogLevel logLevel;
        Intrinsics.checkNotNullParameter(rpcRequest, "<this>");
        if (TRACE_EXEMPT_CRPC_SERVICES.contains(rpcRequest.service)) {
            return CrpcLogLevel.NONE;
        }
        Iterator<T> it = CRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            CrpcMethod crpcMethod = (CrpcMethod) next;
            if (Intrinsics.areEqual(crpcMethod.getService(), rpcRequest.service) && Intrinsics.areEqual(crpcMethod.getMethod(), rpcRequest.method)) {
                break;
            }
        }
        CrpcMethod crpcMethod2 = (CrpcMethod) next;
        return (crpcMethod2 == null || (logLevel = crpcMethod2.getLogLevel()) == null) ? CrpcLogLevel.VERBOSE : logLevel;
    }

    public static final CrpcLogLevel getMetricLogLevel(RpcRequest rpcRequest) {
        Object next;
        CrpcLogLevel logLevel;
        Intrinsics.checkNotNullParameter(rpcRequest, "<this>");
        Iterator<T> it = CRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            CrpcMethod crpcMethod = (CrpcMethod) next;
            if (Intrinsics.areEqual(crpcMethod.getService(), rpcRequest.service) && Intrinsics.areEqual(crpcMethod.getMethod(), rpcRequest.method)) {
                break;
            }
        }
        CrpcMethod crpcMethod2 = (CrpcMethod) next;
        return (crpcMethod2 == null || (logLevel = crpcMethod2.getLogLevel()) == null) ? CrpcLogLevel.VERBOSE : logLevel;
    }

    public static final Set<String> getTRACE_EXEMPT_CRPC_SERVICES() {
        return TRACE_EXEMPT_CRPC_SERVICES;
    }

    public static final Set<CrpcMethod> getCRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES() {
        return CRPC_METHOD_TRACE_LOG_LEVEL_OVERRIDES;
    }

    public static final Set<CrpcMethod> getCRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES() {
        return CRPC_METHOD_METRIC_LOG_LEVEL_OVERRIDES;
    }
}
