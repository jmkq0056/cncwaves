package com.stripe.core.dagger.modules;

import android.content.Context;
import android.hardware.camera2.CameraManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideCameraManagerFactory implements Factory<CameraManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideCameraManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public CameraManager get() {
        return provideCameraManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideCameraManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideCameraManagerFactory(provider);
    }

    public static CameraManager provideCameraManager(Context context) {
        return (CameraManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideCameraManager(context));
    }
}
