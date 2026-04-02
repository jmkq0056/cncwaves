package org.fourthline.cling.model.message.header;

import androidx.appcompat.view.b;
import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.types.HostPort;

/* JADX INFO: loaded from: classes2.dex */
public class HostHeader extends UpnpHeader<HostPort> {
    public int port = Constants.UPNP_MULTICAST_PORT;
    public String group = Constants.IPV4_UPNP_MULTICAST_GROUP;

    public HostHeader() {
        setValue(new HostPort(Constants.IPV4_UPNP_MULTICAST_GROUP, Constants.UPNP_MULTICAST_PORT));
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (!str.contains(":")) {
            this.group = str;
            setValue(new HostPort(str, this.port));
            return;
        }
        try {
            this.port = Integer.valueOf(str.substring(str.indexOf(":") + 1)).intValue();
            String strSubstring = str.substring(0, str.indexOf(":"));
            this.group = strSubstring;
            setValue(new HostPort(strSubstring, this.port));
        } catch (NumberFormatException e4) {
            StringBuilder sbA = b.a("Invalid HOST header value, can't parse port: ", str, " - ");
            sbA.append(e4.getMessage());
            throw new InvalidHeaderException(sbA.toString());
        }
    }

    public HostHeader(int i4) {
        setValue(new HostPort(Constants.IPV4_UPNP_MULTICAST_GROUP, i4));
    }

    public HostHeader(String str, int i4) {
        setValue(new HostPort(str, i4));
    }
}
