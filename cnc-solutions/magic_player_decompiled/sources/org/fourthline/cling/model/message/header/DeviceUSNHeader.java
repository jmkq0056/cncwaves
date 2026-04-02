package org.fourthline.cling.model.message.header;

import android.support.v4.media.f;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.NamedDeviceType;
import org.fourthline.cling.model.types.UDN;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceUSNHeader extends UpnpHeader<NamedDeviceType> {
    public DeviceUSNHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        try {
            setValue(NamedDeviceType.valueOf(str));
        } catch (Exception e4) {
            StringBuilder sbA = f.a("Invalid device USN header value, ");
            sbA.append(e4.getMessage());
            throw new InvalidHeaderException(sbA.toString());
        }
    }

    public DeviceUSNHeader(UDN udn, DeviceType deviceType) {
        setValue(new NamedDeviceType(udn, deviceType));
    }

    public DeviceUSNHeader(NamedDeviceType namedDeviceType) {
        setValue(namedDeviceType);
    }
}
