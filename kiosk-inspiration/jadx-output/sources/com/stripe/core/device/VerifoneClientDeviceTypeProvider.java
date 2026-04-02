package com.stripe.core.device;

import com.stripe.core.device.ClientDeviceType;
import com.stripe.core.device.HardwareManufacturer;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VerifoneClientDeviceTypeProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;", "Lcom/stripe/core/device/ClientDeviceTypeProvider;", "buildValues", "Lcom/stripe/core/device/BuildValues;", "(Lcom/stripe/core/device/BuildValues;)V", "get", "Lcom/stripe/core/device/ClientDeviceType$MorphDevice;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VerifoneClientDeviceTypeProvider implements ClientDeviceTypeProvider {
    private final BuildValues buildValues;

    public VerifoneClientDeviceTypeProvider(BuildValues buildValues) {
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
        this.buildValues = buildValues;
    }

    @Override // com.stripe.core.device.ClientDeviceTypeProvider
    public ClientDeviceType.MorphDevice get() {
        String upperCase = this.buildValues.getModel().toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return Intrinsics.areEqual(upperCase, "NEO660") ? ClientDeviceType.MorphVfs0100.INSTANCE : new ClientDeviceType.Unknown(new HardwareManufacturer.Other(this.buildValues.getManufacturer().getValue()));
    }
}
