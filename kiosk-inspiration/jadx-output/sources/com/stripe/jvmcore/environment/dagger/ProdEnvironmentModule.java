package com.stripe.jvmcore.environment.dagger;

import com.stripe.jvmcore.environment.Environment;
import com.stripe.jvmcore.environment.EnvironmentProvider;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: compiled from: ProdEnvironmentModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;", "", "()V", "provideProdEnvironmentProvider", "Lcom/stripe/jvmcore/environment/EnvironmentProvider;", "environment"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ProdEnvironmentModule {
    public static final ProdEnvironmentModule INSTANCE = new ProdEnvironmentModule();

    @Provides
    @Singleton
    public final EnvironmentProvider provideProdEnvironmentProvider() {
        return new EnvironmentProvider() { // from class: com.stripe.jvmcore.environment.dagger.ProdEnvironmentModule$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.environment.EnvironmentProvider
            public final Environment getEnvironment() {
                return ProdEnvironmentModule.provideProdEnvironmentProvider$lambda$0();
            }
        };
    }

    private ProdEnvironmentModule() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Environment provideProdEnvironmentProvider$lambda$0() {
        return Environment.Prod.INSTANCE;
    }
}
