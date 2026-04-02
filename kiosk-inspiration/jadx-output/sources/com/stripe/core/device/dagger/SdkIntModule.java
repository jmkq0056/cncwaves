package com.stripe.core.device.dagger;

import com.stripe.core.device.SdkInt;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;

/* JADX INFO: compiled from: SdkIntModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\r\u0010\u0003\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/device/dagger/SdkIntModule;", "", "()V", "provideSdkInt", "Lcom/stripe/core/device/SdkInt;", "provideSdkInt$device_release", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class SdkIntModule {
    @Provides
    @Reusable
    public final SdkInt provideSdkInt$device_release() {
        return SdkInt.INSTANCE.get();
    }
}
