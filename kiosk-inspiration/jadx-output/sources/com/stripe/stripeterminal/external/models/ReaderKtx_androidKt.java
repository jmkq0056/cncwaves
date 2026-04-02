package com.stripe.stripeterminal.external.models;

import android.os.Build;
import com.stripe.proto.model.common.COTSHardware;
import com.stripe.proto.model.common.MobileOS;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderKtx.android.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0000*\n\u0010\u0002\"\u00020\u00032\u00020\u0003*\n\u0010\u0004\"\u00020\u00052\u00020\u0005¨\u0006\u0006"}, d2 = {"cotsHardware", "Lcom/stripe/proto/model/common/COTSHardware;", "BluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "UsbDevice", "Landroid/hardware/usb/UsbDevice;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ReaderKtx_androidKt {
    public static final COTSHardware cotsHardware() {
        String str = Build.MANUFACTURER;
        MobileOS mobileOS = MobileOS.ANDROID;
        String str2 = Build.MODEL;
        Intrinsics.checkNotNull(str2);
        Intrinsics.checkNotNull(str);
        return new COTSHardware(str2, null, str, mobileOS, null, 18, null);
    }
}
