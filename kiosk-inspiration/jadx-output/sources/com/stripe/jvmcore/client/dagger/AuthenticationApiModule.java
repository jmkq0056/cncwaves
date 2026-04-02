package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.dagger.Armada;
import com.stripe.proto.terminalauth.pub.api.AuthenticationApi;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthenticationApiModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/jvmcore/client/dagger/AuthenticationApiModule;", "", "()V", "provideAuthenticationApi", "Lcom/stripe/proto/terminalauth/pub/api/AuthenticationApi;", "crpcClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "client"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {ArmadaCrpcClientModule.class})
public final class AuthenticationApiModule {
    public static final AuthenticationApiModule INSTANCE = new AuthenticationApiModule();

    private AuthenticationApiModule() {
    }

    @Provides
    @Singleton
    public final AuthenticationApi provideAuthenticationApi(@Armada Lazy<CrpcClient> crpcClient) {
        Intrinsics.checkNotNullParameter(crpcClient, "crpcClient");
        return new AuthenticationApi(crpcClient);
    }
}
