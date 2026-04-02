package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposReaderInfoFactory;
import com.stripe.core.bbpos.hardware.DefaultBbposReaderInfoFactory;
import com.stripe.core.device.ClientDeviceType;
import com.stripe.jvmcore.dagger.Debug;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposReaderModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule;", "", "()V", "provideBbposReaderInfoFactory", "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;", "isDebug", "", "clientDeviceType", "Lcom/stripe/core/device/ClientDeviceType;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class BbposReaderModule {
    public static final BbposReaderModule INSTANCE = new BbposReaderModule();

    private BbposReaderModule() {
    }

    @Provides
    @Reusable
    public final BbposReaderInfoFactory provideBbposReaderInfoFactory(@Debug boolean isDebug, ClientDeviceType clientDeviceType) {
        Intrinsics.checkNotNullParameter(clientDeviceType, "clientDeviceType");
        return new DefaultBbposReaderInfoFactory(isDebug, clientDeviceType);
    }
}
