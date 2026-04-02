package com.stripe.core.device.dagger;

import com.stripe.core.device.BuildValues;
import com.stripe.core.device.EmulatorClientDeviceTypeProvider;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EmulatorModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/device/dagger/EmulatorModule;", "", "()V", "provideEmulatorClientDeviceTypeParser", "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;", "buildValues", "Lcom/stripe/core/device/BuildValues;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class EmulatorModule {
    public static final EmulatorModule INSTANCE = new EmulatorModule();

    private EmulatorModule() {
    }

    @Provides
    public final EmulatorClientDeviceTypeProvider provideEmulatorClientDeviceTypeParser(BuildValues buildValues) {
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        return new EmulatorClientDeviceTypeProvider(buildValues);
    }
}
