package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CrpcServiceResolver;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsListener;
import com.stripe.jvmcore.terminal.requestfactories.JackRabbitApiRequestFactory;
import com.stripe.kmpcore.jackrabbitclient.JackrabbitClient;
import com.stripe.kmpcore.jackrabbitclient.KmpCrpcClient;
import com.stripe.proto.api.sdk.JackRabbitApi;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiClient;
import com.stripe.stripeterminal.internal.common.crpc.RemoteReaderRequestContextProvider;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ReaderActivator;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: IpReaderModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002Jp\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0010\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 H\u0007J\b\u0010!\u001a\u00020 H\u0007¨\u0006\""}, d2 = {"Lcom/stripe/stripeterminal/dagger/IpReaderModule;", "", "()V", "provideIpReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;", "apiClient", "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;", "crpcServiceResolver", "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;", "Lcom/stripe/proto/api/sdk/JackRabbitApi;", "terminalsdkCrpcRequestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;", "apiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "ioCoroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "readerActivator", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;", "offlineStatusDetailsListener", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;", "unacknowledgedReaderEventsHandler", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;", "jackrabbitClient", "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideJackrabbitClient", "kmpCrpcClient", "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;", "provideKmpCrpcClient", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class IpReaderModule {
    @Provides
    @Singleton
    public final IpReaderController provideIpReaderController(ApiClient apiClient, CrpcServiceResolver<JackRabbitApi> crpcServiceResolver, RemoteReaderRequestContextProvider terminalsdkCrpcRequestContextProvider, JackRabbitApiRequestFactory apiRequestFactory, FeatureFlagsRepository featureFlagsRepository, @IO CoroutineDispatcher ioCoroutineDispatcher, TerminalStatusManager terminalStatusManager, ReaderActivator readerActivator, OfflineStatusDetailsListener offlineStatusDetailsListener, ReaderEventContracts.EventsCountListener unacknowledgedReaderEventsHandler, JackrabbitClient jackrabbitClient, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        Intrinsics.checkNotNullParameter(crpcServiceResolver, "crpcServiceResolver");
        Intrinsics.checkNotNullParameter(terminalsdkCrpcRequestContextProvider, "terminalsdkCrpcRequestContextProvider");
        Intrinsics.checkNotNullParameter(apiRequestFactory, "apiRequestFactory");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(ioCoroutineDispatcher, "ioCoroutineDispatcher");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(readerActivator, "readerActivator");
        Intrinsics.checkNotNullParameter(offlineStatusDetailsListener, "offlineStatusDetailsListener");
        Intrinsics.checkNotNullParameter(unacknowledgedReaderEventsHandler, "unacknowledgedReaderEventsHandler");
        Intrinsics.checkNotNullParameter(jackrabbitClient, "jackrabbitClient");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new IpReaderController(apiClient, crpcServiceResolver, terminalsdkCrpcRequestContextProvider, apiRequestFactory, featureFlagsRepository, CoroutineScopeKt.CoroutineScope(ioCoroutineDispatcher), terminalStatusManager, readerActivator, offlineStatusDetailsListener, unacknowledgedReaderEventsHandler, jackrabbitClient, loggerFactory);
    }

    @Provides
    @Singleton
    public final JackrabbitClient provideJackrabbitClient(KmpCrpcClient kmpCrpcClient) {
        Intrinsics.checkNotNullParameter(kmpCrpcClient, "kmpCrpcClient");
        return new JackrabbitClient(kmpCrpcClient);
    }

    @Provides
    @Singleton
    public final KmpCrpcClient provideKmpCrpcClient() {
        return new KmpCrpcClient();
    }
}
