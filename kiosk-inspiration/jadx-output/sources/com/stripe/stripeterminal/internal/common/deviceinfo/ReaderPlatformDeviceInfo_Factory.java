package com.stripe.stripeterminal.internal.common.deviceinfo;

import com.stripe.core.device.BuildValues;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ReaderPlatformDeviceInfo_Factory implements Factory<ReaderPlatformDeviceInfo> {
    private final Provider<BuildValues> buildValuesProvider;
    private final Provider<TerminalStatusManager> statusManagerProvider;

    public ReaderPlatformDeviceInfo_Factory(Provider<TerminalStatusManager> provider, Provider<BuildValues> provider2) {
        this.statusManagerProvider = provider;
        this.buildValuesProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ReaderPlatformDeviceInfo get() {
        return newInstance(this.statusManagerProvider.get(), this.buildValuesProvider.get());
    }

    public static ReaderPlatformDeviceInfo_Factory create(Provider<TerminalStatusManager> provider, Provider<BuildValues> provider2) {
        return new ReaderPlatformDeviceInfo_Factory(provider, provider2);
    }

    public static ReaderPlatformDeviceInfo newInstance(TerminalStatusManager terminalStatusManager, BuildValues buildValues) {
        return new ReaderPlatformDeviceInfo(terminalStatusManager, buildValues);
    }
}
