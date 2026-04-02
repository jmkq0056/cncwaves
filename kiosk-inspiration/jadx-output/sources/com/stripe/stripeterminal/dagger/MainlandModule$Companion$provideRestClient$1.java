package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: MainlandModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class MainlandModule$Companion$provideRestClient$1 extends FunctionReferenceImpl implements Function0<OkHttpClient> {
    MainlandModule$Companion$provideRestClient$1(Object obj) {
        super(0, obj, OkHttpClientProvider.class, "get", "get()Lokhttp3/OkHttpClient;", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final OkHttpClient invoke() {
        return ((OkHttpClientProvider) this.receiver).get();
    }
}
