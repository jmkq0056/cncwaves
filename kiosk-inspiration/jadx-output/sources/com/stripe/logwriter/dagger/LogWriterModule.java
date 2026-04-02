package com.stripe.logwriter.dagger;

import com.stripe.loggingmodels.LogLevel;
import com.stripe.logwriter.DefaultProxyLogWriter;
import com.stripe.logwriter.LogLevelAwareWriter;
import com.stripe.logwriter.LogWriter;
import com.stripe.logwriter.PlatformLogWriter;
import com.stripe.logwriter.ProxyLogWriter;
import com.stripe.logwriter.TerminalLogWriter;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogWriterModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\b\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bH\u0007¨\u0006\u000f"}, d2 = {"Lcom/stripe/logwriter/dagger/LogWriterModule;", "", "()V", "provideDefaultProxyLogWriter", "Lcom/stripe/logwriter/ProxyLogWriter;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "providePlatformLogWriter", "Lcom/stripe/logwriter/PlatformLogWriter;", "provideTerminalLogWriter", "Lcom/stripe/logwriter/TerminalLogWriter;", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "writer", "Bindings", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {Bindings.class})
public final class LogWriterModule {
    public static final LogWriterModule INSTANCE = new LogWriterModule();

    /* JADX INFO: compiled from: LogWriterModule.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/logwriter/dagger/LogWriterModule$Bindings;", "", "bindLogLevelAwareWriter", "Lcom/stripe/logwriter/LogLevelAwareWriter;", "terminalLogWriter", "Lcom/stripe/logwriter/TerminalLogWriter;", "bindLogLevelWriter", "Lcom/stripe/logwriter/LogWriter;", "logLevelAwareWriter", "wiring"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Module
    public interface Bindings {
        @Binds
        LogLevelAwareWriter bindLogLevelAwareWriter(TerminalLogWriter terminalLogWriter);

        @Binds
        LogWriter bindLogLevelWriter(LogLevelAwareWriter logLevelAwareWriter);
    }

    private LogWriterModule() {
    }

    @Provides
    @Singleton
    public final TerminalLogWriter provideTerminalLogWriter(LogLevel logLevel, PlatformLogWriter writer) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(writer, "writer");
        return new TerminalLogWriter(logLevel, writer);
    }

    @Provides
    @Singleton
    public final ProxyLogWriter provideDefaultProxyLogWriter(LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        return new DefaultProxyLogWriter(logWriter);
    }

    @Provides
    public final PlatformLogWriter providePlatformLogWriter() {
        return PlatformLogWriter.INSTANCE;
    }
}
