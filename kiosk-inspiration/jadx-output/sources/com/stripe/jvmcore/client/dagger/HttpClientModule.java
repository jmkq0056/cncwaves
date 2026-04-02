package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.httptls.dagger.HttpTlsModule;
import dagger.Module;
import dagger.multibindings.Multibinds;
import java.util.Set;
import kotlin.Metadata;
import okhttp3.Interceptor;

/* JADX INFO: compiled from: HttpClientModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/jvmcore/client/dagger/HttpClientModule;", "", "()V", "Bindings", "client"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {HttpClientBaseModule.class, Bindings.class, HttpTlsModule.class})
public final class HttpClientModule {
    public static final HttpClientModule INSTANCE = new HttpClientModule();

    /* JADX INFO: compiled from: HttpClientModule.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0013\u0010\u0002\u001a\r\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\b\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/client/dagger/HttpClientModule$Bindings;", "", "provideInterceptors", "", "Lokhttp3/Interceptor;", "Lkotlin/jvm/JvmSuppressWildcards;", "client"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Multibinds
        Set<Interceptor> provideInterceptors();
    }

    private HttpClientModule() {
    }
}
