package com.stripe.core.device;

import kotlin.Metadata;

/* JADX INFO: compiled from: BuildValuesFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004J\b\u0010\u0002\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lcom/stripe/core/device/BuildValuesFactory;", "", "create", "Lcom/stripe/core/device/BuildValues;", "Companion", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface BuildValuesFactory {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    BuildValues create();

    /* JADX INFO: compiled from: BuildValuesFactory.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u00020\u00048Fø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0007"}, d2 = {"Lcom/stripe/core/device/BuildValuesFactory$Companion;", "", "()V", "serialNumber", "Lcom/stripe/core/serialnumber/DeviceSerialNumber;", "getSerialNumber-q_5ZKBc", "()Ljava/lang/String;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: getSerialNumber-q_5ZKBc, reason: not valid java name */
        public final String m460getSerialNumberq_5ZKBc() {
            return new DefaultSerialSupplier(new DefaultBuildValuesFactory(new DefaultHardwareManufacturerFactory(null, 1, 0 == true ? 1 : 0).create(), SdkInt.INSTANCE.get()).create().isEmulator()).mo461getq_5ZKBc();
        }
    }
}
