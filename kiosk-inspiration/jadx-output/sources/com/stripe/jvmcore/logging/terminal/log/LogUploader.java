package com.stripe.jvmcore.logging.terminal.log;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: LogUploader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&J\u0016\u0010\u0007\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;", "", "uploadEvents", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;", "events", "", "Lcom/stripe/jvmcore/logging/terminal/log/Event;", "uploadTraces", "spans", "Lcom/stripe/jvmcore/logging/terminal/log/Span;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LogUploader {
    LogUploadResult uploadEvents(List<Event> events);

    LogUploadResult uploadTraces(List<Span> spans);
}
