package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.logging.terminal.log.DeviceRoleLogUploader;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import com.stripe.terminal.appinfo.DeviceUuidProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideDeviceRoleLogUploader$sdkmanager_publishFactory implements Factory<DeviceRoleLogUploader> {
    private final Provider<ClientLoggerApi> clientLoggerApiProvider;
    private final Provider<DeviceUuidProvider> deviceUuidProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<String> roleProvider;

    public LogModule_ProvideDeviceRoleLogUploader$sdkmanager_publishFactory(Provider<DeviceUuidProvider> provider, Provider<String> provider2, Provider<ClientLoggerApi> provider3, Provider<LoggerFactory> provider4) {
        this.deviceUuidProvider = provider;
        this.roleProvider = provider2;
        this.clientLoggerApiProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public DeviceRoleLogUploader get() {
        return provideDeviceRoleLogUploader$sdkmanager_publish(this.deviceUuidProvider.get(), this.roleProvider.get(), this.clientLoggerApiProvider.get(), this.loggerFactoryProvider.get());
    }

    public static LogModule_ProvideDeviceRoleLogUploader$sdkmanager_publishFactory create(Provider<DeviceUuidProvider> provider, Provider<String> provider2, Provider<ClientLoggerApi> provider3, Provider<LoggerFactory> provider4) {
        return new LogModule_ProvideDeviceRoleLogUploader$sdkmanager_publishFactory(provider, provider2, provider3, provider4);
    }

    public static DeviceRoleLogUploader provideDeviceRoleLogUploader$sdkmanager_publish(DeviceUuidProvider deviceUuidProvider, String str, ClientLoggerApi clientLoggerApi, LoggerFactory loggerFactory) {
        return (DeviceRoleLogUploader) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideDeviceRoleLogUploader$sdkmanager_publish(deviceUuidProvider, str, clientLoggerApi, loggerFactory));
    }
}
