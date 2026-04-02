package org.fourthline.cling.model.profile;

import android.support.v4.media.f;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UserAgentHeader;

/* JADX INFO: loaded from: classes2.dex */
public class ClientInfo {
    public final UpnpHeaders requestHeaders;

    public ClientInfo() {
        this(new UpnpHeaders());
    }

    public UpnpHeaders getRequestHeaders() {
        return this.requestHeaders;
    }

    public String getRequestUserAgent() {
        return getRequestHeaders().getFirstHeaderString(UpnpHeader.Type.USER_AGENT);
    }

    public void setRequestUserAgent(String str) {
        getRequestHeaders().add(UpnpHeader.Type.USER_AGENT, new UserAgentHeader(str));
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") User-Agent: ");
        sbA.append(getRequestUserAgent());
        return sbA.toString();
    }

    public ClientInfo(UpnpHeaders upnpHeaders) {
        this.requestHeaders = upnpHeaders;
    }
}
