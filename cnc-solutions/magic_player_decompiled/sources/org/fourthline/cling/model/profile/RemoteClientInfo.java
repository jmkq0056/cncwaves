package org.fourthline.cling.model.profile;

import android.support.v4.media.f;
import java.net.InetAddress;
import org.fourthline.cling.model.message.Connection;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UserAgentHeader;
import org.seamless.http.RequestInfo;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteClientInfo extends ClientInfo {
    public final Connection connection;
    public final UpnpHeaders extraResponseHeaders;

    public RemoteClientInfo() {
        this(null);
    }

    public Connection getConnection() {
        return this.connection;
    }

    public UpnpHeaders getExtraResponseHeaders() {
        return this.extraResponseHeaders;
    }

    public InetAddress getLocalAddress() {
        return getConnection().getLocalAddress();
    }

    public InetAddress getRemoteAddress() {
        return getConnection().getRemoteAddress();
    }

    public boolean isPS3Request() {
        return RequestInfo.isPS3Request(getRequestUserAgent(), getRequestHeaders().getFirstHeaderString(UpnpHeader.Type.EXT_AV_CLIENT_INFO));
    }

    public boolean isRequestCancelled() {
        return !getConnection().isOpen();
    }

    public boolean isWMPRequest() {
        return RequestInfo.isWMPRequest(getRequestUserAgent());
    }

    public boolean isXbox360Request() {
        return RequestInfo.isXbox360Request(getRequestUserAgent(), getRequestHeaders().getFirstHeaderString(UpnpHeader.Type.SERVER));
    }

    public void setResponseUserAgent(String str) {
        setResponseUserAgent(new UserAgentHeader(str));
    }

    public void throwIfRequestCancelled() throws InterruptedException {
        if (isRequestCancelled()) {
            throw new InterruptedException("Client's request cancelled");
        }
    }

    @Override // org.fourthline.cling.model.profile.ClientInfo
    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") Remote Address: ");
        sbA.append(getRemoteAddress());
        return sbA.toString();
    }

    public RemoteClientInfo(StreamRequestMessage streamRequestMessage) {
        this(streamRequestMessage != null ? streamRequestMessage.getConnection() : null, streamRequestMessage != null ? streamRequestMessage.getHeaders() : new UpnpHeaders());
    }

    public void setResponseUserAgent(UserAgentHeader userAgentHeader) {
        getExtraResponseHeaders().add(UpnpHeader.Type.USER_AGENT, userAgentHeader);
    }

    public RemoteClientInfo(Connection connection, UpnpHeaders upnpHeaders) {
        super(upnpHeaders);
        this.extraResponseHeaders = new UpnpHeaders();
        this.connection = connection;
    }
}
