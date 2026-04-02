package com.stripe.device;

import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import kotlin.Metadata;
import kotlin.Pair;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: ActiveLocationConfigRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00040\u0003H&J8\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Lcom/stripe/device/ActiveLocationConfigRepository;", "", "getActiveLocationConfigFlow", "Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Pair;", "", "Lcom/stripe/device/OfflineLocationConfigs;", "setActiveLocationConfigs", "", "locationId", "offlineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "tippingConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "bluetoothAutoReconnectConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbAutoReconnectConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ActiveLocationConfigRepository {
    Flow<Pair<String, OfflineLocationConfigs>> getActiveLocationConfigFlow();

    void setActiveLocationConfigs(String locationId, OfflineConfigPb offlineConfig, TippingConfigPb tippingConfig, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfig, UsbAutoReconnectConfigPb usbAutoReconnectConfig);
}
