package com.stripe.jvmcore.restclient;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: compiled from: CustomHeadersInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\u0014\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/restclient/CustomHeadersInterceptor;", "Lokhttp3/Interceptor;", "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;", "customHeaders", "", "", "(Ljava/util/Map;)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CustomHeadersInterceptor implements Interceptor, CustomHeadersProvider {
    private final Map<String, String> customHeaders;

    public CustomHeadersInterceptor(Map<String, String> customHeaders) {
        Intrinsics.checkNotNullParameter(customHeaders, "customHeaders");
        this.customHeaders = customHeaders;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        for (Map.Entry<String, String> entry : this.customHeaders.entrySet()) {
            builderNewBuilder.header(entry.getKey(), entry.getValue());
        }
        return chain.proceed(builderNewBuilder.build());
    }

    @Override // com.stripe.jvmcore.restclient.CustomHeadersProvider
    public Map<String, String> customHeaders() {
        return this.customHeaders;
    }
}
