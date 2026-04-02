package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector;
import com.stripe.jvmcore.batchdispatcher.collectors.QueueFileProtoSerializer;
import com.stripe.jvmcore.dagger.ClientLogger;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.dagger.Gator;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.LazyExtKt;
import com.stripe.jvmcore.logging.CompositeDispatcher;
import com.stripe.jvmcore.logging.EventLogger;
import com.stripe.jvmcore.logging.ObservabilityFeatureFlags;
import com.stripe.jvmcore.proto.ProtoFlattener;
import com.stripe.loggingmodels.LoggerExceptionListener;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.LogEvent;
import com.stripe.time.Clock;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.inject.Qualifier;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: EventLoggerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001)BI\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\nJV\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u000e\b\u0001\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00102\u000e\b\u0001\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00122\u000e\b\u0001\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J.\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00102\u0006\u0010\u0018\u001a\u00020\u00192\u000e\b\u0001\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007JH\u0010 \u001a\u00020!2\u000e\b\u0001\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\b\u0001\u0010'\u001a\u00020(2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006*"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;", "", "eventsFile", "", "legacyEventsFile", "overrideMaxBatchBytes", "", "overrideMaxEntryBytes", "overrideMaxFileBytes", "overridePruneFileBytes", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V", "Ljava/lang/Long;", "provideBatchDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "Lcom/stripe/proto/api/gator/LogEvent;", "collector", "Lcom/stripe/jvmcore/batchdispatcher/Collector;", "gator", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "clientLogger", "scheduler", "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;", "observabilityFeatureFlags", "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "provideCollector", "filesDir", "Ldagger/Lazy;", "Ljava/io/File;", "loggerExceptionListener", "Lcom/stripe/loggingmodels/LoggerExceptionListener;", "provideEventLogger", "Lcom/stripe/jvmcore/logging/EventLogger;", "batchDispatcher", "clock", "Lcom/stripe/time/Clock;", "protoFlattener", "Lcom/stripe/jvmcore/proto/ProtoFlattener;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "WireEventLogger", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class EventLoggerModule {
    private final String eventsFile;
    private final String legacyEventsFile;
    private final Long overrideMaxBatchBytes;
    private final Long overrideMaxEntryBytes;
    private final Long overrideMaxFileBytes;
    private final Long overridePruneFileBytes;

    /* JADX INFO: compiled from: EventLoggerModule.kt */
    @Qualifier
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0083\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule$WireEventLogger;", "", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.RUNTIME)
    private @interface WireEventLogger {
    }

    public EventLoggerModule() {
        this(null, null, null, null, null, null, 63, null);
    }

    public EventLoggerModule(String eventsFile, String legacyEventsFile, Long l, Long l2, Long l3, Long l4) {
        Intrinsics.checkNotNullParameter(eventsFile, "eventsFile");
        Intrinsics.checkNotNullParameter(legacyEventsFile, "legacyEventsFile");
        this.eventsFile = eventsFile;
        this.legacyEventsFile = legacyEventsFile;
        this.overrideMaxBatchBytes = l;
        this.overrideMaxEntryBytes = l2;
        this.overrideMaxFileBytes = l3;
        this.overridePruneFileBytes = l4;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        */
    public /* synthetic */ EventLoggerModule(java.lang.String r2, java.lang.String r3, java.lang.Long r4, java.lang.Long r5, java.lang.Long r6, java.lang.Long r7, int r8, kotlin.jvm.internal.DefaultConstructorMarker r9) {
        /*
            r1 = this;
            r9 = r8 & 1
            if (r9 == 0) goto L6
            java.lang.String r2 = "events_json_wire"
        L6:
            r9 = r8 & 2
            if (r9 == 0) goto Lc
            java.lang.String r3 = "events_wire"
        Lc:
            r9 = r8 & 4
            r0 = 0
            if (r9 == 0) goto L12
            r4 = r0
        L12:
            r9 = r8 & 8
            if (r9 == 0) goto L17
            r5 = r0
        L17:
            r9 = r8 & 16
            if (r9 == 0) goto L1c
            r6 = r0
        L1c:
            r8 = r8 & 32
            if (r8 == 0) goto L28
            r9 = r0
            r7 = r5
            r8 = r6
            r5 = r3
            r6 = r4
            r3 = r1
            r4 = r2
            goto L2f
        L28:
            r9 = r7
            r8 = r6
            r6 = r4
            r7 = r5
            r4 = r2
            r5 = r3
            r3 = r1
        L2f:
            r3.<init>(r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.jvmcore.logging.dagger.EventLoggerModule.<init>(java.lang.String, java.lang.String, java.lang.Long, java.lang.Long, java.lang.Long, java.lang.Long, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Provides
    @Singleton
    public final BatchDispatcher<LogEvent> provideBatchDispatcher(@WireEventLogger Collector<LogEvent> collector, @Gator Dispatcher<LogEvent> gator, @ClientLogger Dispatcher<LogEvent> clientLogger, Scheduler scheduler, ObservabilityFeatureFlags observabilityFeatureFlags, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(collector, "collector");
        Intrinsics.checkNotNullParameter(gator, "gator");
        Intrinsics.checkNotNullParameter(clientLogger, "clientLogger");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(observabilityFeatureFlags, "observabilityFeatureFlags");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new BatchDispatcher<>(collector, new CompositeDispatcher(clientLogger, gator, observabilityFeatureFlags), scheduler, logWriter);
    }

    @Provides
    @Singleton
    @WireEventLogger
    public final Collector<LogEvent> provideCollector(LogWriter logWriter, @ForApplication Lazy<File> filesDir, LoggerExceptionListener loggerExceptionListener) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        Intrinsics.checkNotNullParameter(loggerExceptionListener, "loggerExceptionListener");
        return new QueueFileCollector(new QueueFileProtoSerializer(LogEvent.ADAPTER, new LogEvent(null, null, null, 7, null), new WireLogger(logWriter, this.eventsFile)), new QueueFileCollector.Configuration(this.overrideMaxBatchBytes, this.overrideMaxEntryBytes, this.overrideMaxFileBytes, this.overridePruneFileBytes), LazyExtKt.lazilyMap(filesDir, new Function1<File, File>() { // from class: com.stripe.jvmcore.logging.dagger.EventLoggerModule.provideCollector.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final File invoke(File it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new File(it, EventLoggerModule.this.eventsFile);
            }
        }), loggerExceptionListener, logWriter);
    }

    @Provides
    @Singleton
    public final EventLogger provideEventLogger(@ForApplication Lazy<File> filesDir, BatchDispatcher<LogEvent> batchDispatcher, Clock clock, ProtoFlattener protoFlattener, @IO CoroutineDispatcher io2, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        Intrinsics.checkNotNullParameter(batchDispatcher, "batchDispatcher");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(protoFlattener, "protoFlattener");
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Lazy lazyLazilyMap = LazyExtKt.lazilyMap(filesDir, new Function1<File, File>() { // from class: com.stripe.jvmcore.logging.dagger.EventLoggerModule.provideEventLogger.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final File invoke(File it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new File(it, EventLoggerModule.this.legacyEventsFile);
            }
        });
        Long l = this.overrideMaxEntryBytes;
        return new EventLogger(batchDispatcher, clock, protoFlattener, lazyLazilyMap, l != null ? l.longValue() : QueueFileCollector.Configuration.DEFAULT_MAX_ENTRY_BYTES, CoroutineScopeKt.CoroutineScope(io2), logWriter);
    }
}
