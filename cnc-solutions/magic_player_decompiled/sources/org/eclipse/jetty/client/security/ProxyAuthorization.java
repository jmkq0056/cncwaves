package org.eclipse.jetty.client.security;

import android.support.v4.media.f;
import org.eclipse.jetty.client.HttpExchange;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.B64Code;

/* JADX INFO: loaded from: classes2.dex */
public class ProxyAuthorization implements Authentication {
    private Buffer _authorization;

    public ProxyAuthorization(String str, String str2) {
        StringBuilder sbA = f.a("Basic ");
        sbA.append(B64Code.encode(str + ":" + str2, "ISO-8859-1"));
        this._authorization = new ByteArrayBuffer(sbA.toString());
    }

    @Override // org.eclipse.jetty.client.security.Authentication
    public void setCredentials(HttpExchange httpExchange) {
        httpExchange.setRequestHeader(HttpHeaders.PROXY_AUTHORIZATION_BUFFER, this._authorization);
    }
}
