package com.stripe.offlinemode.dagger;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.Moshi;
import com.squareup.wire.WireJsonAdapterFactory;
import com.stripe.jvmcore.dagger.IsNetworkAvailable;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.dagger.OfflineForwarding;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.offlinemode.forwarding.DefaultOfflineConnectionService;
import com.stripe.offlinemode.forwarding.DefaultOfflineCredentialsProvider;
import com.stripe.offlinemode.forwarding.DefaultOfflineForwardingApiClient;
import com.stripe.offlinemode.forwarding.DefaultOfflineForwardingDelayCalculator;
import com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager;
import com.stripe.offlinemode.forwarding.DefaultOfflineForwardingService;
import com.stripe.offlinemode.forwarding.OfflineConnectionService;
import com.stripe.offlinemode.forwarding.OfflineCredentialsProvider;
import com.stripe.offlinemode.forwarding.OfflineCredentialsProviderProxy;
import com.stripe.offlinemode.forwarding.OfflineForwardingApiClient;
import com.stripe.offlinemode.forwarding.OfflineForwardingDelayCalculator;
import com.stripe.offlinemode.forwarding.OfflineForwardingManager;
import com.stripe.offlinemode.forwarding.OfflineForwardingService;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.log.OfflineForwardingTraceManager;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.internal.common.LocationHandler;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import com.stripe.time.Clock;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: OfflineForwardingModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH!¢\u0006\u0002\b\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH'J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H!¢\u0006\u0002\b\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H'¨\u0006\u001a"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;", "", "()V", "bindForwardingDelayCalculator", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;", "defaultOfflineForwardingDelayCalculator", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;", "bindOfflineApiClient", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;", "defaultOfflineForwardingApiClient", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;", "bindOfflineApiClient$offlinemode_release", "bindOfflineConnectionService", "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;", "defaultOfflineConnectionService", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;", "bindOfflineCredentialsProvider", "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;", "offlineCredentialsProviderProxy", "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;", "bindOfflineCredentialsProvider$offlinemode_release", "bindOfflinePaymentService", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;", "defaultOfflinePaymentService", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public abstract class OfflineForwardingModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract OfflineForwardingDelayCalculator bindForwardingDelayCalculator(DefaultOfflineForwardingDelayCalculator defaultOfflineForwardingDelayCalculator);

    @Binds
    public abstract OfflineForwardingApiClient bindOfflineApiClient$offlinemode_release(DefaultOfflineForwardingApiClient defaultOfflineForwardingApiClient);

    @Binds
    public abstract OfflineConnectionService bindOfflineConnectionService(DefaultOfflineConnectionService defaultOfflineConnectionService);

    @Offline
    @Binds
    public abstract OfflineCredentialsProvider bindOfflineCredentialsProvider$offlinemode_release(OfflineCredentialsProviderProxy offlineCredentialsProviderProxy);

    @Binds
    public abstract OfflineForwardingService bindOfflinePaymentService(DefaultOfflineForwardingService defaultOfflinePaymentService);

    /* JADX INFO: compiled from: OfflineForwardingModule.kt */
    @Metadata(d1 = {"\u0000Ì\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JY\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\"\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0010j\u0002`\u0015H\u0001¢\u0006\u0002\b\u0016J7\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\b\u0001\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fH\u0001¢\u0006\u0002\b\u001fJ\b\u0010 \u001a\u00020!H\u0007J\u001d\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%H\u0001¢\u0006\u0002\b&JÁ\u0001\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\b\b\u0001\u0010+\u001a\u00020,2\u000e\b\u0001\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.2\b\b\u0001\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\f\u00104\u001a\b\u0012\u0004\u0012\u000206052\u0006\u0010\t\u001a\u0002072\u0006\u00108\u001a\u0002092\b\b\u0001\u0010\u001d\u001a\u00020\u001e2\u0006\u0010:\u001a\u00020;2\"\u0010<\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020>0\u0010j\u0002`?2\"\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0010j\u0002`\u00152\u0006\u0010@\u001a\u00020\u000eH\u0001¢\u0006\u0002\bA¨\u0006B"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;", "", "()V", "provideDefaultOfflineConnectionCredentialsProvider", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;", "offlineConnectionService", "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;", "connectionTokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", "offlineForwardingDelayCalculator", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;", "traceManager", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;", "logger", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;", "discreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "provideDefaultOfflineConnectionCredentialsProvider$offlinemode_release", "provideDefaultOfflineForwardingApiClient", "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;", "offlineForwardingService", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;", "locationHandler", "Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "credentialsProvider", "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;", "provideDefaultOfflineForwardingApiClient$offlinemode_release", "provideMoshi", "Lcom/squareup/moshi/Moshi;", "provideOfflineConnectionCredentialsProviderProxy", "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;", "offlineListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;", "provideOfflineConnectionCredentialsProviderProxy$offlinemode_release", "provideOfflineForwardingManager", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;", "apiClient", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "networkConnectivityFlow", "Lkotlinx/coroutines/flow/Flow;", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "networkStatusProvider", "Ljavax/inject/Provider;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "clock", "Lcom/stripe/time/Clock;", "endToEndLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineEndToEndLogger;", "traceLogger", "provideOfflineForwardingManager$offlinemode_release", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @Provides
        public final OfflineForwardingManager provideOfflineForwardingManager$offlinemode_release(OfflineForwardingApiClient apiClient, @OfflineForwarding OfflineRepository offlineRepository, @IsNetworkAvailable Flow<Boolean> networkConnectivityFlow, @Offline CoroutineDispatcher dispatcher, OfflineListener listener, Provider<NetworkStatus> networkStatusProvider, OfflineForwardingDelayCalculator offlineForwardingDelayCalculator, OfflineConfigHelper offlineConfigHelper, @Offline OfflineCredentialsProvider credentialsProvider, Clock clock, HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder> endToEndLogger, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, OfflineForwardingTraceLogger traceLogger) {
            Intrinsics.checkNotNullParameter(apiClient, "apiClient");
            Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
            Intrinsics.checkNotNullParameter(networkConnectivityFlow, "networkConnectivityFlow");
            Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(networkStatusProvider, "networkStatusProvider");
            Intrinsics.checkNotNullParameter(offlineForwardingDelayCalculator, "offlineForwardingDelayCalculator");
            Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
            Intrinsics.checkNotNullParameter(credentialsProvider, "credentialsProvider");
            Intrinsics.checkNotNullParameter(clock, "clock");
            Intrinsics.checkNotNullParameter(endToEndLogger, "endToEndLogger");
            Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
            Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
            return new DefaultOfflineForwardingManager(apiClient, offlineRepository, networkConnectivityFlow, dispatcher, listener, networkStatusProvider, offlineForwardingDelayCalculator, offlineConfigHelper, clock, endToEndLogger, discreteLogger, traceLogger, credentialsProvider);
        }

        @Provides
        public final DefaultOfflineForwardingApiClient provideDefaultOfflineForwardingApiClient$offlinemode_release(OfflineForwardingService offlineForwardingService, LocationHandler locationHandler, @Offline OfflineCredentialsProvider credentialsProvider, OfflineForwardingTraceLogger logger, OfflineForwardingTraceManager traceManager) {
            Intrinsics.checkNotNullParameter(offlineForwardingService, "offlineForwardingService");
            Intrinsics.checkNotNullParameter(locationHandler, "locationHandler");
            Intrinsics.checkNotNullParameter(credentialsProvider, "credentialsProvider");
            Intrinsics.checkNotNullParameter(logger, "logger");
            Intrinsics.checkNotNullParameter(traceManager, "traceManager");
            return new DefaultOfflineForwardingApiClient(offlineForwardingService, locationHandler, credentialsProvider, logger, traceManager);
        }

        @Provides
        public final DefaultOfflineCredentialsProvider provideDefaultOfflineConnectionCredentialsProvider$offlinemode_release(OfflineConnectionService offlineConnectionService, ConnectionTokenProvider connectionTokenProvider, DefaultOfflineForwardingDelayCalculator offlineForwardingDelayCalculator, OfflineForwardingTraceManager traceManager, OfflineForwardingTraceLogger logger, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger) {
            Intrinsics.checkNotNullParameter(offlineConnectionService, "offlineConnectionService");
            Intrinsics.checkNotNullParameter(connectionTokenProvider, "connectionTokenProvider");
            Intrinsics.checkNotNullParameter(offlineForwardingDelayCalculator, "offlineForwardingDelayCalculator");
            Intrinsics.checkNotNullParameter(traceManager, "traceManager");
            Intrinsics.checkNotNullParameter(logger, "logger");
            Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
            return new DefaultOfflineCredentialsProvider(offlineConnectionService, connectionTokenProvider, offlineForwardingDelayCalculator, traceManager, logger, discreteLogger);
        }

        @Provides
        public final OfflineCredentialsProviderProxy provideOfflineConnectionCredentialsProviderProxy$offlinemode_release(DefaultOfflineCredentialsProvider credentialsProvider, ProxyOfflineListener offlineListener) {
            Intrinsics.checkNotNullParameter(credentialsProvider, "credentialsProvider");
            Intrinsics.checkNotNullParameter(offlineListener, "offlineListener");
            return new OfflineCredentialsProviderProxy(credentialsProvider, offlineListener);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Provides
        @Singleton
        public final Moshi provideMoshi() {
            Moshi moshiBuild = new Moshi.Builder().add((JsonAdapter.Factory) new WireJsonAdapterFactory(null, false, 3, 0 == true ? 1 : 0)).build();
            Intrinsics.checkNotNullExpressionValue(moshiBuild, "build(...)");
            return moshiBuild;
        }
    }
}
