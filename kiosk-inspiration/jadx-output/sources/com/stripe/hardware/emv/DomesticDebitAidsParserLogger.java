package com.stripe.hardware.emv;

import kotlin.Metadata;

/* JADX INFO: compiled from: DomesticDebitAidsParserLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;", "", "e", "", "message", "", "throwable", "", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DomesticDebitAidsParserLogger {
    void e(String message, Throwable throwable);

    static /* synthetic */ void e$default(DomesticDebitAidsParserLogger domesticDebitAidsParserLogger, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: e");
        }
        if ((i & 2) != 0) {
            th = null;
        }
        domesticDebitAidsParserLogger.e(str, th);
    }
}
