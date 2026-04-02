package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public final class ContextModule_ProvideFilesDirectoryFactory implements Factory<File> {
    private final ContextModule module;

    public ContextModule_ProvideFilesDirectoryFactory(ContextModule contextModule) {
        this.module = contextModule;
    }

    @Override // javax.inject.Provider
    public File get() {
        return provideFilesDirectory(this.module);
    }

    public static ContextModule_ProvideFilesDirectoryFactory create(ContextModule contextModule) {
        return new ContextModule_ProvideFilesDirectoryFactory(contextModule);
    }

    public static File provideFilesDirectory(ContextModule contextModule) {
        return (File) Preconditions.checkNotNullFromProvides(contextModule.provideFilesDirectory());
    }
}
