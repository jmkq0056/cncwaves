package org.fourthline.cling.model.message.header;

import android.support.v4.media.h;
import org.fourthline.cling.model.types.UDN;

/* JADX INFO: loaded from: classes2.dex */
public class USNRootDeviceHeader extends UpnpHeader<UDN> {
    public static final String ROOT_DEVICE_SUFFIX = "::upnp:rootdevice";

    public USNRootDeviceHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString() + ROOT_DEVICE_SUFFIX;
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (!str.startsWith("uuid:") || !str.endsWith(ROOT_DEVICE_SUFFIX)) {
            throw new InvalidHeaderException(h.a("Invalid root device USN header value, must start with 'uuid:' and end with '::upnp:rootdevice' but is '", str, "'"));
        }
        setValue(new UDN(str.substring(5, str.length() - 17)));
    }

    public USNRootDeviceHeader(UDN udn) {
        setValue(udn);
    }
}
