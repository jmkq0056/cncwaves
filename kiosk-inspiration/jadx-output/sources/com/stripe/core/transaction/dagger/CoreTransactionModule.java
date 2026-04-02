package com.stripe.core.transaction.dagger;

import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.dagger.Files;
import com.stripe.jvmcore.dagger.Mainland;
import com.stripe.jvmcore.environment.UserAgentProvider;
import com.stripe.jvmcore.restclient.AuthenticatedRestClient;
import com.stripe.jvmcore.restclient.RestClient;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CoreTransactionModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000e\b\u0001\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0007¨\u0006\r"}, d2 = {"Lcom/stripe/core/transaction/dagger/CoreTransactionModule;", "", "()V", "provideAuthenticatedRestClient", "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;", "baseRestClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/restclient/RestClient;", "userAgentProvider", "Lcom/stripe/jvmcore/environment/UserAgentProvider;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "baseFilesRestClient", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class CoreTransactionModule {
    public static final CoreTransactionModule INSTANCE = new CoreTransactionModule();

    private CoreTransactionModule() {
    }

    @Provides
    @Singleton
    public final AuthenticatedRestClient provideAuthenticatedRestClient(@Mainland Lazy<RestClient> baseRestClient, UserAgentProvider userAgentProvider, TransactionRepository transactionRepository, @Files Lazy<RestClient> baseFilesRestClient) {
        Intrinsics.checkNotNullParameter(baseRestClient, "baseRestClient");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(baseFilesRestClient, "baseFilesRestClient");
        return new AuthenticatedRestClient(baseRestClient, baseFilesRestClient, userAgentProvider, transactionRepository);
    }
}
