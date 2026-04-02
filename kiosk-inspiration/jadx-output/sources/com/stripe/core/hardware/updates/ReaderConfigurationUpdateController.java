package com.stripe.core.hardware.updates;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.hardware.emv.TlvMap;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: ReaderConfigurationUpdateController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J:\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\bH&J\u001c\u0010\r\u001a\u00020\u00032\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000fH&J\u001c\u0010\u0010\u001a\u00020\u00032\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u000fH&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0015À\u0006\u0001"}, d2 = {"Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;", "", "readAid", "", FirebaseAnalytics.Param.INDEX, "", "readSettings", "merchantName", "", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "domesticDebitAidList", "buzzerSoundEnabled", "configHash", "updateAid", "aidData", "", "updateDisplay", "displayData", "updateSettings", "settings", "Lcom/stripe/hardware/emv/TlvMap;", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderConfigurationUpdateController {
    void readAid(String index);

    void readSettings(boolean merchantName, boolean countryCode, boolean domesticDebitAidList, boolean buzzerSoundEnabled, boolean configHash);

    void updateAid(Map<String, String> aidData);

    void updateDisplay(Map<String, ? extends Object> displayData);

    void updateSettings(TlvMap settings);

    static /* synthetic */ void readSettings$default(ReaderConfigurationUpdateController readerConfigurationUpdateController, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readSettings");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = false;
        }
        if ((i & 8) != 0) {
            z4 = false;
        }
        if ((i & 16) != 0) {
            z5 = false;
        }
        readerConfigurationUpdateController.readSettings(z, z2, z3, z4, z5);
    }
}
