package com.stripe.jvmcore.logging.terminal.log;

import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: LoggerFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004\"\u0006\b\u0000\u0010\u0005\u0018\u0001*\u00020\u0006H\u0086\b¨\u0006\u0007"}, d2 = {"create", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "T", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class LoggerFactoryKt {
    public static final /* synthetic */ <T> SimpleLogger<ApplicationTrace, ApplicationTraceResult> create(LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(loggerFactory, "<this>");
        Intrinsics.reifiedOperationMarker(4, "T");
        return loggerFactory.create(Reflection.getOrCreateKotlinClass(Object.class));
    }
}
