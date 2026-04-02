package com.stripe.stripeterminal.internal.common.terminalsession.transform;

import com.stripe.kmpcore.jackrabbitclient.models.KmpTerminalException;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalExceptionTransformer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;", "", "()V", "transform", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "kmpTerminalException", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalExceptionTransformer {
    public final TerminalException transform(KmpTerminalException kmpTerminalException) {
        Intrinsics.checkNotNullParameter(kmpTerminalException, "kmpTerminalException");
        return new TerminalException(kmpTerminalException.getErrorCode(), kmpTerminalException.getErrorMessage(), null, null, 12, null);
    }
}
