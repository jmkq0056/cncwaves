package com.stripe.offlinemode.dagger;

import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.device.ActiveLocationConfigRepository;
import com.stripe.jvmcore.dagger.Computation;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.restclient.AuthenticatedRestClient;
import com.stripe.jvmcore.restclient.CustomHeadersProvider;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.offlinemode.DefaultOfflineEventHandler;
import com.stripe.offlinemode.OfflineEventHandler;
import com.stripe.offlinemode.OfflineIdGenerator;
import com.stripe.offlinemode.OfflineReaderSetup;
import com.stripe.offlinemode.OfflineUUIDGenerator;
import com.stripe.offlinemode.forwarding.OfflineForwardingManager;
import com.stripe.offlinemode.helpers.DefaultOfflineConfigHelper;
import com.stripe.offlinemode.helpers.DefaultOfflineDatabaseReaper;
import com.stripe.offlinemode.helpers.DefaultOfflinePaymentMethodValidator;
import com.stripe.offlinemode.helpers.DefaultOfflineRequestHelper;
import com.stripe.offlinemode.helpers.OfflineConfigHelper;
import com.stripe.offlinemode.helpers.OfflineDatabaseReaper;
import com.stripe.offlinemode.helpers.OfflinePaymentMethodValidator;
import com.stripe.offlinemode.helpers.OfflineRequestHelper;
import com.stripe.offlinemode.helpers.OfflineSessionManager;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import com.stripe.time.Clock;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: OfflineHelperModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u00013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J7\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0002\b\u000fJ\u0092\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0001\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0013\b\u0001\u0010\u001e\u001a\r\u0012\t\u0012\u00070 ¢\u0006\u0002\b!0\u001f2\"\u0010\"\u001a\u001e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0#j\u0002`(2\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0002\b)J.\u0010*\u001a\u00020+2\b\b\u0001\u0010,\u001a\u00020-2\b\b\u0001\u0010.\u001a\u00020-2\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0007JD\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u0010\u001c\u001a\u00020\u001d2\"\u0010\"\u001a\u001e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0#j\u0002`(2\u0006\u0010\r\u001a\u00020\u000eH\u0007¨\u00064"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineHelperModule;", "", "()V", "provideDefaultOfflineConfigHelper", "Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "proxyOfflineListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;", "activeLocationConfigRepository", "Lcom/stripe/device/ActiveLocationConfigRepository;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideDefaultOfflineConfigHelper$offlinemode_release", "provideDefaultOfflineEventHandler", "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;", "clock", "Lcom/stripe/time/Clock;", "offlineIdGenerator", "Lcom/stripe/offlinemode/OfflineIdGenerator;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "posInfoFactory", "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;", "offlineForwardingManager", "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;", "offlineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "stripeNetworkStatusFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "Lkotlin/jvm/JvmSuppressWildcards;", "offlineDiscreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "provideDefaultOfflineEventHandler$offlinemode_release", "provideOfflineDbReaper", "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;", "computationDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "ioDispatcher", "provideOfflinePaymentMethodValidator", "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "Bindings", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class OfflineHelperModule {
    public static final OfflineHelperModule INSTANCE = new OfflineHelperModule();

    /* JADX INFO: compiled from: OfflineHelperModule.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH'J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH'J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H'J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H'J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H'J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u0006H'J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000eH'¨\u0006\u001d"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineHelperModule$Bindings;", "", "()V", "bindActivateReaderListener", "Lcom/stripe/offlinemode/OfflineReaderSetup;", "defaultOfflineEventHandler", "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;", "bindCustomHeadersProvider", "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;", "authenticatedRestClient", "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;", "bindOfflineConfigHelper", "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "defaultOfflineConfigHelper", "Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;", "bindOfflineEventHandler", "Lcom/stripe/offlinemode/OfflineEventHandler;", "bindOfflineIdGenerator", "Lcom/stripe/offlinemode/OfflineIdGenerator;", "offlineUUIDGenerator", "Lcom/stripe/offlinemode/OfflineUUIDGenerator;", "bindOfflineRequestHelper", "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;", "defaultOfflineRequestHelper", "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;", "bindOfflineSessionManager", "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;", "bindUpdateClientConfigHandler", "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public static abstract class Bindings {
        @Binds
        public abstract OfflineReaderSetup bindActivateReaderListener(DefaultOfflineEventHandler defaultOfflineEventHandler);

        @Binds
        public abstract CustomHeadersProvider bindCustomHeadersProvider(AuthenticatedRestClient authenticatedRestClient);

        @Binds
        public abstract OfflineConfigHelper bindOfflineConfigHelper(DefaultOfflineConfigHelper defaultOfflineConfigHelper);

        @Binds
        public abstract OfflineEventHandler bindOfflineEventHandler(DefaultOfflineEventHandler defaultOfflineEventHandler);

        @Binds
        public abstract OfflineIdGenerator bindOfflineIdGenerator(OfflineUUIDGenerator offlineUUIDGenerator);

        @Binds
        public abstract OfflineRequestHelper bindOfflineRequestHelper(DefaultOfflineRequestHelper defaultOfflineRequestHelper);

        @Binds
        public abstract OfflineSessionManager bindOfflineSessionManager(DefaultOfflineEventHandler defaultOfflineEventHandler);

        @Binds
        public abstract UpdateClient.OfflineConfigUpdateListener bindUpdateClientConfigHandler(DefaultOfflineConfigHelper defaultOfflineConfigHelper);
    }

    private OfflineHelperModule() {
    }

    @Provides
    @Singleton
    public final DefaultOfflineConfigHelper provideDefaultOfflineConfigHelper$offlinemode_release(SettingsRepository settingsRepository, @Offline OfflineRepository offlineRepository, ProxyOfflineListener proxyOfflineListener, ActiveLocationConfigRepository activeLocationConfigRepository, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(proxyOfflineListener, "proxyOfflineListener");
        Intrinsics.checkNotNullParameter(activeLocationConfigRepository, "activeLocationConfigRepository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultOfflineConfigHelper(settingsRepository, offlineRepository, proxyOfflineListener, activeLocationConfigRepository, loggerFactory.create(Reflection.getOrCreateKotlinClass(DefaultOfflineConfigHelper.class)));
    }

    @Provides
    @Singleton
    public final DefaultOfflineEventHandler provideDefaultOfflineEventHandler$offlinemode_release(Clock clock, @Offline OfflineRepository offlineRepository, OfflineIdGenerator offlineIdGenerator, @Offline CoroutineScope scope, ActiveLocationConfigRepository activeLocationConfigRepository, PosInfoFactory posInfoFactory, OfflineForwardingManager offlineForwardingManager, OfflineConfigHelper offlineConfigHelper, @Offline Flow<NetworkStatus> stripeNetworkStatusFlow, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(offlineIdGenerator, "offlineIdGenerator");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(activeLocationConfigRepository, "activeLocationConfigRepository");
        Intrinsics.checkNotNullParameter(posInfoFactory, "posInfoFactory");
        Intrinsics.checkNotNullParameter(offlineForwardingManager, "offlineForwardingManager");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(stripeNetworkStatusFlow, "stripeNetworkStatusFlow");
        Intrinsics.checkNotNullParameter(offlineDiscreteLogger, "offlineDiscreteLogger");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultOfflineEventHandler(clock, offlineRepository, offlineIdGenerator, scope, activeLocationConfigRepository, posInfoFactory, offlineForwardingManager, offlineConfigHelper, stripeNetworkStatusFlow, offlineDiscreteLogger, loggerFactory.create(Reflection.getOrCreateKotlinClass(DefaultOfflineEventHandler.class)));
    }

    @Provides
    @Singleton
    public final OfflineDatabaseReaper provideOfflineDbReaper(@Computation CoroutineDispatcher computationDispatcher, @IO CoroutineDispatcher ioDispatcher, @Offline OfflineRepository offlineRepository, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(computationDispatcher, "computationDispatcher");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultOfflineDatabaseReaper(computationDispatcher, ioDispatcher, offlineRepository, loggerFactory.create(Reflection.getOrCreateKotlinClass(DefaultOfflineDatabaseReaper.class)));
    }

    @Provides
    @Singleton
    public final OfflinePaymentMethodValidator provideOfflinePaymentMethodValidator(TerminalStatusManager statusManager, OfflineConfigHelper offlineConfigHelper, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> offlineDiscreteLogger, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(offlineConfigHelper, "offlineConfigHelper");
        Intrinsics.checkNotNullParameter(offlineDiscreteLogger, "offlineDiscreteLogger");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultOfflinePaymentMethodValidator(statusManager, offlineConfigHelper, offlineDiscreteLogger, loggerFactory.create(Reflection.getOrCreateKotlinClass(DefaultOfflinePaymentMethodValidator.class)));
    }
}
