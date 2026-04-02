package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.DeviceRoleLogUploader;
import com.stripe.jvmcore.logging.terminal.log.LogUploader;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideLogUploaderFactory implements Factory<LogUploader> {
    private final Provider<DeviceRoleLogUploader> uploaderProvider;

    public LogModule_ProvideLogUploaderFactory(Provider<DeviceRoleLogUploader> provider) {
        this.uploaderProvider = provider;
    }

    @Override // javax.inject.Provider
    public LogUploader get() {
        return provideLogUploader(this.uploaderProvider.get());
    }

    public static LogModule_ProvideLogUploaderFactory create(Provider<DeviceRoleLogUploader> provider) {
        return new LogModule_ProvideLogUploaderFactory(provider);
    }

    public static LogUploader provideLogUploader(DeviceRoleLogUploader deviceRoleLogUploader) {
        return (LogUploader) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideLogUploader(deviceRoleLogUploader));
    }
}
