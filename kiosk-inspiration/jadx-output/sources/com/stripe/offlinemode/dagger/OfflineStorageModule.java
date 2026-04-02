package com.stripe.offlinemode.dagger;

import android.content.Context;
import com.stripe.core.storage.dagger.AndroidStorageModule;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.dagger.OfflineForwarding;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.offlinemode.dagger.JvmOfflineModule;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsRepository;
import com.stripe.jvmcore.offlinemode.storage.OfflineKeyValueStore;
import com.stripe.offlinemode.cipher.OfflineAccountConfigCipher;
import com.stripe.offlinemode.cipher.OfflineAesKeyProvider;
import com.stripe.offlinemode.cipher.OfflineApiRequestCipher;
import com.stripe.offlinemode.cipher.OfflineCipherProvider;
import com.stripe.offlinemode.cipher.OfflineConnectionCipher;
import com.stripe.offlinemode.cipher.OfflineLocationCipher;
import com.stripe.offlinemode.cipher.OfflineReaderCipher;
import com.stripe.offlinemode.helpers.DefaultOfflineRequestHelper;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.storage.DefaultOfflineDatabaseProvider;
import com.stripe.offlinemode.storage.DefaultOfflineRepository;
import com.stripe.offlinemode.storage.DirectOfflineStatusDetailsRepository;
import com.stripe.offlinemode.storage.OfflineDatabase;
import com.stripe.offlinemode.storage.OfflineDatabaseProvider;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.offlinemode.storage.ProxyOfflineRepository;
import com.stripe.offlinemode.storage.UnsupportedOfflineRepository;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.time.Clock;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import java.io.IOException;
import java.security.Key;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: OfflineStorageModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u00013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u0012\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u0004H\u0007J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J2\u0010\u0010\u001a\u00020\u00112\b\b\u0001\u0010\u0012\u001a\u00020\u00042\b\b\u0001\u0010\u0013\u001a\u00020\t2\u0014\b\u0001\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u0015H\u0007J \u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J>\u0010\u001b\u001a\u00020\u001c2\b\b\u0001\u0010\u001d\u001a\u00020\u001e2\"\u0010\u001f\u001a\u001e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0 j\u0002`%2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007Jf\u0010&\u001a\u00020\r2\u0006\u0010'\u001a\u00020\u001c2\"\u0010\u001f\u001a\u001e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0 j\u0002`%2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\b\u0001\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0007¨\u00064"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineStorageModule;", "", "()V", "provideCoroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "provideCoroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "provideDefaultOfflineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "unsupportedOfflineRepository", "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;", "defaultOfflineRepositoryFactory", "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideDirectOfflineStatsRepository", "Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;", "ioDispatcher", "offlineRepository", "networkStatusFlowProvider", "Ljavax/inject/Provider;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/stripeterminal/external/models/NetworkStatus;", "provideForwardingOfflineRepository", "forwardingLogger", "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;", "provideOfflineDatabaseProvider", "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;", "context", "Landroid/content/Context;", "discreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "provideOfflineRepositoryFactory", "offlineDatabaseProvider", "cipherProvider", "Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;", "keyProvider", "Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;", "offlineRequestHelper", "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;", "offlineDispatcher", "offlineKeyValueStore", "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;", "clock", "Lcom/stripe/time/Clock;", "Bindings", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {AndroidStorageModule.class, JvmOfflineModule.class, Bindings.class})
public final class OfflineStorageModule {
    public static final OfflineStorageModule INSTANCE = new OfflineStorageModule();

    /* JADX INFO: compiled from: OfflineStorageModule.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/dagger/OfflineStorageModule$Bindings;", "", "bindSdkOfflineStatsRepository", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;", "directOfflineStatusDetailsRepository", "Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        OfflineStatusDetailsRepository bindSdkOfflineStatsRepository(DirectOfflineStatusDetailsRepository directOfflineStatusDetailsRepository);
    }

    private OfflineStorageModule() {
    }

    @Provides
    @Singleton
    public final OfflineDatabaseProvider provideOfflineDatabaseProvider(@ForApplication Context context, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DefaultOfflineDatabaseProvider(context, discreteLogger, loggerFactory.create(Reflection.getOrCreateKotlinClass(OfflineDatabase.class)), null, 8, null);
    }

    @Offline
    @Provides
    @Singleton
    public final CoroutineDispatcher provideCoroutineDispatcher() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        return ExecutorsKt.from(executorServiceNewSingleThreadExecutor);
    }

    @Offline
    @Provides
    @Singleton
    public final CoroutineScope provideCoroutineScope(@Offline CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return CoroutineScopeKt.CoroutineScope(dispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(new CoroutineName("Offline")));
    }

    @Provides
    @Singleton
    public final DefaultOfflineRepositoryFactory provideOfflineRepositoryFactory(OfflineDatabaseProvider offlineDatabaseProvider, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, OfflineCipherProvider cipherProvider, OfflineAesKeyProvider keyProvider, DefaultOfflineRequestHelper offlineRequestHelper, @Offline CoroutineDispatcher offlineDispatcher, OfflineKeyValueStore offlineKeyValueStore, Clock clock) {
        Intrinsics.checkNotNullParameter(offlineDatabaseProvider, "offlineDatabaseProvider");
        Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
        Intrinsics.checkNotNullParameter(cipherProvider, "cipherProvider");
        Intrinsics.checkNotNullParameter(keyProvider, "keyProvider");
        Intrinsics.checkNotNullParameter(offlineRequestHelper, "offlineRequestHelper");
        Intrinsics.checkNotNullParameter(offlineDispatcher, "offlineDispatcher");
        Intrinsics.checkNotNullParameter(offlineKeyValueStore, "offlineKeyValueStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        return new DefaultOfflineRepositoryFactory(offlineDatabaseProvider, cipherProvider, keyProvider, offlineRequestHelper, offlineDispatcher, offlineKeyValueStore, clock, discreteLogger) { // from class: com.stripe.offlinemode.dagger.OfflineStorageModule.provideOfflineRepositoryFactory.1
            static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(AnonymousClass1.class, "offlineDatabase", "getOfflineDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;", 0))};
            final /* synthetic */ OfflineCipherProvider $cipherProvider;
            final /* synthetic */ Clock $clock;
            final /* synthetic */ HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> $discreteLogger;
            final /* synthetic */ OfflineAesKeyProvider $keyProvider;
            final /* synthetic */ CoroutineDispatcher $offlineDispatcher;
            final /* synthetic */ OfflineKeyValueStore $offlineKeyValueStore;
            final /* synthetic */ DefaultOfflineRequestHelper $offlineRequestHelper;

            /* JADX INFO: renamed from: offlineDatabase$delegate, reason: from kotlin metadata */
            private final OfflineDatabaseProvider offlineDatabase;

            {
                this.$cipherProvider = cipherProvider;
                this.$keyProvider = keyProvider;
                this.$offlineRequestHelper = offlineRequestHelper;
                this.$offlineDispatcher = offlineDispatcher;
                this.$offlineKeyValueStore = offlineKeyValueStore;
                this.$clock = clock;
                this.$discreteLogger = discreteLogger;
                this.offlineDatabase = offlineDatabaseProvider;
            }

            private final OfflineDatabase getOfflineDatabase() {
                return this.offlineDatabase.getValue(this, $$delegatedProperties[0]);
            }

            @Override // com.stripe.offlinemode.dagger.DefaultOfflineRepositoryFactory
            public DefaultOfflineRepository create(Logger<?, ?> logger) throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, UnrecoverableEntryException {
                Intrinsics.checkNotNullParameter(logger, "logger");
                Cipher cipher = this.$cipherProvider.get();
                Key key = this.$keyProvider.get();
                return new DefaultOfflineRepository(getOfflineDatabase().offlineReaderDao(), getOfflineDatabase().offlineConnectionDao(), getOfflineDatabase().offlineLocationDao(), getOfflineDatabase().offlineApiRequestDao(), getOfflineDatabase().offlineAccountConfigDao(), new OfflineReaderCipher(cipher, key), new OfflineConnectionCipher(cipher, key), new OfflineLocationCipher(cipher, key), new OfflineApiRequestCipher(cipher, key), new OfflineAccountConfigCipher(cipher, key), this.$offlineRequestHelper, this.$offlineDispatcher, this.$offlineKeyValueStore, this.$clock, this.$discreteLogger, logger);
            }
        };
    }

    @Offline
    @Provides
    @Singleton
    public final OfflineRepository provideDefaultOfflineRepository(UnsupportedOfflineRepository unsupportedOfflineRepository, DefaultOfflineRepositoryFactory defaultOfflineRepositoryFactory, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(unsupportedOfflineRepository, "unsupportedOfflineRepository");
        Intrinsics.checkNotNullParameter(defaultOfflineRepositoryFactory, "defaultOfflineRepositoryFactory");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ProxyOfflineRepository(unsupportedOfflineRepository, defaultOfflineRepositoryFactory, loggerFactory.create(Reflection.getOrCreateKotlinClass(DefaultOfflineRepository.class)));
    }

    @Provides
    @Singleton
    @OfflineForwarding
    public final OfflineRepository provideForwardingOfflineRepository(UnsupportedOfflineRepository unsupportedOfflineRepository, DefaultOfflineRepositoryFactory defaultOfflineRepositoryFactory, OfflineForwardingTraceLogger forwardingLogger) {
        Intrinsics.checkNotNullParameter(unsupportedOfflineRepository, "unsupportedOfflineRepository");
        Intrinsics.checkNotNullParameter(defaultOfflineRepositoryFactory, "defaultOfflineRepositoryFactory");
        Intrinsics.checkNotNullParameter(forwardingLogger, "forwardingLogger");
        return new ProxyOfflineRepository(unsupportedOfflineRepository, defaultOfflineRepositoryFactory, forwardingLogger);
    }

    @Provides
    @Singleton
    public final DirectOfflineStatusDetailsRepository provideDirectOfflineStatsRepository(@IO CoroutineDispatcher ioDispatcher, @Offline OfflineRepository offlineRepository, @Offline Provider<Flow<NetworkStatus>> networkStatusFlowProvider) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(networkStatusFlowProvider, "networkStatusFlowProvider");
        return new DirectOfflineStatusDetailsRepository(CoroutineScopeKt.CoroutineScope(ioDispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), offlineRepository, networkStatusFlowProvider);
    }
}
