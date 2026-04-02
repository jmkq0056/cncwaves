package com.stripe.jvmcore.logging.terminal.contracts;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperation;
import com.stripe.loggingmodels.ApplicationTrace;
import kotlin.Metadata;

/* JADX INFO: compiled from: LogOperationFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bf\u0018\u0000*\n\b\u0000\u0010\u0001 \u0000*\u00020\u0002*\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u00020\u0005J\u0015\u0010\u0006\u001a\u00028\u00012\u0006\u0010\u0007\u001a\u00028\u0000H&¢\u0006\u0002\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;", "T", "Lcom/stripe/loggingmodels/ApplicationTrace;", PrinterTextParser.TAGS_ALIGN_LEFT, "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "", "create", "request", "(Lcom/stripe/loggingmodels/ApplicationTrace;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LogOperationFactory<T extends ApplicationTrace, L extends LogOperation<L>> {
    L create(T request);
}
