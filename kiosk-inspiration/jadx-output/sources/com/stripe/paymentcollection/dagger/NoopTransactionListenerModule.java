package com.stripe.paymentcollection.dagger;

import com.stripe.paymentcollection.TransactionListener;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: NoopTransactionListenerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;", "", "()V", "provideNoopTransactionListener", "Lcom/stripe/paymentcollection/TransactionListener;", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class NoopTransactionListenerModule {
    public static final NoopTransactionListenerModule INSTANCE = new NoopTransactionListenerModule();

    private NoopTransactionListenerModule() {
    }

    @Provides
    public final TransactionListener provideNoopTransactionListener() {
        return new TransactionListener() { // from class: com.stripe.paymentcollection.dagger.NoopTransactionListenerModule.provideNoopTransactionListener.1
            @Override // com.stripe.paymentcollection.TransactionListener
            public Object onTransactionLog(String str, Long l, Long l2, String str2, String str3, String str4, Continuation<? super Unit> continuation) {
                return Unit.INSTANCE;
            }
        };
    }
}
