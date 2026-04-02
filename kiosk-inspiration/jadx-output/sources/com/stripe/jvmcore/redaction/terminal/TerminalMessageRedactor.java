package com.stripe.jvmcore.redaction.terminal;

import com.squareup.wire.Message;
import com.stripe.jvmcore.redaction.CustomMessageRedactor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalMessageRedactor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u00042\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;", "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "()V", "toRedactedMessage", "Lcom/squareup/wire/Message;", "message", "terminal-redaction"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalMessageRedactor implements CustomMessageRedactor {
    public static final TerminalMessageRedactor INSTANCE = new TerminalMessageRedactor();

    private TerminalMessageRedactor() {
    }

    @Override // com.stripe.jvmcore.redaction.CustomMessageRedactor
    public Message<?, ?> toRedactedMessage(Message<?, ?> message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return RedactionUtils.INSTANCE.toLogProto(message);
    }
}
