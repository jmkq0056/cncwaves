package com.stripe.jvmcore.crpcclient;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CrpcServiceResolver;
import com.stripe.jvmcore.dagger.LazyExtKt;
import dagger.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: CrpcServiceResolver.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0011B5\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0018\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u0004\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0002\u0010\u000bJ\u001f\u0010\f\u001a\u00028\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u0010R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u0004\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;", "ServiceType", "", "crpcClientBuilder", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;", "resolutionStrategy", "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;", "serviceProvider", "Lkotlin/Function1;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "(Ldagger/Lazy;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;Lkotlin/jvm/functions/Function1;)V", "resolve", "ipAddress", "", "baseUrl", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;", "ResolutionStrategy", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CrpcServiceResolver<ServiceType> {
    private final Lazy<CrpcClient.Builder> crpcClientBuilder;
    private final ResolutionStrategy resolutionStrategy;
    private final Function1<Lazy<CrpcClient>, ServiceType> serviceProvider;

    /* JADX INFO: compiled from: CrpcServiceResolver.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;", "", "resolve", "", "ipAddress", "baseUrl", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface ResolutionStrategy {
        String resolve(String ipAddress, String baseUrl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CrpcServiceResolver(Lazy<CrpcClient.Builder> crpcClientBuilder, ResolutionStrategy resolutionStrategy, Function1<? super Lazy<CrpcClient>, ? extends ServiceType> serviceProvider) {
        Intrinsics.checkNotNullParameter(crpcClientBuilder, "crpcClientBuilder");
        Intrinsics.checkNotNullParameter(resolutionStrategy, "resolutionStrategy");
        Intrinsics.checkNotNullParameter(serviceProvider, "serviceProvider");
        this.crpcClientBuilder = crpcClientBuilder;
        this.resolutionStrategy = resolutionStrategy;
        this.serviceProvider = serviceProvider;
    }

    public final ServiceType resolve(String ipAddress, String baseUrl) {
        return this.serviceProvider.invoke(LazyExtKt.lazilyMap(this.crpcClientBuilder, new AnonymousClass1(this.resolutionStrategy.resolve(ipAddress, baseUrl))));
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.crpcclient.CrpcServiceResolver$resolve$1, reason: invalid class name */
    /* JADX INFO: compiled from: CrpcServiceResolver.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "ServiceType", "it", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
    static final class AnonymousClass1 extends Lambda implements Function1<CrpcClient.Builder, CrpcClient> {
        final /* synthetic */ String $url;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str) {
            super(1);
            this.$url = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String invoke$lambda$0(String url) {
            Intrinsics.checkNotNullParameter(url, "$url");
            return url;
        }

        @Override // kotlin.jvm.functions.Function1
        public final CrpcClient invoke(CrpcClient.Builder it) {
            Intrinsics.checkNotNullParameter(it, "it");
            final String str = this.$url;
            return it.baseUrlProvider(new CrpcClient.BaseUrlProvider() { // from class: com.stripe.jvmcore.crpcclient.CrpcServiceResolver$resolve$1$$ExternalSyntheticLambda0
                @Override // com.stripe.jvmcore.crpcclient.CrpcClient.BaseUrlProvider
                public final String getBaseUrl() {
                    return CrpcServiceResolver.AnonymousClass1.invoke$lambda$0(str);
                }
            }).build();
        }
    }
}
