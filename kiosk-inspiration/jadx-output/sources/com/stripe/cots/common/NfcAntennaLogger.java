package com.stripe.cots.common;

import android.content.Context;
import android.nfc.AvailableNfcAntenna;
import android.nfc.NfcAdapter;
import android.nfc.NfcAntennaInfo;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.device.SdkInt;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NfcAntennaLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u0006\u0010\f\u001a\u00020\rJ\u0015\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0001¢\u0006\u0002\b\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/cots/common/NfcAntennaLogger;", "", "context", "Landroid/content/Context;", "sdkInt", "Lcom/stripe/core/device/SdkInt;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Landroid/content/Context;Lcom/stripe/core/device/SdkInt;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "logDiscoveredAntennas", "", "nfcAdapter", "Landroid/nfc/NfcAdapter;", "logDiscoveredAntennas$common_release", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NfcAntennaLogger {
    private final Context context;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final SdkInt sdkInt;

    public NfcAntennaLogger(Context context, SdkInt sdkInt, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sdkInt, "sdkInt");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.context = context;
        this.sdkInt = sdkInt;
        this.logger = logger;
    }

    public final void logDiscoveredAntennas() {
        NfcAdapter defaultAdapter;
        if (!this.sdkInt.isAtLeast(34) || (defaultAdapter = NfcAdapter.getDefaultAdapter(this.context)) == null) {
            return;
        }
        logDiscoveredAntennas$common_release(defaultAdapter);
    }

    public final void logDiscoveredAntennas$common_release(NfcAdapter nfcAdapter) {
        List<AvailableNfcAntenna> listEmptyList;
        Intrinsics.checkNotNullParameter(nfcAdapter, "nfcAdapter");
        NfcAntennaInfo nfcAntennaInfo = nfcAdapter.getNfcAntennaInfo();
        if (nfcAntennaInfo != null) {
            listEmptyList = nfcAntennaInfo.getAvailableNfcAntennas();
            Intrinsics.checkNotNullExpressionValue(listEmptyList, "getAvailableNfcAntennas(...)");
            int i = 0;
            for (Object obj : listEmptyList) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                AvailableNfcAntenna availableNfcAntenna = (AvailableNfcAntenna) obj;
                this.logger.i("Discovered NFC Antenna", TuplesKt.to(FirebaseAnalytics.Param.INDEX, Integer.valueOf(i)), TuplesKt.to("x", Integer.valueOf(availableNfcAntenna.getLocationX())), TuplesKt.to("y", Integer.valueOf(availableNfcAntenna.getLocationY())), TuplesKt.to("deviceWidth", Integer.valueOf(nfcAntennaInfo.getDeviceWidth())), TuplesKt.to("deviceHeight", Integer.valueOf(nfcAntennaInfo.getDeviceHeight())), TuplesKt.to("xRatio", Float.valueOf(availableNfcAntenna.getLocationX() / nfcAntennaInfo.getDeviceWidth())), TuplesKt.to("yRatio", Float.valueOf(1 - (availableNfcAntenna.getLocationY() / nfcAntennaInfo.getDeviceHeight()))));
                i = i2;
            }
        } else {
            listEmptyList = null;
        }
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        if (listEmptyList.isEmpty()) {
            this.logger.i("No NFC antennas discovered", new Pair[0]);
        }
    }
}
