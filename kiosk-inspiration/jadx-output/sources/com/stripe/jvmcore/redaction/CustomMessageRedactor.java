package com.stripe.jvmcore.redaction;

import com.squareup.wire.Message;
import kotlin.Metadata;

/* JADX INFO: compiled from: CustomMessageRedactor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u00032\u000e\u0010\u0004\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;", "", "toRedactedMessage", "Lcom/squareup/wire/Message;", "message", "redaction"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CustomMessageRedactor {
    Message<?, ?> toRedactedMessage(Message<?, ?> message);
}
