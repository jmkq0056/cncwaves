package com.stripe.stripeterminal.internal.common.dagger;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.le.BluetoothLeScanner;
import android.hardware.usb.UsbManager;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothDiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothDiscoveryFilter;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothScanner;
import com.stripe.stripeterminal.internal.common.discovery.BbposUsbDiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController;
import com.stripe.time.Clock;
import dagger.Module;
import dagger.Provides;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: BbposDiscoveryModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J*\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010H\u0007J\"\u0010\u0012\u001a\u00020\u00132\b\b\u0001\u0010\u0014\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00112\b\u0010\u001b\u001a\u0004\u0018\u00010\u0019H\u0007J*\u0010\u001c\u001a\u00020\u001d2\b\b\u0001\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020!H\u0007¨\u0006\""}, d2 = {"Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule;", "", "()V", "provideBbposBluetoothDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;", "bbposDeviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "discoveryFilter", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;", "provideBbposBluetoothScanner", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "readerStatusListener", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "scannerProvider", "Ljavax/inject/Provider;", "Landroid/bluetooth/le/BluetoothLeScanner;", "provideBbposUsbDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "usbManager", "Landroid/hardware/usb/UsbManager;", "provideBluetoothAdapter", "Landroid/bluetooth/BluetoothAdapter;", "provideBluetoothLeScanner", "adapter", "provideDefaultBluetoothDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;", "io", "bluetoothScanner", "clock", "Lcom/stripe/time/Clock;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class BbposDiscoveryModule {
    public static final BbposDiscoveryModule INSTANCE = new BbposDiscoveryModule();

    private BbposDiscoveryModule() {
    }

    @Provides
    public final BluetoothAdapter provideBluetoothAdapter() {
        return BluetoothAdapter.getDefaultAdapter();
    }

    @Provides
    public final BluetoothLeScanner provideBluetoothLeScanner(BluetoothAdapter adapter) {
        if (adapter != null) {
            if (!adapter.isEnabled()) {
                adapter = null;
            }
            if (adapter != null) {
                return adapter.getBluetoothLeScanner();
            }
        }
        return null;
    }

    @Provides
    public final BbposBluetoothScanner provideBbposBluetoothScanner(@IO CoroutineDispatcher dispatcher, ReaderStatusListener readerStatusListener, Provider<BluetoothLeScanner> scannerProvider) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(scannerProvider, "scannerProvider");
        return new BbposBluetoothScanner(dispatcher, readerStatusListener, scannerProvider);
    }

    @Provides
    @Singleton
    public final DefaultBluetoothDiscoveryController provideDefaultBluetoothDiscoveryController(@IO CoroutineDispatcher io2, BbposBluetoothScanner bluetoothScanner, ReaderStatusListener readerStatusListener, Clock clock) {
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(bluetoothScanner, "bluetoothScanner");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(clock, "clock");
        return new DefaultBluetoothDiscoveryController(CoroutineScopeKt.CoroutineScope(io2), bluetoothScanner, readerStatusListener, clock);
    }

    @Provides
    public final BbposBluetoothDiscoveryController provideBbposBluetoothDiscoveryController(DeviceControllerWrapper bbposDeviceController, BbposBluetoothDiscoveryFilter discoveryFilter) {
        Intrinsics.checkNotNullParameter(bbposDeviceController, "bbposDeviceController");
        Intrinsics.checkNotNullParameter(discoveryFilter, "discoveryFilter");
        return new BbposBluetoothDiscoveryController(bbposDeviceController, discoveryFilter);
    }

    @Provides
    public final BbposUsbDiscoveryController provideBbposUsbDiscoveryController(@AppScope CoroutineScope appScope, ReaderStatusListener readerStatusListener, UsbManager usbManager) {
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(usbManager, "usbManager");
        return new BbposUsbDiscoveryController(appScope, readerStatusListener, usbManager);
    }
}
