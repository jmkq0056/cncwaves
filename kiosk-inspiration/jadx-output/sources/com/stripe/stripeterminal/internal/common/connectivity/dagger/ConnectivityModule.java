package com.stripe.stripeterminal.internal.common.connectivity.dagger;

import com.stripe.stripeterminal.internal.common.connectivity.DefaultLocalIpAddressProvider;
import com.stripe.stripeterminal.internal.common.crpc.LocalIpAddressProvider;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: ConnectivityModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule;", "", "()V", "bindLocalIpAddressProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;", "defaultLocalIpAddressProvider", "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;", "Companion", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public abstract class ConnectivityModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract LocalIpAddressProvider bindLocalIpAddressProvider(DefaultLocalIpAddressProvider defaultLocalIpAddressProvider);

    /* JADX INFO: compiled from: ConnectivityModule.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule$Companion;", "", "()V", "provideDefaultLocalIpAddressProvider", "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultLocalIpAddressProvider;", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Provides
        public final DefaultLocalIpAddressProvider provideDefaultLocalIpAddressProvider() {
            return new DefaultLocalIpAddressProvider();
        }
    }
}
