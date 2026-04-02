package com.stripe.stripeterminal.internal.common.dagger;

import android.content.Context;
import com.stripe.stripeterminal.internal.common.appinfo.AppInfoParser;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class AppInfoModule_ProvideAppInfoParser$common_publishFactory implements Factory<AppInfoParser> {
    private final Provider<Context> contextProvider;
    private final AppInfoModule module;

    public AppInfoModule_ProvideAppInfoParser$common_publishFactory(AppInfoModule appInfoModule, Provider<Context> provider) {
        this.module = appInfoModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public AppInfoParser get() {
        return provideAppInfoParser$common_publish(this.module, this.contextProvider.get());
    }

    public static AppInfoModule_ProvideAppInfoParser$common_publishFactory create(AppInfoModule appInfoModule, Provider<Context> provider) {
        return new AppInfoModule_ProvideAppInfoParser$common_publishFactory(appInfoModule, provider);
    }

    public static AppInfoParser provideAppInfoParser$common_publish(AppInfoModule appInfoModule, Context context) {
        return (AppInfoParser) Preconditions.checkNotNullFromProvides(appInfoModule.provideAppInfoParser$common_publish(context));
    }
}
