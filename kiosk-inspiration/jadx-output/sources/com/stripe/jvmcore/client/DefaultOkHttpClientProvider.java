package com.stripe.jvmcore.client;

import com.stripe.jvmcore.httptls.HandshakeCertificatesFactory;
import java.util.Optional;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: OkHttpClientProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0013\u001a\u00020\u000eH\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/jvmcore/client/DefaultOkHttpClientProvider;", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "interceptors", "", "Lokhttp3/Interceptor;", "isCotsIncluded", "", "eventListenerFactory", "Ljava/util/Optional;", "Lokhttp3/EventListener$Factory;", "certificatesFactory", "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;", "(Ljava/util/Set;ZLjava/util/Optional;Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;)V", "client", "Lokhttp3/OkHttpClient;", "getClient", "()Lokhttp3/OkHttpClient;", "client$delegate", "Lkotlin/Lazy;", "get"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOkHttpClientProvider implements OkHttpClientProvider {
    private final HandshakeCertificatesFactory certificatesFactory;

    /* JADX INFO: renamed from: client$delegate, reason: from kotlin metadata */
    private final Lazy client;
    private final Optional<EventListener.Factory> eventListenerFactory;
    private final Set<Interceptor> interceptors;
    private final boolean isCotsIncluded;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultOkHttpClientProvider(Set<? extends Interceptor> interceptors, boolean z, Optional<EventListener.Factory> eventListenerFactory, HandshakeCertificatesFactory certificatesFactory) {
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(eventListenerFactory, "eventListenerFactory");
        Intrinsics.checkNotNullParameter(certificatesFactory, "certificatesFactory");
        this.interceptors = interceptors;
        this.isCotsIncluded = z;
        this.eventListenerFactory = eventListenerFactory;
        this.certificatesFactory = certificatesFactory;
        this.client = LazyKt.lazy(new DefaultOkHttpClientProvider$client$2(this));
    }

    private final OkHttpClient getClient() {
        return (OkHttpClient) this.client.getValue();
    }

    @Override // com.stripe.jvmcore.client.OkHttpClientProvider
    public OkHttpClient get() {
        return getClient();
    }
}
