package com.stripe.core.bbpos.dagger;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import dagger.Binds;
import dagger.Module;
import kotlin.Metadata;

/* JADX INFO: compiled from: BbposInvocationRecorderModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b!\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H'¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/bbpos/dagger/BbposInvocationRecorderModule;", "", "()V", "bindsBbposDeviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "impl", "Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public abstract class BbposInvocationRecorderModule {
    @Binds
    public abstract DeviceControllerWrapper bindsBbposDeviceController(BbposDeviceControllerImpl impl);
}
