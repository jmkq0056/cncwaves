package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;

/* JADX INFO: loaded from: classes3.dex */
public class VASMerchantConfig {
    public BBDeviceController.VASProtocolMode protocolMode = BBDeviceController.VASProtocolMode.FULL;
    public String filter = "";
    public String merchantID = "";
    public String url = "";

    public String toString() {
        return "VASMerchantConfig{protocolMode=" + this.protocolMode + ", filter='" + this.filter + "', merchantID='" + this.merchantID + "', url='" + this.url + "'}";
    }
}
