package com.stripe.logwriter;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultProxyLogWriter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J$\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J$\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0013"}, d2 = {"Lcom/stripe/logwriter/DefaultProxyLogWriter;", "Lcom/stripe/logwriter/ProxyLogWriter;", "writer", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/stripe/logwriter/LogWriter;)V", "getWriter", "()Lcom/stripe/logwriter/LogWriter;", "setWriter", "d", "", "tag", "", "message", "e", "throwable", "", "i", "v", "w", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultProxyLogWriter implements ProxyLogWriter {
    private LogWriter writer;

    public DefaultProxyLogWriter(LogWriter writer) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.writer = writer;
    }

    @Override // com.stripe.logwriter.ProxyLogWriter
    public LogWriter getWriter() {
        return this.writer;
    }

    @Override // com.stripe.logwriter.ProxyLogWriter
    public void setWriter(LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(logWriter, "<set-?>");
        this.writer = logWriter;
    }

    @Override // com.stripe.logwriter.LogWriter
    public void e(String tag, String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        getWriter().e(tag, message, throwable);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void e(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        getWriter().e(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(String tag, String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        getWriter().w(tag, message, throwable);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        getWriter().w(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(String tag, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        getWriter().w(tag, throwable);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void i(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        getWriter().i(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void d(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        getWriter().d(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void v(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        getWriter().v(tag, message);
    }
}
