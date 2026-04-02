package com.stripe.jvmcore.terminal.requestfactories.display;

import com.stripe.proto.api.sdk.ClearReaderDisplayRequest;
import com.stripe.proto.api.sdk.SetReaderDisplayRequest;
import com.stripe.stripeterminal.external.models.Cart;
import kotlin.Metadata;

/* JADX INFO: compiled from: ReaderDisplayJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;", "", "clearReaderDisplay", "Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;", "setReaderDisplay", "Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderDisplayJackRabbitApiFactory {
    ClearReaderDisplayRequest clearReaderDisplay();

    SetReaderDisplayRequest setReaderDisplay(Cart cart);
}
