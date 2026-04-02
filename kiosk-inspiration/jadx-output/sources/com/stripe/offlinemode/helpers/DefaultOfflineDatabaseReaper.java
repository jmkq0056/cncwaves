package com.stripe.offlinemode.helpers;

import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: DefaultOfflineDatabaseReaper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u0002`\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u0002`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/stripe/offlinemode/helpers/DefaultOfflineDatabaseReaper;", "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;", "computationDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "ioDispatcher", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "coroutineExceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "reaperTask", "Lkotlinx/coroutines/Job;", "getReaperTask$annotations", "()V", "start", "", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineDatabaseReaper implements OfflineDatabaseReaper {
    private static final long ONE_HOUR_MS = 3600000;
    private static final long ONE_MINUTE_MS = 60000;
    private static final long ONE_SECOND_MS = 1000;
    public static final long REAPER_TASK_INTERVAL_MS = 86400000;
    private final CoroutineDispatcher computationDispatcher;
    private final CoroutineExceptionHandler coroutineExceptionHandler;
    private final CoroutineDispatcher ioDispatcher;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final OfflineRepository offlineRepository;
    private final Job reaperTask;

    private static /* synthetic */ void getReaperTask$annotations() {
    }

    public DefaultOfflineDatabaseReaper(CoroutineDispatcher computationDispatcher, CoroutineDispatcher ioDispatcher, @Offline OfflineRepository offlineRepository, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(computationDispatcher, "computationDispatcher");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.computationDispatcher = computationDispatcher;
        this.ioDispatcher = ioDispatcher;
        this.offlineRepository = offlineRepository;
        this.logger = logger;
        DefaultOfflineDatabaseReaper$special$$inlined$CoroutineExceptionHandler$1 defaultOfflineDatabaseReaper$special$$inlined$CoroutineExceptionHandler$1 = new DefaultOfflineDatabaseReaper$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
        this.coroutineExceptionHandler = defaultOfflineDatabaseReaper$special$$inlined$CoroutineExceptionHandler$1;
        this.reaperTask = BuildersKt.launch(CoroutineScopeKt.CoroutineScope(computationDispatcher), defaultOfflineDatabaseReaper$special$$inlined$CoroutineExceptionHandler$1, CoroutineStart.LAZY, new DefaultOfflineDatabaseReaper$reaperTask$1(this, null));
    }

    @Override // com.stripe.offlinemode.helpers.OfflineDatabaseReaper
    public void start() {
        this.reaperTask.start();
    }
}
