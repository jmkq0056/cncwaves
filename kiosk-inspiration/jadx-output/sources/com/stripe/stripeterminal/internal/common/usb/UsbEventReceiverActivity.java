package com.stripe.stripeterminal.internal.common.usb;

import android.app.Activity;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import androidx.core.content.IntentCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: UsbEventReceiverActivity.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity;", "Landroid/app/Activity;", "()V", "onResume", "", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UsbEventReceiverActivity extends Activity {
    private static final String ACTION_USB_DEVICE_ATTACHED = "com.stripe.stripeterminal.ACTION_USB_DEVICE_ATTACHED";
    private static final Companion Companion = new Companion(null);

    /* JADX INFO: compiled from: UsbEventReceiverActivity.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/usb/UsbEventReceiverActivity$Companion;", "", "()V", "ACTION_USB_DEVICE_ATTACHED", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (getIntent() != null && StringsKt.equals$default(getIntent().getAction(), "android.hardware.usb.action.USB_DEVICE_ATTACHED", false, 2, null)) {
            UsbDevice usbDevice = (UsbDevice) IntentCompat.getParcelableExtra(getIntent(), "device", UsbDevice.class);
            Intent intent = new Intent(ACTION_USB_DEVICE_ATTACHED);
            intent.putExtra("device", usbDevice);
            sendBroadcast(intent);
        }
        finish();
    }
}
