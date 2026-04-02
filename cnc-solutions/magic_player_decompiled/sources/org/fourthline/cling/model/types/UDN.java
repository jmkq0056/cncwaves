package org.fourthline.cling.model.types;

import android.support.v4.media.f;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.UUID;
import java.util.logging.Logger;
import org.eclipse.jetty.util.StringUtil;
import org.fourthline.cling.model.ModelUtil;

/* JADX INFO: loaded from: classes2.dex */
public class UDN {
    public static final String PREFIX = "uuid:";
    private static final Logger log = Logger.getLogger(UDN.class.getName());
    private String identifierString;

    public UDN(String str) {
        this.identifierString = str;
    }

    public static UDN uniqueSystemIdentifier(String str) {
        StringBuilder sb = new StringBuilder();
        if (ModelUtil.ANDROID_RUNTIME) {
            throw new RuntimeException("This method does not create a unique identifier on Android, see the Javadoc and use new UDN(UUID) instead!");
        }
        try {
            sb.append(new String(ModelUtil.getFirstNetworkInterfaceHardwareAddress(), StringUtil.__UTF8));
            try {
                return new UDN(new UUID(new BigInteger(-1, MessageDigest.getInstance("MD5").digest(sb.toString().getBytes(StringUtil.__UTF8))).longValue(), str.hashCode()));
            } catch (Exception e4) {
                throw new RuntimeException(e4);
            }
        } catch (UnsupportedEncodingException e5) {
            throw new RuntimeException(e5);
        }
    }

    public static UDN valueOf(String str) {
        if (str.startsWith("uuid:")) {
            str = str.substring(5);
        }
        return new UDN(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UDN)) {
            return false;
        }
        return this.identifierString.equals(((UDN) obj).identifierString);
    }

    public String getIdentifierString() {
        return this.identifierString;
    }

    public int hashCode() {
        return this.identifierString.hashCode();
    }

    public boolean isUDA11Compliant() {
        try {
            UUID.fromString(this.identifierString);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public String toString() {
        StringBuilder sbA = f.a("uuid:");
        sbA.append(getIdentifierString());
        return sbA.toString();
    }

    public UDN(UUID uuid) {
        this.identifierString = uuid.toString();
    }
}
