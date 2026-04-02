package com.stripe.jvmcore.client;

import com.stripe.jvmcore.restclient.StripeCertificatePinner;
import java.util.Iterator;
import java.util.Optional;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.tls.HandshakeCertificates;

/* JADX INFO: compiled from: OkHttpClientProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lokhttp3/OkHttpClient;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class DefaultOkHttpClientProvider$client$2 extends Lambda implements Function0<OkHttpClient> {
    final /* synthetic */ DefaultOkHttpClientProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOkHttpClientProvider$client$2(DefaultOkHttpClientProvider defaultOkHttpClientProvider) {
        super(0);
        this.this$0 = defaultOkHttpClientProvider;
    }

    @Override // kotlin.jvm.functions.Function0
    public final OkHttpClient invoke() {
        HandshakeCertificates handshakeCertificatesCreate = this.this$0.certificatesFactory.create();
        DefaultOkHttpClientProvider defaultOkHttpClientProvider = this.this$0;
        OkHttpClient.Builder builderSslSocketFactory = new OkHttpClient.Builder().connectTimeout(30L, TimeUnit.SECONDS).readTimeout(30L, TimeUnit.SECONDS).callTimeout(30L, TimeUnit.SECONDS).sslSocketFactory(handshakeCertificatesCreate.sslSocketFactory(), handshakeCertificatesCreate.trustManager());
        Iterator it = defaultOkHttpClientProvider.interceptors.iterator();
        while (it.hasNext()) {
            builderSslSocketFactory.addInterceptor((Interceptor) it.next());
        }
        Optional optional = defaultOkHttpClientProvider.eventListenerFactory;
        final DefaultOkHttpClientProvider$client$2$1$1$2 defaultOkHttpClientProvider$client$2$1$1$2 = new DefaultOkHttpClientProvider$client$2$1$1$2(builderSslSocketFactory);
        optional.ifPresent(new Consumer() { // from class: com.stripe.jvmcore.client.DefaultOkHttpClientProvider$client$2$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DefaultOkHttpClientProvider$client$2.invoke$lambda$2$lambda$1$lambda$0(defaultOkHttpClientProvider$client$2$1$1$2, obj);
            }
        });
        if (defaultOkHttpClientProvider.isCotsIncluded) {
            builderSslSocketFactory.certificatePinner(StripeCertificatePinner.INSTANCE.getCertificatePinner());
        }
        return builderSslSocketFactory.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2$lambda$1$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
