package com.stripe.core.bbpos.hardware;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.updates.ReaderConfigurationUpdateController;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.hardware.emv.TlvMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposReaderConfigurationUpdateController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J0\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u001c\u0010\u0010\u001a\u00020\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0012H\u0016J\u001c\u0010\u0013\u001a\u00020\u00062\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00150\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;", "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;", "deviceController", "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;", "(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)V", "readAid", "", FirebaseAnalytics.Param.INDEX, "", "readSettings", "merchantName", "", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "domesticDebitAidList", "buzzerSoundEnabled", "configHash", "updateAid", "aidData", "", "updateDisplay", "displayData", "", "updateSettings", "settings", "Lcom/stripe/hardware/emv/TlvMap;", "Companion", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposReaderConfigurationUpdateController implements ReaderConfigurationUpdateController {
    private static final String TAG;
    private final DeviceControllerWrapper deviceController;

    public BbposReaderConfigurationUpdateController(DeviceControllerWrapper deviceController) {
        Intrinsics.checkNotNullParameter(deviceController, "deviceController");
        this.deviceController = deviceController;
    }

    @Override // com.stripe.core.hardware.updates.ReaderConfigurationUpdateController
    public synchronized void readAid(String index) {
        Intrinsics.checkNotNullParameter(index, "index");
        AndroidLog.INSTANCE.i(TAG, "readReaderAid: " + index);
        this.deviceController.readAid(index);
    }

    @Override // com.stripe.core.hardware.updates.ReaderConfigurationUpdateController
    public synchronized void readSettings(boolean merchantName, boolean countryCode, boolean domesticDebitAidList, boolean buzzerSoundEnabled, boolean configHash) {
        AndroidLog.INSTANCE.i(TAG, "readReaderSettings");
        DeviceControllerWrapper.readTerminalSetting$default(this.deviceController, false, countryCode, false, false, merchantName, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, domesticDebitAidList, false, buzzerSoundEnabled, configHash, 6291437, null);
    }

    @Override // com.stripe.core.hardware.updates.ReaderConfigurationUpdateController
    public synchronized void updateAid(Map<String, String> aidData) {
        Intrinsics.checkNotNullParameter(aidData, "aidData");
        AndroidLog.INSTANCE.i(TAG, "updateReaderAid");
        this.deviceController.updateAid(aidData);
    }

    @Override // com.stripe.core.hardware.updates.ReaderConfigurationUpdateController
    public synchronized void updateDisplay(Map<String, ? extends Object> displayData) {
        Intrinsics.checkNotNullParameter(displayData, "displayData");
        AndroidLog.INSTANCE.i(TAG, "updateReaderDisplay");
        this.deviceController.updateDisplaySettings(displayData);
    }

    @Override // com.stripe.core.hardware.updates.ReaderConfigurationUpdateController
    public synchronized void updateSettings(TlvMap settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        AndroidLog.INSTANCE.i(TAG, "updateReaderSettings");
        this.deviceController.updateTerminalSettings(settings.toBlob());
    }

    static {
        Intrinsics.checkNotNullExpressionValue("BbposReaderConfigurationUpdateController", "getSimpleName(...)");
        TAG = "BbposReaderConfigurationUpdateController";
    }
}
