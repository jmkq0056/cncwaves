package com.stripe.core.bbpos.hardware;

import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.ReaderInfoController;
import com.stripe.core.stripeterminal.log.AndroidLog;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposReaderInfoController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \b2\u00020\u0001:\u0001\bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;", "Lcom/stripe/core/hardware/ReaderInfoController;", "deviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)V", "requestReaderBatteryInfo", "", "requestReaderInfo", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposReaderInfoController implements ReaderInfoController {
    private static final String BATTERY_IS_CHARGING_KEY = "isCharging";
    private static final String BATTERY_PERCENTAGE = "batteryPercentage";
    private static final String TAG = "BbposReaderInfoController";
    private static final String USB_CONNECTED = "isUsbConnected";
    private final DeviceControllerWrapper deviceController;

    public BbposReaderInfoController(DeviceControllerWrapper deviceController) {
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        this.deviceController = deviceController;
    }

    @Override // com.stripe.core.hardware.ReaderInfoController
    public void requestReaderInfo() {
        AndroidLog androidLog = AndroidLog.INSTANCE;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        androidLog.i(TAG2, "requestReaderInfo");
        this.deviceController.getDeviceInfo();
    }

    @Override // com.stripe.core.hardware.ReaderInfoController
    public void requestReaderBatteryInfo() {
        AndroidLog androidLog = AndroidLog.INSTANCE;
        String TAG2 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
        androidLog.i(TAG2, "requestReaderBatteryInfo");
        this.deviceController.getDeviceInfoByKeys(CollectionsKt.listOf((Object[]) new String[]{BATTERY_IS_CHARGING_KEY, BATTERY_PERCENTAGE, USB_CONNECTED}));
    }
}
