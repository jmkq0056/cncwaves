package com.stripe.logwriter.dagger;

import com.stripe.logwriter.PlatformLogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class LogWriterModule_ProvidePlatformLogWriterFactory implements Factory<PlatformLogWriter> {
    @Override // javax.inject.Provider
    public PlatformLogWriter get() {
        return providePlatformLogWriter();
    }

    public static LogWriterModule_ProvidePlatformLogWriterFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static PlatformLogWriter providePlatformLogWriter() {
        return (PlatformLogWriter) Preconditions.checkNotNullFromProvides(LogWriterModule.INSTANCE.providePlatformLogWriter());
    }

    private static final class InstanceHolder {
        private static final LogWriterModule_ProvidePlatformLogWriterFactory INSTANCE = new LogWriterModule_ProvidePlatformLogWriterFactory();

        private InstanceHolder() {
        }
    }
}
