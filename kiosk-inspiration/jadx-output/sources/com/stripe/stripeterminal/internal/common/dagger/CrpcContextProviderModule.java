package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider;
import com.stripe.jvmcore.dagger.ClientLogger;
import com.stripe.jvmcore.dagger.Gator;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.crpc.LocalIpAddressProvider;
import com.stripe.stripeterminal.internal.common.crpc.LoggingRequestContextProvider;
import com.stripe.stripeterminal.internal.common.crpc.PlymouthRequestContextProvider;
import com.stripe.stripeterminal.internal.common.crpc.RemoteReaderRequestContextProvider;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CrpcContextProviderModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule;", "", "()V", "bindClientLoggerCprcContextProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "loggingRequestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;", "bindGatorCprcContextProvider", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public abstract class CrpcContextProviderModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @ClientLogger
    @Binds
    public abstract CrpcClient.CrpcRequestContextProvider bindClientLoggerCprcContextProvider(LoggingRequestContextProvider loggingRequestContextProvider);

    @Gator
    @Binds
    public abstract CrpcClient.CrpcRequestContextProvider bindGatorCprcContextProvider(LoggingRequestContextProvider loggingRequestContextProvider);

    /* JADX INFO: compiled from: CrpcContextProviderModule.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J0\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0007¨\u0006\u0014"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule$Companion;", "", "()V", "provideLoggingRequestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;", "posInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "plymouthRequestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;", "providePlymouthCrpcRequestContextProvider", "rpcSessionTokenProvider", "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "localIpAddressProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/LocalIpAddressProvider;", "provideRemoteReaderCrpcRequestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Provides
        public final PlymouthRequestContextProvider providePlymouthCrpcRequestContextProvider(RpcSessionTokenProvider rpcSessionTokenProvider, ApplicationInformationProvider applicationInformationProvider, TerminalStatusManager terminalStatusManager, PosInfoFactory posInfoFactory, LocalIpAddressProvider localIpAddressProvider) {
            Intrinsics.checkNotNullParameter(rpcSessionTokenProvider, "rpcSessionTokenProvider");
            Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
            Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
            Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
            Intrinsics.checkNotNullParameter(localIpAddressProvider, "localIpAddressProvider");
            return new PlymouthRequestContextProvider(rpcSessionTokenProvider, applicationInformationProvider, terminalStatusManager, posInfoFactory, localIpAddressProvider);
        }

        @Provides
        public final LoggingRequestContextProvider provideLoggingRequestContextProvider(PosInfoFactory posInfoFactory, PlymouthRequestContextProvider plymouthRequestContextProvider) {
            Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
            Intrinsics.checkNotNullParameter(plymouthRequestContextProvider, "plymouthRequestContextProvider");
            return new LoggingRequestContextProvider(posInfoFactory, plymouthRequestContextProvider);
        }

        @Provides
        @Singleton
        public final RemoteReaderRequestContextProvider provideRemoteReaderCrpcRequestContextProvider(PosInfoFactory posInfoFactory, LocalIpAddressProvider localIpAddressProvider) {
            Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
            Intrinsics.checkNotNullParameter(localIpAddressProvider, "localIpAddressProvider");
            return new RemoteReaderRequestContextProvider(posInfoFactory, localIpAddressProvider);
        }
    }
}
