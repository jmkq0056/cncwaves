package com.stripe.stripeterminal.internal.common.dagger;

import android.content.Context;
import com.stripe.core.device.BuildValues;
import com.stripe.stripeterminal.internal.common.appinfo.AppInfoParser;
import com.stripe.stripeterminal.internal.common.appinfo.SdkApplicationInformationFactory;
import com.stripe.terminal.appinfo.DeviceUuidProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory implements Factory<SdkApplicationInformationFactory> {
    private final Provider<AppInfoParser> appInfoParserProvider;
    private final Provider<BuildValues> buildValuesProvider;
    private final Provider<Context> contextProvider;
    private final Provider<DeviceUuidProvider> deviceUuidProvider;
    private final AppInfoModule module;

    public AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory(AppInfoModule appInfoModule, Provider<Context> provider, Provider<DeviceUuidProvider> provider2, Provider<AppInfoParser> provider3, Provider<BuildValues> provider4) {
        this.module = appInfoModule;
        this.contextProvider = provider;
        this.deviceUuidProvider = provider2;
        this.appInfoParserProvider = provider3;
        this.buildValuesProvider = provider4;
    }

    @Override // javax.inject.Provider
    public SdkApplicationInformationFactory get() {
        return provideSdkApplicationInformationFactory$common_publish(this.module, this.contextProvider.get(), this.deviceUuidProvider.get(), this.appInfoParserProvider.get(), this.buildValuesProvider.get());
    }

    public static AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory create(AppInfoModule appInfoModule, Provider<Context> provider, Provider<DeviceUuidProvider> provider2, Provider<AppInfoParser> provider3, Provider<BuildValues> provider4) {
        return new AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory(appInfoModule, provider, provider2, provider3, provider4);
    }

    public static SdkApplicationInformationFactory provideSdkApplicationInformationFactory$common_publish(AppInfoModule appInfoModule, Context context, DeviceUuidProvider deviceUuidProvider, AppInfoParser appInfoParser, BuildValues buildValues) {
        return (SdkApplicationInformationFactory) Preconditions.checkNotNullFromProvides(appInfoModule.provideSdkApplicationInformationFactory$common_publish(context, deviceUuidProvider, appInfoParser, buildValues));
    }
}
