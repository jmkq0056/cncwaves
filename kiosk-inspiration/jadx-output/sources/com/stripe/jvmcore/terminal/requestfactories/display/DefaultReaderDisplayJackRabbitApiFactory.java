package com.stripe.jvmcore.terminal.requestfactories.display;

import com.stripe.proto.api.sdk.ClearReaderDisplayRequest;
import com.stripe.proto.api.sdk.SetReaderDisplayRequest;
import com.stripe.proto.model.sdk.LineItem;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.CartLineItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultReaderDisplayJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/display/DefaultReaderDisplayJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;", "()V", "clearReaderDisplay", "Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;", "setReaderDisplay", "Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultReaderDisplayJackRabbitApiFactory implements ReaderDisplayJackRabbitApiFactory {
    @Override // com.stripe.jvmcore.terminal.requestfactories.display.ReaderDisplayJackRabbitApiFactory
    public SetReaderDisplayRequest setReaderDisplay(Cart cart) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        String currency = cart.getCurrency();
        long tax = cart.getTax();
        long total = cart.getTotal();
        List<CartLineItem> lineItems = cart.getLineItems();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(lineItems, 10));
        for (CartLineItem cartLineItem : lineItems) {
            arrayList.add(new LineItem(cartLineItem.getQuantity(), cartLineItem.getDescription(), cartLineItem.getAmount(), null, null, null, 56, null));
        }
        return new SetReaderDisplayRequest("cart", new com.stripe.proto.model.sdk.Cart(arrayList, null, null, null, tax, total, currency, null, 142, null), null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.display.ReaderDisplayJackRabbitApiFactory
    public ClearReaderDisplayRequest clearReaderDisplay() {
        return new ClearReaderDisplayRequest(null, 1, 0 == true ? 1 : 0);
    }
}
