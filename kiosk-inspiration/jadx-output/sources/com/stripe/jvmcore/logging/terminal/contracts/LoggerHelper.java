package com.stripe.jvmcore.logging.terminal.contracts;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;

/* JADX INFO: compiled from: LoggerHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u0000*\n\b\u0000\u0010\u0001 \u0001*\u00020\u0002*\n\b\u0001\u0010\u0003 \u0001*\u00020\u00042\u00020\u0005J\u0015\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00020\u0010H&¢\u0006\u0002\u0010\u0011R\u0012\u0010\u0006\u001a\u00028\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0012\u0010\t\u001a\u00028\u0001X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00028\u0001X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;", "T", "Lcom/stripe/loggingmodels/ApplicationTrace;", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "", "flushTrace", "getFlushTrace", "()Lcom/stripe/loggingmodels/ApplicationTrace;", "flushTraceResult", "getFlushTraceResult", "()Lcom/stripe/loggingmodels/ApplicationTraceResult;", "interruptedTraceResult", "getInterruptedTraceResult", "duplicateTraceResult", OfflineStorageConstantsKt.ID, "", "(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LoggerHelper<T extends ApplicationTrace, R extends ApplicationTraceResult> {
    R duplicateTraceResult(String id);

    T getFlushTrace();

    R getFlushTraceResult();

    R getInterruptedTraceResult();
}
