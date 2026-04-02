package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.client.DefaultOkHttpClientProvider;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.dagger.IsCotsIncluded;
import com.stripe.jvmcore.httptls.HandshakeCertificatesFactory;
import dagger.Module;
import dagger.Provides;
import java.util.Optional;
import java.util.Set;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.EventListener;
import okhttp3.Interceptor;

/* JADX INFO: compiled from: HttpClientBaseModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J;\u0010\u0003\u001a\u00020\u00042\u0011\u0010\u0005\u001a\r\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b2\b\b\u0001\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;", "", "()V", "provideOkHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "interceptors", "", "Lokhttp3/Interceptor;", "Lkotlin/jvm/JvmSuppressWildcards;", "isCotsIncluded", "", "eventListenerFactory", "Ljava/util/Optional;", "Lokhttp3/EventListener$Factory;", "certificatesFactory", "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;", "client"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class HttpClientBaseModule {
    @Provides
    @Singleton
    public final OkHttpClientProvider provideOkHttpClientProvider(Set<Interceptor> interceptors, @IsCotsIncluded boolean isCotsIncluded, Optional<EventListener.Factory> eventListenerFactory, HandshakeCertificatesFactory certificatesFactory) {
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(eventListenerFactory, "eventListenerFactory");
        Intrinsics.checkNotNullParameter(certificatesFactory, "certificatesFactory");
        return new DefaultOkHttpClientProvider(interceptors, isCotsIncluded, eventListenerFactory, certificatesFactory);
    }
}
