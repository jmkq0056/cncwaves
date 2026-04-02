package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.dagger.HttpClientConfigurator;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.dagger.Armada;
import com.stripe.stripeterminal.internal.common.crpc.IdentifierHeadersInterceptor;
import com.stripe.stripeterminal.internal.common.crpc.PlymouthRequestContextProvider;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: ArmadaClientModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001¢\u0006\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/dagger/ArmadaClientModule;", "", "()V", "provideContextProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "plymouthRequestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;", "provideContextProvider$sdkmanager_publish", "provideHttpClientConfigurator", "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;", "headerInterceptor", "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;", "provideHttpClientConfigurator$sdkmanager_publish", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ArmadaClientModule {
    public static final ArmadaClientModule INSTANCE = new ArmadaClientModule();

    private ArmadaClientModule() {
    }

    @Provides
    @Armada
    public final CrpcClient.CrpcRequestContextProvider provideContextProvider$sdkmanager_publish(PlymouthRequestContextProvider plymouthRequestContextProvider) {
        Intrinsics.checkNotNullParameter(plymouthRequestContextProvider, "plymouthRequestContextProvider");
        return plymouthRequestContextProvider;
    }

    @Provides
    @Armada
    public final HttpClientConfigurator provideHttpClientConfigurator$sdkmanager_publish(final IdentifierHeadersInterceptor headerInterceptor) {
        Intrinsics.checkNotNullParameter(headerInterceptor, "headerInterceptor");
        return new HttpClientConfigurator() { // from class: com.stripe.stripeterminal.dagger.ArmadaClientModule$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.client.dagger.HttpClientConfigurator
            public final OkHttpClient.Builder configure(OkHttpClient.Builder builder) {
                return ArmadaClientModule.provideHttpClientConfigurator$lambda$0(headerInterceptor, builder);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient.Builder provideHttpClientConfigurator$lambda$0(IdentifierHeadersInterceptor headerInterceptor, OkHttpClient.Builder HttpClientConfigurator) {
        Intrinsics.checkNotNullParameter(headerInterceptor, "$headerInterceptor");
        Intrinsics.checkNotNullParameter(HttpClientConfigurator, "$this$HttpClientConfigurator");
        return HttpClientConfigurator.addInterceptor(headerInterceptor);
    }
}
