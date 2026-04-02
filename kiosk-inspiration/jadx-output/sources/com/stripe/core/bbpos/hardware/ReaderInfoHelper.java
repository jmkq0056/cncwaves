package com.stripe.core.bbpos.hardware;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: ReaderInfoHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/bbpos/hardware/ReaderInfoHelper;", "", "()V", "getRawReaderInfoFields", "", "", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderInfoHelper {
    public static final ReaderInfoHelper INSTANCE = new ReaderInfoHelper();

    private ReaderInfoHelper() {
    }

    public final List<String> getRawReaderInfoFields() {
        return CollectionsKt.listOf((Object[]) new String[]{"isSupportedTrack1", "isSupportedTrack2", "isSupportedTrack3", "hardwareID", "isSupportedSoftwarePinPad", "trackKsn", "emvKsn", "macKeyProfileID1", "cmacKeyProfileID", "uid", "bID", "productID", "isSupportedPowerSaving", "vendorID", "formatID", "macKsn", "isSupportedNfc", RemoteConfigConstants.RequestFieldKey.SDK_VERSION, "firmwareDebugInfo", "deviceTamperStatus"});
    }
}
