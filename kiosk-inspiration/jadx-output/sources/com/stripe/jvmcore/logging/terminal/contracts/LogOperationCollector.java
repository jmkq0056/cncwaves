package com.stripe.jvmcore.logging.terminal.contracts;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperation;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Metadata;

/* JADX INFO: compiled from: LogOperationCollector.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u0000*\n\b\u0000\u0010\u0001 \u0000*\u00020\u0002*\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u00020\u0005J%\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00028\u00002\u0006\u0010\t\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\u000bH&¢\u0006\u0002\u0010\fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;", "T", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", PrinterTextParser.TAGS_ALIGN_LEFT, "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "", "collect", "", "result", "data", "isComplete", "", "(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;Z)V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LogOperationCollector<T extends ApplicationTraceResult, L extends LogOperation<L>> {
    void collect(T result, L data, boolean isComplete);
}
