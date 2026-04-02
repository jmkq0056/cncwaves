package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposReaderConfigurationUpdateController;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.updates.ReaderConfigurationUpdateController;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposUpdateHardwareModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule;", "", "()V", "provideReaderConfigurationUpdateController", "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;", "deviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class BbposUpdateHardwareModule {
    public static final BbposUpdateHardwareModule INSTANCE = new BbposUpdateHardwareModule();

    private BbposUpdateHardwareModule() {
    }

    @Provides
    public final ReaderConfigurationUpdateController provideReaderConfigurationUpdateController(DeviceControllerWrapper deviceController) {
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        return new BbposReaderConfigurationUpdateController(deviceController);
    }
}
