package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.Adapter;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;

/* JADX INFO: compiled from: NoEmbeddedAdapterModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;", "", "()V", "provideNoEmbeddedAdapter", "Lcom/stripe/stripeterminal/internal/common/Adapter;", "defaults_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class NoEmbeddedAdapterModule {
    public static final NoEmbeddedAdapterModule INSTANCE = new NoEmbeddedAdapterModule();

    @EmbeddedAdapter
    @Provides
    public final Adapter provideNoEmbeddedAdapter() {
        return null;
    }

    private NoEmbeddedAdapterModule() {
    }
}
