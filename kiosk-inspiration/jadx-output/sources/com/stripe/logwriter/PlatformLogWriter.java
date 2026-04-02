package com.stripe.logwriter;

import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlatformLogWriter.android.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J$\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J$\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000e"}, d2 = {"Lcom/stripe/logwriter/PlatformLogWriter;", "Lcom/stripe/logwriter/LogWriter;", "()V", "d", "", "tag", "", "message", "e", "throwable", "", "i", "v", "w", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PlatformLogWriter implements LogWriter {
    public static final PlatformLogWriter INSTANCE = new PlatformLogWriter();

    private PlatformLogWriter() {
    }

    @Override // com.stripe.logwriter.LogWriter
    public void e(String tag, String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Log.e(tag, message, throwable);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void e(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.e(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(String tag, String message, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Log.w(tag, message, throwable);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.w(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void w(String tag, Throwable throwable) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        Log.w(tag, throwable);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void i(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.i(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void d(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.d(tag, message);
    }

    @Override // com.stripe.logwriter.LogWriter
    public void v(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.v(tag, message);
    }
}
