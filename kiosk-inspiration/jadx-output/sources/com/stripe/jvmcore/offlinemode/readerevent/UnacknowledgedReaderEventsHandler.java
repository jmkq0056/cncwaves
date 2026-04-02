package com.stripe.jvmcore.offlinemode.readerevent;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: UnacknowledgedReaderEventsHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B7\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f¢\u0006\u0002\u0010\rB5\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f¢\u0006\u0002\u0010\u0011J \u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@¢\u0006\u0002\u0010\u001dR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "fetcher", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "scope", "Lkotlinx/coroutines/CoroutineScope;", "readerEventsListener", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "errorHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "job", "Lkotlinx/coroutines/Job;", "lock", "Ljava/util/concurrent/locks/Lock;", "notifyUnAckedEvents", "api", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;", "count", "", "(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UnacknowledgedReaderEventsHandler implements ReaderEventContracts.EventsCountListener {
    private final CoroutineExceptionHandler errorHandler;
    private final ReaderEventContracts.Fetcher fetcher;
    private Job job;
    private final Lock lock;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final ReaderEventContracts.Listener readerEventsListener;
    private final CoroutineScope scope;

    public UnacknowledgedReaderEventsHandler(CoroutineScope scope, ReaderEventContracts.Fetcher fetcher, ReaderEventContracts.Listener readerEventsListener, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(fetcher, "fetcher");
        Intrinsics.checkNotNullParameter(readerEventsListener, "readerEventsListener");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.scope = scope;
        this.fetcher = fetcher;
        this.readerEventsListener = readerEventsListener;
        this.logger = logger;
        this.lock = new ReentrantLock();
        this.errorHandler = new UnacknowledgedReaderEventsHandler$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UnacknowledgedReaderEventsHandler(CoroutineDispatcher dispatcher, ReaderEventContracts.Fetcher fetcher, ReaderEventContracts.Listener listener, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        this(CoroutineScopeKt.CoroutineScope(dispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), fetcher, listener, logger);
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(fetcher, "fetcher");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(logger, "logger");
    }

    @Override // com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts.EventsCountListener
    public Object notifyUnAckedEvents(ReaderEventContracts.Api api, int i, Continuation<? super Job> continuation) {
        Lock lock = this.lock;
        lock.lock();
        if (i > 0) {
            try {
                Job job = this.job;
                if (job == null || !job.isActive()) {
                    this.job = BuildersKt__Builders_commonKt.launch$default(this.scope, this.errorHandler, null, new UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1(this, api, null), 2, null);
                }
            } finally {
                lock.unlock();
            }
        }
        return this.job;
    }
}
