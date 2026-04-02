package com.stripe.jvmcore.logging.dagger;

import com.stripe.logwriter.LogWriter;
import io.ktor.http.ContentDisposition;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.message.TokenParser;

/* JADX INFO: compiled from: WireLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0019\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0096\u0001J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0016J$\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\u0019\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0096\u0001J\u0019\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0096\u0001J\u0019\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0096\u0001J%\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0001J\u0019\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0096\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/WireLogger;", "Lcom/stripe/logwriter/LogWriter;", "writer", ContentDisposition.Parameters.FileName, "", "(Lcom/stripe/logwriter/LogWriter;Ljava/lang/String;)V", "d", "", "tag", "message", "e", "throwable", "", "i", "v", "w", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WireLogger implements LogWriter {
    private final String filename;
    private final LogWriter writer;

    @Override // com.stripe.logwriter.LogWriter
    public void d(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        this.writer.d(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void i(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        this.writer.i(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void v(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        this.writer.v(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        this.writer.w(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(String tag, String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.writer.w(tag, message, throwable);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(String tag, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        this.writer.w(tag, throwable);
    }

    public WireLogger(LogWriter writer, String filename) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(filename, "filename");
        this.writer = writer;
        this.filename = filename;
    }

    @Override // com.stripe.logwriter.LogWriter
    public void e(String tag, String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.writer.e(tag, message + TokenParser.SP + this.filename, throwable);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void e(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        this.writer.e(tag, message + TokenParser.SP + this.filename);
    }
}
