package com.stripe.stripeterminal.internal.common.usb;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import com.stripe.core.device.BuildValues;
import com.stripe.core.device.SdkInt;
import com.stripe.jvmcore.dagger.ForApplication;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UsbPermissionReceiverManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0002\u0017\u0018B!\b\u0017\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u001f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000f0\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0015J\u0006\u0010\u0016\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;", "", "context", "Landroid/content/Context;", "usbManager", "Landroid/hardware/usb/UsbManager;", "buildValues", "Lcom/stripe/core/device/BuildValues;", "(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/BuildValues;)V", "sdkInt", "Lcom/stripe/core/device/SdkInt;", "(Landroid/content/Context;Landroid/hardware/usb/UsbManager;Lcom/stripe/core/device/SdkInt;)V", "receiver", "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;", "startListening", "", "usbDevice", "Landroid/hardware/usb/UsbDevice;", "onGranted", "Lkotlin/Function1;", "onDenied", "Lkotlin/Function0;", "stopListening", "Companion", "UsbPermissionReceiver", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UsbPermissionReceiverManager {
    public static final String ACTION_USB_PERMISSION = "com.stripe.terminal.USB_PERMISSION";
    private final Context context;
    private UsbPermissionReceiver receiver;
    private final SdkInt sdkInt;
    private final UsbManager usbManager;

    public UsbPermissionReceiverManager(Context context, UsbManager usbManager, SdkInt sdkInt) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(usbManager, "usbManager");
        Intrinsics.checkNotNullParameter(sdkInt, "sdkInt");
        this.context = context;
        this.usbManager = usbManager;
        this.sdkInt = sdkInt;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Inject
    public UsbPermissionReceiverManager(@ForApplication Context context, UsbManager usbManager, BuildValues buildValues) {
        this(context, usbManager, buildValues.getSdkInt());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(usbManager, "usbManager");
        Intrinsics.checkNotNullParameter(buildValues, "buildValues");
    }

    /* JADX INFO: compiled from: UsbPermissionReceiverManager.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b¢\u0006\u0002\u0010\tJ\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager$UsbPermissionReceiver;", "Landroid/content/BroadcastReceiver;", "usbDevice", "Landroid/hardware/usb/UsbDevice;", "onGranted", "Lkotlin/Function1;", "", "onDenied", "Lkotlin/Function0;", "(Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "onReceive", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UsbPermissionReceiver extends BroadcastReceiver {
        private final Function0<Unit> onDenied;
        private final Function1<UsbDevice, Unit> onGranted;
        private final UsbDevice usbDevice;

        /* JADX WARN: Multi-variable type inference failed */
        public UsbPermissionReceiver(UsbDevice usbDevice, Function1<? super UsbDevice, Unit> onGranted, Function0<Unit> onDenied) {
            Intrinsics.checkNotNullParameter(usbDevice, "usbDevice");
            Intrinsics.checkNotNullParameter(onGranted, "onGranted");
            Intrinsics.checkNotNullParameter(onDenied, "onDenied");
            this.usbDevice = usbDevice;
            this.onGranted = onGranted;
            this.onDenied = onDenied;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (Intrinsics.areEqual(UsbPermissionReceiverManager.ACTION_USB_PERMISSION, intent.getAction())) {
                synchronized (this) {
                    if (intent.getBooleanExtra("permission", false)) {
                        this.onGranted.invoke(this.usbDevice);
                    } else {
                        this.onDenied.invoke();
                    }
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
    }

    public final void startListening(UsbDevice usbDevice, Function1<? super UsbDevice, Unit> onGranted, Function0<Unit> onDenied) {
        Intrinsics.checkNotNullParameter(usbDevice, "usbDevice");
        Intrinsics.checkNotNullParameter(onGranted, "onGranted");
        Intrinsics.checkNotNullParameter(onDenied, "onDenied");
        synchronized (this) {
            if (this.receiver != null) {
                stopListening();
            }
            if (this.usbManager.hasPermission(usbDevice)) {
                onGranted.invoke(usbDevice);
            } else {
                PendingIntent broadcast = PendingIntent.getBroadcast(this.context, 0, new Intent(ACTION_USB_PERMISSION).setPackage(this.context.getPackageName()), this.sdkInt.isAtLeast(31) ? 167772160 : 134217728);
                int i = this.sdkInt.isAtLeast(34) ? 2 : 0;
                UsbPermissionReceiver usbPermissionReceiver = new UsbPermissionReceiver(usbDevice, onGranted, onDenied);
                this.receiver = usbPermissionReceiver;
                this.context.registerReceiver(usbPermissionReceiver, new IntentFilter(ACTION_USB_PERMISSION), i);
                this.usbManager.requestPermission(usbDevice, broadcast);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void stopListening() {
        synchronized (this) {
            UsbPermissionReceiver usbPermissionReceiver = this.receiver;
            if (usbPermissionReceiver != null) {
                this.context.unregisterReceiver(usbPermissionReceiver);
                this.receiver = null;
                Unit unit = Unit.INSTANCE;
            }
        }
    }
}
