package com.stripe.jvmcore.logging.terminal.log;

import androidx.core.app.NotificationCompat;
import com.stripe.jvmcore.logging.terminal.log.LogUploadResult;
import com.stripe.logwriter.LogWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogFlusher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u0000 \u001d2\u00020\u0001:\u0003\u001d\u001e\u001fB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u0011H\u0002J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\rJ\u0016\u0010\u0017\u001a\u00020\u00142\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\u0011H\u0016J\u000e\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000fJ\u0016\u0010\u001b\u001a\u00020\u00142\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;", "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;", "logUploader", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "executor", "Ljava/util/concurrent/ScheduledExecutorService;", "delayMs", "", "(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;J)V", "pendingEvents", "", "Lcom/stripe/jvmcore/logging/terminal/log/Event;", "pendingSpans", "Lcom/stripe/jvmcore/logging/terminal/log/Span;", "clearPendingEvents", "", "clearPendingTraces", "stopExecutingJobs", "", "submitEvent", NotificationCompat.CATEGORY_EVENT, "submitEvents", "events", "submitTrace", "span", "submitTraces", "spans", "Companion", "ReportEventJob", "ReportTraceJob", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultLogFlusher implements LogFlusher {
    private static final long DEFAULT_FLUSH_DELAY_MS = 60000;
    private static final String TAG;
    private final ScheduledExecutorService executor;
    private final LogUploader logUploader;
    private final LogWriter logWriter;
    private final List<Event> pendingEvents;
    private final List<Span> pendingSpans;

    public DefaultLogFlusher(LogUploader logUploader, LogWriter logWriter, ScheduledExecutorService executor, long j) {
        Intrinsics.checkNotNullParameter(logUploader, "logUploader");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.logUploader = logUploader;
        this.logWriter = logWriter;
        this.executor = executor;
        this.pendingEvents = new ArrayList();
        this.pendingSpans = new ArrayList();
        Iterator it = CollectionsKt.listOf((Object[]) new Runnable[]{new ReportTraceJob(), new ReportEventJob()}).iterator();
        while (it.hasNext()) {
            this.executor.scheduleWithFixedDelay((Runnable) it.next(), j, j, TimeUnit.MILLISECONDS);
        }
    }

    public /* synthetic */ DefaultLogFlusher(LogUploader logUploader, LogWriter logWriter, ScheduledExecutorService scheduledExecutorService, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(logUploader, logWriter, scheduledExecutorService, (i & 8) != 0 ? 60000L : j);
    }

    public final synchronized void submitEvent(Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.pendingEvents.add(event);
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.LogFlusher
    public synchronized void submitEvents(List<Event> events) {
        Intrinsics.checkNotNullParameter(events, "events");
        this.pendingEvents.addAll(events);
    }

    public final synchronized void submitTrace(Span span) {
        Intrinsics.checkNotNullParameter(span, "span");
        this.pendingSpans.add(span);
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.LogFlusher
    public synchronized void submitTraces(List<Span> spans) {
        Intrinsics.checkNotNullParameter(spans, "spans");
        this.pendingSpans.addAll(spans);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized List<Event> clearPendingEvents() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.pendingEvents);
        this.pendingEvents.clear();
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized List<Span> clearPendingTraces() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.pendingSpans);
        this.pendingSpans.clear();
        return arrayList;
    }

    @Override // com.stripe.jvmcore.logging.terminal.log.LogFlusher
    public synchronized void stopExecutingJobs() {
        this.executor.shutdown();
    }

    /* JADX INFO: compiled from: LogFlusher.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportEventJob;", "Ljava/lang/Runnable;", "(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)V", "run", "", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class ReportEventJob implements Runnable {
        public ReportEventJob() {
        }

        @Override // java.lang.Runnable
        public void run() {
            List<Event> listClearPendingEvents = DefaultLogFlusher.this.clearPendingEvents();
            if (listClearPendingEvents.isEmpty()) {
                return;
            }
            DefaultLogFlusher.this.logWriter.d(DefaultLogFlusher.TAG, "Reporting " + listClearPendingEvents.size() + " events");
            LogUploadResult logUploadResultUploadEvents = DefaultLogFlusher.this.logUploader.uploadEvents(listClearPendingEvents);
            if (logUploadResultUploadEvents instanceof LogUploadResult.Succeeded) {
                DefaultLogFlusher.this.logWriter.d(DefaultLogFlusher.TAG, "Sent " + listClearPendingEvents.size() + " events");
                return;
            }
            if (logUploadResultUploadEvents instanceof LogUploadResult.Failed) {
                LogUploadResult.Failed failed = (LogUploadResult.Failed) logUploadResultUploadEvents;
                DefaultLogFlusher.this.logWriter.e(DefaultLogFlusher.TAG, "Failed sending " + listClearPendingEvents.size() + " events " + (failed.getShouldRetry() ? "will" : "won't retry"));
                if (failed.getShouldRetry()) {
                    DefaultLogFlusher.this.submitEvents(listClearPendingEvents);
                }
            }
        }
    }

    /* JADX INFO: compiled from: LogFlusher.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;", "Ljava/lang/Runnable;", "(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)V", "run", "", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public final class ReportTraceJob implements Runnable {
        public ReportTraceJob() {
        }

        @Override // java.lang.Runnable
        public void run() {
            List<Span> listClearPendingTraces = DefaultLogFlusher.this.clearPendingTraces();
            if (listClearPendingTraces.isEmpty()) {
                return;
            }
            DefaultLogFlusher.this.logWriter.d(DefaultLogFlusher.TAG, "Reporting " + listClearPendingTraces.size() + " traces");
            LogUploadResult logUploadResultUploadTraces = DefaultLogFlusher.this.logUploader.uploadTraces(listClearPendingTraces);
            if (logUploadResultUploadTraces instanceof LogUploadResult.Succeeded) {
                DefaultLogFlusher.this.logWriter.d(DefaultLogFlusher.TAG, "Sent " + listClearPendingTraces.size() + " traces");
                return;
            }
            if (logUploadResultUploadTraces instanceof LogUploadResult.Failed) {
                LogUploadResult.Failed failed = (LogUploadResult.Failed) logUploadResultUploadTraces;
                DefaultLogFlusher.this.logWriter.e(DefaultLogFlusher.TAG, "Failed sending " + listClearPendingTraces.size() + " traces " + (failed.getShouldRetry() ? "will" : "won't retry"));
                if (failed.getShouldRetry()) {
                    DefaultLogFlusher.this.submitTraces(listClearPendingTraces);
                }
            }
        }
    }

    static {
        Intrinsics.checkNotNullExpressionValue("LogFlusher", "getSimpleName(...)");
        TAG = "LogFlusher";
    }
}
