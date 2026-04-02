package org.eclipse.jetty.client.security;

import androidx.core.app.NotificationCompat;
import java.security.MessageDigest;
import java.util.Map;
import org.eclipse.jetty.client.HttpExchange;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpTokens;
import org.eclipse.jetty.util.B64Code;
import org.eclipse.jetty.util.TypeUtil;

/* JADX INFO: loaded from: classes2.dex */
public class DigestAuthentication implements Authentication {
    private static final String NC = "00000001";
    public Map details;
    public Realm securityRealm;

    public DigestAuthentication(Realm realm, Map map) {
        this.securityRealm = realm;
        this.details = map;
    }

    private static String encode(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < bArr.length; i4++) {
            sb.append(Integer.toHexString((bArr[i4] & 240) >>> 4));
            sb.append(Integer.toHexString(bArr[i4] & 15));
        }
        return sb.toString();
    }

    public String newCnonce(HttpExchange httpExchange, Realm realm, Map map) {
        try {
            return encode(MessageDigest.getInstance("MD5").digest(String.valueOf(System.currentTimeMillis()).getBytes("ISO-8859-1")));
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public String newResponse(String str, HttpExchange httpExchange, Realm realm, Map map) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(realm.getPrincipal().getBytes("ISO-8859-1"));
            messageDigest.update(HttpTokens.COLON);
            messageDigest.update(String.valueOf(map.get("realm")).getBytes("ISO-8859-1"));
            messageDigest.update(HttpTokens.COLON);
            messageDigest.update(realm.getCredentials().getBytes("ISO-8859-1"));
            byte[] bArrDigest = messageDigest.digest();
            messageDigest.reset();
            messageDigest.update(httpExchange.getMethod().getBytes("ISO-8859-1"));
            messageDigest.update(HttpTokens.COLON);
            messageDigest.update(httpExchange.getURI().getBytes("ISO-8859-1"));
            byte[] bArrDigest2 = messageDigest.digest();
            messageDigest.update(TypeUtil.toString(bArrDigest, 16).getBytes("ISO-8859-1"));
            messageDigest.update(HttpTokens.COLON);
            messageDigest.update(String.valueOf(map.get("nonce")).getBytes("ISO-8859-1"));
            messageDigest.update(HttpTokens.COLON);
            messageDigest.update(NC.getBytes("ISO-8859-1"));
            messageDigest.update(HttpTokens.COLON);
            messageDigest.update(str.getBytes("ISO-8859-1"));
            messageDigest.update(HttpTokens.COLON);
            messageDigest.update(String.valueOf(map.get("qop")).getBytes("ISO-8859-1"));
            messageDigest.update(HttpTokens.COLON);
            messageDigest.update(TypeUtil.toString(bArrDigest2, 16).getBytes("ISO-8859-1"));
            return encode(messageDigest.digest());
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // org.eclipse.jetty.client.security.Authentication
    public void setCredentials(HttpExchange httpExchange) {
        StringBuilder sb = new StringBuilder();
        sb.append("Digest");
        sb.append(" ");
        sb.append("username");
        sb.append(B64Code.__pad);
        sb.append('\"');
        sb.append(this.securityRealm.getPrincipal());
        sb.append('\"');
        sb.append(", ");
        sb.append("realm");
        sb.append(B64Code.__pad);
        sb.append('\"');
        sb.append(String.valueOf(this.details.get("realm")));
        sb.append('\"');
        sb.append(", ");
        sb.append("nonce");
        sb.append(B64Code.__pad);
        sb.append('\"');
        sb.append(String.valueOf(this.details.get("nonce")));
        sb.append('\"');
        sb.append(", ");
        sb.append(NotificationCompat.MessagingStyle.Message.KEY_DATA_URI);
        sb.append(B64Code.__pad);
        sb.append('\"');
        sb.append(httpExchange.getURI());
        sb.append('\"');
        sb.append(", ");
        sb.append("algorithm");
        sb.append(B64Code.__pad);
        sb.append(String.valueOf(this.details.get("algorithm")));
        String strNewCnonce = newCnonce(httpExchange, this.securityRealm, this.details);
        sb.append(", ");
        sb.append("response");
        sb.append(B64Code.__pad);
        sb.append('\"');
        sb.append(newResponse(strNewCnonce, httpExchange, this.securityRealm, this.details));
        sb.append('\"');
        sb.append(", ");
        sb.append("qop");
        sb.append(B64Code.__pad);
        sb.append(String.valueOf(this.details.get("qop")));
        sb.append(", ");
        sb.append("nc");
        sb.append(B64Code.__pad);
        sb.append(NC);
        sb.append(", ");
        sb.append("cnonce");
        sb.append(B64Code.__pad);
        sb.append('\"');
        sb.append(strNewCnonce);
        sb.append('\"');
        httpExchange.setRequestHeader(HttpHeaders.AUTHORIZATION, new String(sb.toString().getBytes("ISO-8859-1")));
    }
}
