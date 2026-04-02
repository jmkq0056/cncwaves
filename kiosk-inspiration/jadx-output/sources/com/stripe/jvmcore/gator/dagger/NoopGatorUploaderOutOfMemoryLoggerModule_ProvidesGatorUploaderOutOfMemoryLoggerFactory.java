package com.stripe.jvmcore.gator.dagger;

import com.stripe.jvmcore.gator.GatorUploaderOutOfMemoryLogger;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory implements Factory<GatorUploaderOutOfMemoryLogger> {
    private final NoopGatorUploaderOutOfMemoryLoggerModule module;

    public NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory(NoopGatorUploaderOutOfMemoryLoggerModule noopGatorUploaderOutOfMemoryLoggerModule) {
        this.module = noopGatorUploaderOutOfMemoryLoggerModule;
    }

    @Override // javax.inject.Provider
    public GatorUploaderOutOfMemoryLogger get() {
        return providesGatorUploaderOutOfMemoryLogger(this.module);
    }

    public static NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory create(NoopGatorUploaderOutOfMemoryLoggerModule noopGatorUploaderOutOfMemoryLoggerModule) {
        return new NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory(noopGatorUploaderOutOfMemoryLoggerModule);
    }

    public static GatorUploaderOutOfMemoryLogger providesGatorUploaderOutOfMemoryLogger(NoopGatorUploaderOutOfMemoryLoggerModule noopGatorUploaderOutOfMemoryLoggerModule) {
        return (GatorUploaderOutOfMemoryLogger) Preconditions.checkNotNullFromProvides(noopGatorUploaderOutOfMemoryLoggerModule.providesGatorUploaderOutOfMemoryLogger());
    }
}
