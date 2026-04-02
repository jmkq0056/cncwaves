package com.stripe.core.bbpos.hardware;

import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import kotlin.Metadata;

/* JADX INFO: compiled from: DeviceListenerRegistry.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;", "", "registerListener", "", "listenerWrapper", "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;", "unregisterListener", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DeviceListenerRegistry {
    void registerListener(DeviceListenerWrapper listenerWrapper);

    void unregisterListener(DeviceListenerWrapper listenerWrapper);
}
