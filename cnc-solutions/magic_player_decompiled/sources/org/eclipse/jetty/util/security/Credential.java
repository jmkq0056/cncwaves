package org.eclipse.jetty.util.security;

import android.support.v4.media.f;
import java.io.Serializable;
import java.security.MessageDigest;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Credential implements Serializable {
    private static final Logger LOG = Log.getLogger((Class<?>) Credential.class);
    private static final long serialVersionUID = -7760551052768181572L;

    public static class Crypt extends Credential {
        public static final String __TYPE = "CRYPT:";
        private static final long serialVersionUID = -2027792997664744210L;
        private final String _cooked;

        public Crypt(String str) {
            this._cooked = str.startsWith(__TYPE) ? str.substring(6) : str;
        }

        public static String crypt(String str, String str2) {
            StringBuilder sbA = f.a(__TYPE);
            sbA.append(UnixCrypt.crypt(str2, str));
            return sbA.toString();
        }

        @Override // org.eclipse.jetty.util.security.Credential
        public boolean check(Object obj) {
            if (obj instanceof char[]) {
                obj = new String((char[]) obj);
            }
            if (!(obj instanceof String) && !(obj instanceof Password)) {
                Logger logger = Credential.LOG;
                StringBuilder sbA = f.a("Can't check ");
                sbA.append(obj.getClass());
                sbA.append(" against CRYPT");
                logger.warn(sbA.toString(), new Object[0]);
            }
            String string = obj.toString();
            String str = this._cooked;
            return str.equals(UnixCrypt.crypt(string, str));
        }
    }

    public static class MD5 extends Credential {
        public static final String __TYPE = "MD5:";
        private static MessageDigest __md = null;
        public static final Object __md5Lock = new Object();
        private static final long serialVersionUID = 5533846540822684240L;
        private final byte[] _digest;

        public MD5(String str) {
            this._digest = TypeUtil.parseBytes(str.startsWith(__TYPE) ? str.substring(4) : str, 16);
        }

        public static String digest(String str) {
            byte[] bArrDigest;
            try {
                synchronized (__md5Lock) {
                    if (__md == null) {
                        try {
                            __md = MessageDigest.getInstance("MD5");
                        } catch (Exception e4) {
                            Credential.LOG.warn(e4);
                            return null;
                        }
                    }
                    __md.reset();
                    __md.update(str.getBytes("ISO-8859-1"));
                    bArrDigest = __md.digest();
                }
                return __TYPE + TypeUtil.toString(bArrDigest, 16);
            } catch (Exception e5) {
                Credential.LOG.warn(e5);
                return null;
            }
        }

        @Override // org.eclipse.jetty.util.security.Credential
        public boolean check(Object obj) {
            byte[] bArrDigest;
            try {
                if (obj instanceof char[]) {
                    obj = new String((char[]) obj);
                }
                if (!(obj instanceof Password) && !(obj instanceof String)) {
                    if (!(obj instanceof MD5)) {
                        if (obj instanceof Credential) {
                            return ((Credential) obj).check(this);
                        }
                        Credential.LOG.warn("Can't check " + obj.getClass() + " against MD5", new Object[0]);
                        return false;
                    }
                    MD5 md5 = (MD5) obj;
                    if (this._digest.length != md5._digest.length) {
                        return false;
                    }
                    int i4 = 0;
                    while (true) {
                        byte[] bArr = this._digest;
                        if (i4 >= bArr.length) {
                            return true;
                        }
                        if (bArr[i4] != md5._digest[i4]) {
                            return false;
                        }
                        i4++;
                    }
                }
                synchronized (__md5Lock) {
                    if (__md == null) {
                        __md = MessageDigest.getInstance("MD5");
                    }
                    __md.reset();
                    __md.update(obj.toString().getBytes("ISO-8859-1"));
                    bArrDigest = __md.digest();
                }
                if (bArrDigest != null && bArrDigest.length == this._digest.length) {
                    for (int i5 = 0; i5 < bArrDigest.length; i5++) {
                        if (bArrDigest[i5] != this._digest[i5]) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            } catch (Exception e4) {
                Credential.LOG.warn(e4);
                return false;
            }
        }

        public byte[] getDigest() {
            return this._digest;
        }
    }

    public static Credential getCredential(String str) {
        return str.startsWith(Crypt.__TYPE) ? new Crypt(str) : str.startsWith(MD5.__TYPE) ? new MD5(str) : new Password(str);
    }

    public abstract boolean check(Object obj);
}
