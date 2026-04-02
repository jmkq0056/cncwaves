package com.stripe.device;

import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineLocationConfigs.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J9\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/stripe/device/OfflineLocationConfigs;", "", "offlineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "tippingConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "bluetoothAutoReconnectConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbAutoReconnectConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V", "getBluetoothAutoReconnectConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "getOfflineConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "getTippingConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "getUsbAutoReconnectConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineLocationConfigs {
    private final BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfig;
    private final OfflineConfigPb offlineConfig;
    private final TippingConfigPb tippingConfig;
    private final UsbAutoReconnectConfigPb usbAutoReconnectConfig;

    public OfflineLocationConfigs() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ OfflineLocationConfigs copy$default(OfflineLocationConfigs offlineLocationConfigs, OfflineConfigPb offlineConfigPb, TippingConfigPb tippingConfigPb, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb, int i, Object obj) {
        if ((i & 1) != 0) {
            offlineConfigPb = offlineLocationConfigs.offlineConfig;
        }
        if ((i & 2) != 0) {
            tippingConfigPb = offlineLocationConfigs.tippingConfig;
        }
        if ((i & 4) != 0) {
            bluetoothAutoReconnectConfigPb = offlineLocationConfigs.bluetoothAutoReconnectConfig;
        }
        if ((i & 8) != 0) {
            usbAutoReconnectConfigPb = offlineLocationConfigs.usbAutoReconnectConfig;
        }
        return offlineLocationConfigs.copy(offlineConfigPb, tippingConfigPb, bluetoothAutoReconnectConfigPb, usbAutoReconnectConfigPb);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final OfflineConfigPb getOfflineConfig() {
        return this.offlineConfig;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final TippingConfigPb getTippingConfig() {
        return this.tippingConfig;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final BluetoothAutoReconnectConfigPb getBluetoothAutoReconnectConfig() {
        return this.bluetoothAutoReconnectConfig;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final UsbAutoReconnectConfigPb getUsbAutoReconnectConfig() {
        return this.usbAutoReconnectConfig;
    }

    public final OfflineLocationConfigs copy(OfflineConfigPb offlineConfig, TippingConfigPb tippingConfig, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfig, UsbAutoReconnectConfigPb usbAutoReconnectConfig) {
        return new OfflineLocationConfigs(offlineConfig, tippingConfig, bluetoothAutoReconnectConfig, usbAutoReconnectConfig);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineLocationConfigs)) {
            return false;
        }
        OfflineLocationConfigs offlineLocationConfigs = (OfflineLocationConfigs) other;
        return Intrinsics.areEqual(this.offlineConfig, offlineLocationConfigs.offlineConfig) && Intrinsics.areEqual(this.tippingConfig, offlineLocationConfigs.tippingConfig) && Intrinsics.areEqual(this.bluetoothAutoReconnectConfig, offlineLocationConfigs.bluetoothAutoReconnectConfig) && Intrinsics.areEqual(this.usbAutoReconnectConfig, offlineLocationConfigs.usbAutoReconnectConfig);
    }

    public int hashCode() {
        OfflineConfigPb offlineConfigPb = this.offlineConfig;
        int iHashCode = (offlineConfigPb == null ? 0 : offlineConfigPb.hashCode()) * 31;
        TippingConfigPb tippingConfigPb = this.tippingConfig;
        int iHashCode2 = (iHashCode + (tippingConfigPb == null ? 0 : tippingConfigPb.hashCode())) * 31;
        BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb = this.bluetoothAutoReconnectConfig;
        int iHashCode3 = (iHashCode2 + (bluetoothAutoReconnectConfigPb == null ? 0 : bluetoothAutoReconnectConfigPb.hashCode())) * 31;
        UsbAutoReconnectConfigPb usbAutoReconnectConfigPb = this.usbAutoReconnectConfig;
        return iHashCode3 + (usbAutoReconnectConfigPb != null ? usbAutoReconnectConfigPb.hashCode() : 0);
    }

    public String toString() {
        return "OfflineLocationConfigs(offlineConfig=" + this.offlineConfig + ", tippingConfig=" + this.tippingConfig + ", bluetoothAutoReconnectConfig=" + this.bluetoothAutoReconnectConfig + ", usbAutoReconnectConfig=" + this.usbAutoReconnectConfig + ')';
    }

    public OfflineLocationConfigs(OfflineConfigPb offlineConfigPb, TippingConfigPb tippingConfigPb, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb) {
        this.offlineConfig = offlineConfigPb;
        this.tippingConfig = tippingConfigPb;
        this.bluetoothAutoReconnectConfig = bluetoothAutoReconnectConfigPb;
        this.usbAutoReconnectConfig = usbAutoReconnectConfigPb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ OfflineLocationConfigs(OfflineConfigPb offlineConfigPb, TippingConfigPb tippingConfigPb, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb, int i, DefaultConstructorMarker defaultConstructorMarker) {
        BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb2;
        UsbAutoReconnectConfigPb usbAutoReconnectConfigPb2;
        if ((i & 1) != 0) {
            offlineConfigPb = new OfflineConfigPb(false, 0, null, null, null, false, false, null, null, 511, null);
        }
        if ((i & 2) != 0) {
            tippingConfigPb = new TippingConfigPb(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
        if ((i & 4) != 0) {
            bluetoothAutoReconnectConfigPb2 = new BluetoothAutoReconnectConfigPb(0, 0, null, 7, null);
        } else {
            bluetoothAutoReconnectConfigPb2 = bluetoothAutoReconnectConfigPb;
        }
        if ((i & 8) != 0) {
            usbAutoReconnectConfigPb2 = new UsbAutoReconnectConfigPb(0, 0, 0L, null, 15, null);
        } else {
            usbAutoReconnectConfigPb2 = usbAutoReconnectConfigPb;
        }
        this(offlineConfigPb, tippingConfigPb, bluetoothAutoReconnectConfigPb2, usbAutoReconnectConfigPb2);
    }

    public final OfflineConfigPb getOfflineConfig() {
        return this.offlineConfig;
    }

    public final TippingConfigPb getTippingConfig() {
        return this.tippingConfig;
    }

    public final BluetoothAutoReconnectConfigPb getBluetoothAutoReconnectConfig() {
        return this.bluetoothAutoReconnectConfig;
    }

    public final UsbAutoReconnectConfigPb getUsbAutoReconnectConfig() {
        return this.usbAutoReconnectConfig;
    }
}
