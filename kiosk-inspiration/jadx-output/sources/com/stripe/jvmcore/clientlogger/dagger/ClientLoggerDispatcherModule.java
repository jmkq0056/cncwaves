package com.stripe.jvmcore.clientlogger.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector;
import com.stripe.jvmcore.batchdispatcher.collectors.QueueFileProtoSerializer;
import com.stripe.jvmcore.clientlogger.ClientLoggerEventDispatcher;
import com.stripe.jvmcore.clientlogger.ClientLoggerObservabilityDataDispatcher;
import com.stripe.jvmcore.clientlogger.ClientLoggerSchemaEventDispatcher;
import com.stripe.jvmcore.clientlogger.ClientLoggerTraceDispatcher;
import com.stripe.jvmcore.dagger.ClientLogger;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.IsNetworkAvailable;
import com.stripe.jvmcore.dagger.LazyExtKt;
import com.stripe.loggingmodels.LoggerExceptionListener;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.LogEvent;
import com.stripe.proto.api.gator.ProxyEventPb;
import com.stripe.proto.api.gator.ProxySpanPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import java.io.File;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: compiled from: ClientLoggerDispatcherModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001BI\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ@\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00102\u000e\b\u0001\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00122\u000e\b\u0001\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00142\b\b\u0001\u0010\u0015\u001a\u00020\u0016H\u0007J.\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u000f\u001a\u00020\u00102\u000e\b\u0001\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J>\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00142\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u00192\b\b\u0001\u0010!\u001a\u00020\"2\u000e\b\u0001\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J6\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00142\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u00192\b\b\u0001\u0010!\u001a\u00020\"2\u000e\b\u0001\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$H\u0007J8\u0010'\u001a\b\u0012\u0004\u0012\u00020(0\u00142\u0006\u0010\u001f\u001a\u00020 2\b\b\u0001\u0010!\u001a\u00020\"2\u000e\b\u0001\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J>\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u00142\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u00192\b\b\u0001\u0010!\u001a\u00020\"2\u000e\b\u0001\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006+"}, d2 = {"Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;", "", "eventsFile", "", "dispatchIntervalMillis", "", "overrideMaxBatchBytes", "overrideMaxEntryBytes", "overrideMaxFileBytes", "overridePruneFileBytes", "(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V", "Ljava/lang/Long;", "provideBatchDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "collector", "Lcom/stripe/jvmcore/batchdispatcher/Collector;", "dispatcher", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "scheduler", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "provideClientLoggerObservabilityDataCollector", "filesDir", "Ldagger/Lazy;", "Ljava/io/File;", "loggerExceptionListener", "Lcom/stripe/loggingmodels/LoggerExceptionListener;", "providesClientLoggerEventDispatcher", "Lcom/stripe/proto/api/gator/ProxyEventPb;", "api", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "isNetworkAvailable", "Ljavax/inject/Provider;", "", "providesClientLoggerObservabilityDataDispatcher", "providesClientLoggerSchemaEventDispatcher", "Lcom/stripe/proto/api/gator/LogEvent;", "providesClientLoggerTraceDispatcher", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "clientlogger"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ClientLoggerDispatcherModule {
    private final long dispatchIntervalMillis;
    private final String eventsFile;
    private final Long overrideMaxBatchBytes;
    private final Long overrideMaxEntryBytes;
    private final Long overrideMaxFileBytes;
    private final Long overridePruneFileBytes;

    public ClientLoggerDispatcherModule() {
        this(null, 0L, null, null, null, null, 63, null);
    }

    public ClientLoggerDispatcherModule(String eventsFile, long j, Long l, Long l2, Long l3, Long l4) {
        Intrinsics.checkNotNullParameter(eventsFile, "eventsFile");
        this.eventsFile = eventsFile;
        this.dispatchIntervalMillis = j;
        this.overrideMaxBatchBytes = l;
        this.overrideMaxEntryBytes = l2;
        this.overrideMaxFileBytes = l3;
        this.overridePruneFileBytes = l4;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ClientLoggerDispatcherModule(String str, long j, Long l, Long l2, Long l3, Long l4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Long l5;
        Long l6;
        Long l7;
        Long l8;
        str = (i & 1) != 0 ? "observabilitydata_wire" : str;
        j = (i & 2) != 0 ? ClientLoggerDispatcherModuleKt.DEFAULT_DISPATCH_INTERVAL_MILLIS : j;
        l = (i & 4) != 0 ? null : l;
        l2 = (i & 8) != 0 ? null : l2;
        l3 = (i & 16) != 0 ? null : l3;
        if ((i & 32) != 0) {
            l5 = null;
            l8 = l2;
            l6 = l3;
            l7 = l;
        } else {
            l5 = l4;
            l6 = l3;
            l7 = l;
            l8 = l2;
        }
        this(str, j, l7, l8, l6, l5);
    }

    @Provides
    @Singleton
    @ClientLogger
    public final Dispatcher<LogEvent> providesClientLoggerSchemaEventDispatcher(ClientLoggerApi api, @IO CoroutineDispatcher io2, @IsNetworkAvailable Provider<Boolean> isNetworkAvailable, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(isNetworkAvailable, "isNetworkAvailable");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new ClientLoggerSchemaEventDispatcher(io2, api, logWriter, isNetworkAvailable);
    }

    @Provides
    @Singleton
    @ClientLogger
    public final Dispatcher<ProxyEventPb> providesClientLoggerEventDispatcher(Lazy<ClientLoggerApi> api, @IO CoroutineDispatcher io2, @IsNetworkAvailable Provider<Boolean> isNetworkAvailable, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(isNetworkAvailable, "isNetworkAvailable");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new ClientLoggerEventDispatcher(io2, api, logWriter, isNetworkAvailable);
    }

    @Provides
    @Singleton
    @ClientLogger
    public final Dispatcher<ProxySpanPb> providesClientLoggerTraceDispatcher(Lazy<ClientLoggerApi> api, @IO CoroutineDispatcher io2, @IsNetworkAvailable Provider<Boolean> isNetworkAvailable, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(isNetworkAvailable, "isNetworkAvailable");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new ClientLoggerTraceDispatcher(io2, api, logWriter, isNetworkAvailable);
    }

    @Provides
    @Singleton
    @ClientLogger
    public final Dispatcher<ObservabilityData> providesClientLoggerObservabilityDataDispatcher(Lazy<ClientLoggerApi> api, @IO CoroutineDispatcher io2, @IsNetworkAvailable Provider<Boolean> isNetworkAvailable) {
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(isNetworkAvailable, "isNetworkAvailable");
        return new ClientLoggerObservabilityDataDispatcher(io2, api, isNetworkAvailable);
    }

    @Provides
    @Singleton
    @ClientLogger
    public final Collector<ObservabilityData> provideClientLoggerObservabilityDataCollector(LogWriter logWriter, @ForApplication Lazy<File> filesDir, LoggerExceptionListener loggerExceptionListener) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        Intrinsics.checkNotNullParameter(loggerExceptionListener, "loggerExceptionListener");
        return new QueueFileCollector(new QueueFileProtoSerializer(ObservabilityData.ADAPTER, new ObservabilityData(null, null, null, null, null, null, null, null, 255, null), new WireLogger(logWriter, this.eventsFile)), new QueueFileCollector.Configuration(this.overrideMaxBatchBytes, this.overrideMaxEntryBytes, this.overrideMaxFileBytes, this.overridePruneFileBytes), LazyExtKt.lazilyMap(filesDir, new Function1<File, File>() { // from class: com.stripe.jvmcore.clientlogger.dagger.ClientLoggerDispatcherModule.provideClientLoggerObservabilityDataCollector.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final File invoke(File it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new File(it, ClientLoggerDispatcherModule.this.eventsFile);
            }
        }), loggerExceptionListener, logWriter);
    }

    @Provides
    @Singleton
    public final BatchDispatcher<ObservabilityData> provideBatchDispatcher(LogWriter logWriter, @ClientLogger Collector<ObservabilityData> collector, @ClientLogger Dispatcher<ObservabilityData> dispatcher, @ClientLogger Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(collector, "collector");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        return new BatchDispatcher<>(collector, dispatcher, scheduler, logWriter);
    }
}
