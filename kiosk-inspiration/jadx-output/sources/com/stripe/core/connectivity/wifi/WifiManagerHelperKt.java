package com.stripe.core.connectivity.wifi;

import android.net.wifi.WifiManager;
import com.stripe.core.connectivity.SignalStrength;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: WifiManagerHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\"#\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u000e\n\u0000\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"signalStrengthConvertor", "Lkotlin/Function1;", "", "Lcom/stripe/core/connectivity/SignalStrength;", "getSignalStrengthConvertor$annotations", "()V", "getSignalStrengthConvertor", "()Lkotlin/jvm/functions/Function1;", "connectivity_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class WifiManagerHelperKt {
    private static final Function1<Integer, SignalStrength> signalStrengthConvertor = new Function1<Integer, SignalStrength>() { // from class: com.stripe.core.connectivity.wifi.WifiManagerHelperKt$signalStrengthConvertor$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ SignalStrength invoke(Integer num) {
            return invoke(num.intValue());
        }

        public final SignalStrength invoke(int i) {
            int iCalculateSignalLevel = WifiManager.calculateSignalLevel(i, SignalStrength.getEntries().size());
            if (iCalculateSignalLevel == 1) {
                return SignalStrength.Low;
            }
            if (iCalculateSignalLevel == 2) {
                return SignalStrength.Medium;
            }
            if (iCalculateSignalLevel == 3) {
                return SignalStrength.High;
            }
            return SignalStrength.None;
        }
    };

    public static /* synthetic */ void getSignalStrengthConvertor$annotations() {
    }

    public static final Function1<Integer, SignalStrength> getSignalStrengthConvertor() {
        return signalStrengthConvertor;
    }
}
