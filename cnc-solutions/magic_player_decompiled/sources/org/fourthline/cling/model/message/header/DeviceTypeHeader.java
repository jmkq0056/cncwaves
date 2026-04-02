package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import java.net.URI;
import org.fourthline.cling.model.types.DeviceType;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceTypeHeader extends UpnpHeader<DeviceType> {
    public DeviceTypeHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        try {
            setValue(DeviceType.valueOf(str));
        } catch (RuntimeException e4) {
            StringBuilder sbA = f.a("Invalid device type header value, ");
            sbA.append(e4.getMessage());
            throw new InvalidHeaderException(sbA.toString());
        }
    }

    public DeviceTypeHeader(URI uri) {
        setString(uri.toString());
    }

    public DeviceTypeHeader(DeviceType deviceType) {
        setValue(deviceType);
    }
}
