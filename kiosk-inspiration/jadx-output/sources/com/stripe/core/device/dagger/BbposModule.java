package com.stripe.core.device.dagger;

import com.stripe.core.device.BbposClientDeviceTypeProvider;
import com.stripe.core.device.BuildValues;
import com.stripe.core.device.SerialSupplier;
import com.stripe.jvmcore.logging.terminal.log.Log;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/core/device/dagger/BbposModule;", "", "()V", "provideBbposClientDeviceTypeParser", "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;", "serialSupplier", "Lcom/stripe/core/device/SerialSupplier;", "buildValues", "Lcom/stripe/core/device/BuildValues;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class BbposModule {
    public static final BbposModule INSTANCE = new BbposModule();

    private BbposModule() {
    }

    @Provides
    @Singleton
    public final BbposClientDeviceTypeProvider provideBbposClientDeviceTypeParser(SerialSupplier serialSupplier, BuildValues buildValues) {
        Intrinsics.checkNotNullParameter(serialSupplier, "serialSupplier");
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        return new BbposClientDeviceTypeProvider(serialSupplier, buildValues, Log.INSTANCE.getLogger(BbposClientDeviceTypeProvider.class));
    }
}
