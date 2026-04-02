package com.stripe.jvmcore.clientlogger;

import com.stripe.logwriter.LogWriter;
import com.stripe.proto.terminal.clientlogger.pub.api.LogEvent;
import com.stripe.proto.terminal.clientlogger.pub.api.ProxyEventPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ProxySpanPb;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u0016\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u001a\u0016\u0010\f\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u001a\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0010*\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"TAG", "", "e", "", "Lcom/stripe/logwriter/LogWriter;", "message", "throwable", "", "toClientLoggerLogEvent", "Lcom/stripe/proto/terminal/clientlogger/pub/api/LogEvent;", "Lcom/stripe/proto/api/gator/LogEvent;", "logWriter", "toClientLoggerProxyEventPb", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;", "Lcom/stripe/proto/api/gator/ProxyEventPb;", "toClientLoggerProxySpanPb", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "clientlogger"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class UtilsKt {
    private static final String TAG = "ClientLoggerUtil";

    private static final void e(LogWriter logWriter, String str, Throwable th) {
        logWriter.e(TAG, str, th);
    }

    public static final LogEvent toClientLoggerLogEvent(com.stripe.proto.api.gator.LogEvent logEvent, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(logEvent, "<this>");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        try {
            return LogEvent.ADAPTER.decode(logEvent.encode());
        } catch (Exception e) {
            e(logWriter, "Error converting gator -> client logger LogEvent: " + logEvent, e);
            return null;
        }
    }

    public static final ProxyEventPb toClientLoggerProxyEventPb(com.stripe.proto.api.gator.ProxyEventPb proxyEventPb, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(proxyEventPb, "<this>");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        try {
            return ProxyEventPb.ADAPTER.decode(proxyEventPb.encode());
        } catch (Exception e) {
            e(logWriter, "Error converting gator -> client logger ProxyEventPb: " + proxyEventPb, e);
            return null;
        }
    }

    public static final ProxySpanPb toClientLoggerProxySpanPb(com.stripe.proto.api.gator.ProxySpanPb proxySpanPb, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(proxySpanPb, "<this>");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        try {
            return ProxySpanPb.ADAPTER.decode(proxySpanPb.encode());
        } catch (Exception e) {
            e(logWriter, "Error converting gator -> client logger ProxySpanPb: " + proxySpanPb, e);
            return null;
        }
    }
}
