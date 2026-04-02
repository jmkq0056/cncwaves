package com.stripe.jvmcore.logging.terminal.dagger;

import com.stripe.loggingmodels.LogLevel;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogLevelModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;", "", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "(Lcom/stripe/loggingmodels/LogLevel;)V", "provideLogLevel", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class LogLevelModule {
    private final LogLevel logLevel;

    public LogLevelModule(LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.logLevel = logLevel;
    }

    @Provides
    /* JADX INFO: renamed from: provideLogLevel, reason: from getter */
    public final LogLevel getLogLevel() {
        return this.logLevel;
    }
}
