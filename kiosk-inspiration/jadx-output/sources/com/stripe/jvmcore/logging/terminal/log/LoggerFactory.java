package com.stripe.jvmcore.logging.terminal.log;

import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Metadata;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: LoggerFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "", "create", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "clazz", "Lkotlin/reflect/KClass;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LoggerFactory {
    SimpleLogger<ApplicationTrace, ApplicationTraceResult> create(KClass<?> clazz);
}
