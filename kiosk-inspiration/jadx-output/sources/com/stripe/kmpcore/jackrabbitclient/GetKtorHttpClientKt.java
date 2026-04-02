package com.stripe.kmpcore.jackrabbitclient;

import io.ktor.client.HttpClient;
import io.ktor.client.HttpClientConfig;
import io.ktor.client.HttpClientKt;
import io.ktor.client.engine.okhttp.OkHttp;
import io.ktor.client.engine.okhttp.OkHttpConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: GetKtorHttpClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"getKtorHttpClient", "Lio/ktor/client/HttpClient;", "okHttpClient", "Lokhttp3/OkHttpClient;", "jackrabbitclient_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class GetKtorHttpClientKt {
    public static final HttpClient getKtorHttpClient(final OkHttpClient okHttpClient) {
        Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
        return HttpClientKt.HttpClient(OkHttp.INSTANCE, new Function1<HttpClientConfig<OkHttpConfig>, Unit>() { // from class: com.stripe.kmpcore.jackrabbitclient.GetKtorHttpClientKt$getKtorHttpClient$client$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpClientConfig<OkHttpConfig> httpClientConfig) {
                invoke2(httpClientConfig);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HttpClientConfig<OkHttpConfig> HttpClient) {
                Intrinsics.checkNotNullParameter(HttpClient, "$this$HttpClient");
                final OkHttpClient okHttpClient2 = okHttpClient;
                HttpClient.engine(new Function1<OkHttpConfig, Unit>() { // from class: com.stripe.kmpcore.jackrabbitclient.GetKtorHttpClientKt$getKtorHttpClient$client$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(OkHttpConfig okHttpConfig) {
                        invoke2(okHttpConfig);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(OkHttpConfig engine) {
                        Intrinsics.checkNotNullParameter(engine, "$this$engine");
                        engine.setPreconfigured(okHttpClient2);
                    }
                });
            }
        });
    }
}
