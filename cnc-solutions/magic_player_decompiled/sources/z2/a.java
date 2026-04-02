package z2;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Vector;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import x2.r;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f4199c = {"com.ibm.ssl.protocol", "com.ibm.ssl.contextProvider", "com.ibm.ssl.keyStore", "com.ibm.ssl.keyStorePassword", "com.ibm.ssl.keyStoreType", "com.ibm.ssl.keyStoreProvider", "com.ibm.ssl.keyManager", "com.ibm.ssl.trustStore", "com.ibm.ssl.trustStorePassword", "com.ibm.ssl.trustStoreType", "com.ibm.ssl.trustStoreProvider", "com.ibm.ssl.trustManager", "com.ibm.ssl.enabledCipherSuites", "com.ibm.ssl.clientAuthentication"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f4200d = {-99, -89, -39, -128, 5, -72, -119, -100};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Hashtable f4201a = new Hashtable();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Properties f4202b;

    public static char[] b(String str) {
        try {
            String strSubstring = str.substring(5);
            char[] cArr = b.f4203a;
            byte[] bytes = strSubstring.getBytes();
            int length = bytes.length;
            int i4 = (length * 3) / 4;
            byte[] bArr = new byte[i4];
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (length < 4) {
                    break;
                }
                int i7 = i5;
                long jA = b.a(bytes, i7, 4);
                length -= 4;
                i5 = i7 + 4;
                for (int i8 = 2; i8 >= 0; i8--) {
                    bArr[i6 + i8] = (byte) (jA & 255);
                    jA >>= 8;
                }
                i6 += 3;
            }
            if (length == 3) {
                long jA2 = b.a(bytes, i5, 3);
                int i9 = 1;
                while (i9 >= 0) {
                    bArr[i6 + i9] = (byte) (jA2 & 255);
                    jA2 >>= 8;
                    i9--;
                    i5 = i5;
                }
            }
            int i10 = i5;
            if (length == 2) {
                bArr[i6] = (byte) (b.a(bytes, i10, 2) & 255);
            }
            for (int i11 = 0; i11 < i4; i11++) {
                byte b4 = bArr[i11];
                byte[] bArr2 = f4200d;
                bArr[i11] = (byte) ((b4 ^ bArr2[i11 % bArr2.length]) & 255);
            }
            char[] cArr2 = new char[i4 / 2];
            int i12 = 0;
            int i13 = 0;
            while (i13 < i4) {
                int i14 = i13 + 1;
                cArr2[i12] = (char) ((bArr[i13] & 255) + ((bArr[i14] & 255) << 8));
                i12++;
                i13 = i14 + 1;
            }
            return cArr2;
        } catch (Exception unused) {
            return null;
        }
    }

    public SSLSocketFactory a(String str) throws r {
        KeyManager[] keyManagers;
        TrustManager[] trustManagers;
        String strJ = j(null);
        if (strJ == null) {
            strJ = "TLS";
        }
        String strD = d(null);
        try {
            SSLContext sSLContext = strD == null ? SSLContext.getInstance(strJ) : SSLContext.getInstance(strJ, strD);
            String strI = i(null, "com.ibm.ssl.keyStore", null);
            if (strI == null) {
                strI = i(null, "com.ibm.ssl.keyStore", "javax.net.ssl.keyStore");
            }
            char[] cArrF = f(null);
            String strH = h(null);
            if (strH == null) {
                strH = KeyStore.getDefaultType();
            }
            String defaultAlgorithm = KeyManagerFactory.getDefaultAlgorithm();
            String strG = g(null);
            String strE = e(null);
            if (strE != null) {
                defaultAlgorithm = strE;
            }
            if (strI == null || strH == null || defaultAlgorithm == null) {
                keyManagers = null;
            } else {
                try {
                    KeyStore keyStore = KeyStore.getInstance(strH);
                    keyStore.load(new FileInputStream(strI), cArrF);
                    KeyManagerFactory keyManagerFactory = strG != null ? KeyManagerFactory.getInstance(defaultAlgorithm, strG) : KeyManagerFactory.getInstance(defaultAlgorithm);
                    keyManagerFactory.init(keyStore, cArrF);
                    keyManagers = keyManagerFactory.getKeyManagers();
                } catch (FileNotFoundException e4) {
                    throw new r(e4);
                } catch (IOException e5) {
                    throw new r(e5);
                } catch (KeyStoreException e6) {
                    throw new r(e6);
                } catch (UnrecoverableKeyException e7) {
                    throw new r(e7);
                } catch (CertificateException e8) {
                    throw new r(e8);
                }
            }
            String strL = l(null);
            char[] cArrM = m(null);
            String strO = o(null);
            if (strO == null) {
                strO = KeyStore.getDefaultType();
            }
            String defaultAlgorithm2 = TrustManagerFactory.getDefaultAlgorithm();
            String strN = n(null);
            String strK = k(null);
            if (strK != null) {
                defaultAlgorithm2 = strK;
            }
            if (strL == null || strO == null || defaultAlgorithm2 == null) {
                trustManagers = null;
            } else {
                try {
                    KeyStore keyStore2 = KeyStore.getInstance(strO);
                    keyStore2.load(new FileInputStream(strL), cArrM);
                    TrustManagerFactory trustManagerFactory = strN != null ? TrustManagerFactory.getInstance(defaultAlgorithm2, strN) : TrustManagerFactory.getInstance(defaultAlgorithm2);
                    trustManagerFactory.init(keyStore2);
                    trustManagers = trustManagerFactory.getTrustManagers();
                } catch (FileNotFoundException e9) {
                    throw new r(e9);
                } catch (IOException e10) {
                    throw new r(e10);
                } catch (KeyStoreException e11) {
                    throw new r(e11);
                } catch (CertificateException e12) {
                    throw new r(e12);
                }
            }
            sSLContext.init(keyManagers, trustManagers, null);
            return sSLContext.getSocketFactory();
        } catch (KeyManagementException e13) {
            throw new r(e13);
        } catch (NoSuchAlgorithmException e14) {
            throw new r(e14);
        } catch (NoSuchProviderException e15) {
            throw new r(e15);
        }
    }

    public String[] c(String str) {
        String strI = i(null, "com.ibm.ssl.enabledCipherSuites", null);
        if (strI == null) {
            return null;
        }
        Vector vector = new Vector();
        int iIndexOf = strI.indexOf(44);
        int i4 = 0;
        while (iIndexOf > -1) {
            vector.add(strI.substring(i4, iIndexOf));
            i4 = iIndexOf + 1;
            iIndexOf = strI.indexOf(44, i4);
        }
        vector.add(strI.substring(i4));
        String[] strArr = new String[vector.size()];
        vector.toArray(strArr);
        return strArr;
    }

    public String d(String str) {
        return i(str, "com.ibm.ssl.contextProvider", null);
    }

    public String e(String str) {
        return i(str, "com.ibm.ssl.keyManager", "ssl.KeyManagerFactory.algorithm");
    }

    public char[] f(String str) {
        String strI = i(str, "com.ibm.ssl.keyStorePassword", "javax.net.ssl.keyStorePassword");
        if (strI != null) {
            return strI.startsWith("{xor}") ? b(strI) : strI.toCharArray();
        }
        return null;
    }

    public String g(String str) {
        return i(str, "com.ibm.ssl.keyStoreProvider", null);
    }

    public String h(String str) {
        return i(str, "com.ibm.ssl.keyStoreType", "javax.net.ssl.keyStoreType");
    }

    public final String i(String str, String str2, String str3) {
        Properties properties;
        String property = null;
        Properties properties2 = str != null ? (Properties) this.f4201a.get(str) : null;
        if ((properties2 == null || (property = properties2.getProperty(str2)) == null) && (properties = this.f4202b) != null) {
            property = properties.getProperty(str2);
        }
        return (property == null && str3 != null) ? System.getProperty(str3) : property;
    }

    public String j(String str) {
        return i(str, "com.ibm.ssl.protocol", null);
    }

    public String k(String str) {
        return i(str, "com.ibm.ssl.trustManager", "ssl.TrustManagerFactory.algorithm");
    }

    public String l(String str) {
        String strI = i(str, "com.ibm.ssl.trustStore", "javax.net.ssl.trustStore");
        try {
            return URLDecoder.decode(strI, StandardCharsets.UTF_8.name());
        } catch (Exception unused) {
            return strI;
        }
    }

    public char[] m(String str) {
        String strI = i(str, "com.ibm.ssl.trustStorePassword", "javax.net.ssl.trustStorePassword");
        if (strI != null) {
            return strI.startsWith("{xor}") ? b(strI) : strI.toCharArray();
        }
        return null;
    }

    public String n(String str) {
        return i(str, "com.ibm.ssl.trustStoreProvider", null);
    }

    public String o(String str) {
        return i(str, "com.ibm.ssl.trustStoreType", null);
    }
}
