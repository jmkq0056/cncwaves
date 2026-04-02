package com.stripe.jvmcore.offlinemode.dagger;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.offlinemode.callable.OfflineStatusChangeListener;
import com.stripe.jvmcore.offlinemode.readerevent.DefaultReaderEventFetcher;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler;
import com.stripe.jvmcore.offlinemode.repositories.DefaultOfflineStatusRepository;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsListener;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsRepository;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusRepository;
import com.stripe.jvmcore.offlinemode.repositories.RemoteOfflineStatusDetailsRepository;
import com.stripe.jvmcore.offlinemode.storage.DefaultOfflineKeyValueStore;
import com.stripe.jvmcore.offlinemode.storage.OfflineKeyValueStore;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: JvmOfflineModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0007J\b\u0010\r\u001a\u00020\u000eH\u0007J\b\u0010\u000f\u001a\u00020\u0006H\u0007J*\u0010\u0010\u001a\u00020\u00112\b\b\u0001\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007¨\u0006\u0019"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;", "", "()V", "provideCompositeOfflineStatsRepository", "Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;", "remoteOfflineStatisticsRepository", "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;", "directOfflineStatusDetailsRepository", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;", "offlineListener", "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "provideReaderEventFetcher", "Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;", "provideRemoteOfflineStatisticsRepository", "providesUnAckedEventsHandler", "Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;", "fetcher", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "Bindings", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class JvmOfflineModule {

    /* JADX INFO: compiled from: JvmOfflineModule.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH'J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH'J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H'J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0016À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule$Bindings;", "", "bindCompositeOfflineStatsRepo", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;", "defaultOfflineStatusRepository", "Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;", "bindOfflineKeyValueStore", "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;", "defaultOfflineKeyValueStore", "Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;", "bindOfflineStatsListener", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;", "remoteOfflineStatusDetailsRepository", "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;", "bindReaderEventFetcher", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;", "fetcher", "Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;", "bindUnAckedEventsHandler", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;", "handler", "Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        OfflineStatusRepository bindCompositeOfflineStatsRepo(DefaultOfflineStatusRepository defaultOfflineStatusRepository);

        @Binds
        OfflineKeyValueStore bindOfflineKeyValueStore(DefaultOfflineKeyValueStore defaultOfflineKeyValueStore);

        @Binds
        OfflineStatusDetailsListener bindOfflineStatsListener(RemoteOfflineStatusDetailsRepository remoteOfflineStatusDetailsRepository);

        @Binds
        ReaderEventContracts.Fetcher bindReaderEventFetcher(DefaultReaderEventFetcher fetcher);

        @Binds
        ReaderEventContracts.EventsCountListener bindUnAckedEventsHandler(UnacknowledgedReaderEventsHandler handler);
    }

    @Provides
    @Singleton
    public final RemoteOfflineStatusDetailsRepository provideRemoteOfflineStatisticsRepository() {
        return new RemoteOfflineStatusDetailsRepository();
    }

    @Provides
    public final DefaultOfflineStatusRepository provideCompositeOfflineStatsRepository(RemoteOfflineStatusDetailsRepository remoteOfflineStatisticsRepository, OfflineStatusDetailsRepository directOfflineStatusDetailsRepository, OfflineStatusChangeListener offlineListener, @IO CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(remoteOfflineStatisticsRepository, "remoteOfflineStatisticsRepository");
        Intrinsics.checkNotNullParameter(directOfflineStatusDetailsRepository, "directOfflineStatusDetailsRepository");
        Intrinsics.checkNotNullParameter(offlineListener, "offlineListener");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return new DefaultOfflineStatusRepository(remoteOfflineStatisticsRepository, directOfflineStatusDetailsRepository, CoroutineScopeKt.CoroutineScope(dispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), offlineListener);
    }

    @Provides
    public final DefaultReaderEventFetcher provideReaderEventFetcher() {
        return new DefaultReaderEventFetcher();
    }

    @Provides
    @Singleton
    public final UnacknowledgedReaderEventsHandler providesUnAckedEventsHandler(@IO CoroutineDispatcher dispatcher, ReaderEventContracts.Fetcher fetcher, ReaderEventContracts.Listener listener, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(fetcher, "fetcher");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new UnacknowledgedReaderEventsHandler(dispatcher, fetcher, listener, loggerFactory.create(Reflection.getOrCreateKotlinClass(UnacknowledgedReaderEventsHandler.class)));
    }
}
