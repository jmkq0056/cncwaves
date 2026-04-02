package com.stripe.stripeterminal.internal.common.discovery;

import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.ConnectionType;
import com.stripe.core.hardware.Reader;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: BbposBluetoothDiscoveryController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J&\u0010\t\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r0\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;", "bbposDeviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "bbposBluetoothDiscoveryFilter", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;", "(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;)V", "isScanning", "Ljava/util/concurrent/atomic/AtomicBoolean;", "discover", "", "readerClasses", "", "Lkotlin/reflect/KClass;", "Lcom/stripe/core/hardware/Reader;", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", "stopDiscover", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposBluetoothDiscoveryController implements DiscoveryController {
    private static final String TAG = "BBBTDiscoveryController";
    private final BbposBluetoothDiscoveryFilter bbposBluetoothDiscoveryFilter;
    private final DeviceControllerWrapper bbposDeviceController;
    private final AtomicBoolean isScanning;

    public BbposBluetoothDiscoveryController(DeviceControllerWrapper bbposDeviceController, BbposBluetoothDiscoveryFilter bbposBluetoothDiscoveryFilter) {
        Intrinsics.checkNotNullParameter(bbposDeviceController, "bbposDeviceController");
        Intrinsics.checkNotNullParameter(bbposBluetoothDiscoveryFilter, "bbposBluetoothDiscoveryFilter");
        this.bbposDeviceController = bbposDeviceController;
        this.bbposBluetoothDiscoveryFilter = bbposBluetoothDiscoveryFilter;
        this.isScanning = new AtomicBoolean(false);
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController
    public void discover(List<? extends KClass<? extends Reader>> readerClasses, ConnectionType connectionType) {
        Intrinsics.checkNotNullParameter(readerClasses, "readerClasses");
        Intrinsics.checkNotNullParameter(connectionType, "connectionType");
        AndroidLog.INSTANCE.i(TAG, "discoverDevices");
        if (this.isScanning.compareAndSet(false, true)) {
            this.bbposBluetoothDiscoveryFilter.setReaderClasses$common_publish(readerClasses);
            this.bbposDeviceController.startBtScan(null, 0);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController
    public void stopDiscover() {
        AndroidLog.INSTANCE.i(TAG, "stopDiscoverReaders");
        if (this.isScanning.compareAndSet(true, false)) {
            this.bbposDeviceController.stopBtScan();
            this.bbposBluetoothDiscoveryFilter.clearReaderClassesFilter$common_publish();
        }
    }
}
