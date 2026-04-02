package com.stripe.jvmcore.client;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: OkHttpClientProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class DefaultOkHttpClientProvider$client$2$1$1$2 extends AdaptedFunctionReference implements Function1<EventListener.Factory, Unit> {
    DefaultOkHttpClientProvider$client$2$1$1$2(Object obj) {
        super(1, obj, OkHttpClient.Builder.class, "eventListenerFactory", "eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;", 8);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(EventListener.Factory factory) {
        invoke2(factory);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(EventListener.Factory p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((OkHttpClient.Builder) this.receiver).eventListenerFactory(p0);
    }
}
