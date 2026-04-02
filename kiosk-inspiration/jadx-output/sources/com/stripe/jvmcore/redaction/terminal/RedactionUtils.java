package com.stripe.jvmcore.redaction.terminal;

import com.squareup.wire.Message;
import com.stripe.proto.api.gator.ReportEventRequest;
import com.stripe.proto.api.gator.ReportLogEventsRequest;
import com.stripe.proto.api.gator.ReportTraceRequest;
import com.stripe.proto.api.sdk.SetReaderDisplayRequest;
import com.stripe.proto.model.sdk.Cart;
import com.stripe.proto.model.sdk.LineItem;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RedactionUtils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u00042\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;", "", "()V", "toLogProto", "Lcom/squareup/wire/Message;", "message", "toLogSetReaderDisplayRequest", "Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;", "proto", "terminal-redaction"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RedactionUtils {
    public static final RedactionUtils INSTANCE = new RedactionUtils();

    private RedactionUtils() {
    }

    public final Message<?, ?> toLogProto(Message<?, ?> message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if ((message instanceof ReportTraceRequest) || (message instanceof ReportEventRequest) || (message instanceof ReportLogEventsRequest)) {
            return null;
        }
        return message instanceof SetReaderDisplayRequest ? toLogSetReaderDisplayRequest((SetReaderDisplayRequest) message) : message;
    }

    public final SetReaderDisplayRequest toLogSetReaderDisplayRequest(SetReaderDisplayRequest proto) {
        Intrinsics.checkNotNullParameter(proto, "proto");
        Cart cart = proto.cart;
        if (cart != null) {
            SetReaderDisplayRequest setReaderDisplayRequestCopy$default = SetReaderDisplayRequest.copy$default(proto, null, Cart.copy$default(cart, CollectionsKt.listOf(new LineItem(0, "<condensed " + cart.line_items.size() + " for logs>", 0L, null, null, null, 61, null)), null, null, null, 0L, 0L, null, null, WinError.ERROR_INVALID_EA_NAME, null), null, 5, null);
            if (setReaderDisplayRequestCopy$default != null) {
                return setReaderDisplayRequestCopy$default;
            }
        }
        return proto;
    }
}
