package org.eclipse.jetty.util;

import androidx.appcompat.view.a;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class URIUtil implements Cloneable {
    public static final String HTTP = "http";
    public static final String HTTPS = "https";
    public static final String HTTPS_COLON = "https:";
    public static final String HTTP_COLON = "http:";
    public static final String SLASH = "/";
    public static final String __CHARSET = System.getProperty("org.eclipse.jetty.util.URI.charset", StringUtil.__UTF8);

    private URIUtil() {
    }

    public static String addPaths(String str, String str2) {
        if (str == null || str.length() == 0) {
            return (str == null || str2 != null) ? str2 : str;
        }
        if (str2 == null || str2.length() == 0) {
            return str;
        }
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(63);
        }
        if (iIndexOf == 0) {
            return a.a(str2, str);
        }
        if (iIndexOf < 0) {
            iIndexOf = str.length();
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + 2);
        sb.append(str);
        int i4 = iIndexOf - 1;
        if (sb.charAt(i4) == '/') {
            if (str2.startsWith("/")) {
                sb.deleteCharAt(i4);
                sb.insert(i4, str2);
            } else {
                sb.insert(iIndexOf, str2);
            }
        } else if (str2.startsWith("/")) {
            sb.insert(iIndexOf, str2);
        } else {
            sb.insert(iIndexOf, '/');
            sb.insert(iIndexOf + 1, str2);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0128 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0072 A[PHI: r8 r10
      0x0072: PHI (r8v5 int) = (r8v2 int), (r8v7 int), (r8v8 int) binds: [B:76:0x00da, B:37:0x0070, B:62:0x00b6] A[DONT_GENERATE, DONT_INLINE]
      0x0072: PHI (r10v17 int) = (r10v11 int), (r10v21 int), (r10v24 int) binds: [B:76:0x00da, B:37:0x0070, B:62:0x00b6] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String canonicalPath(java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.URIUtil.canonicalPath(java.lang.String):java.lang.String");
    }

    public static String compactPath(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        int length = str.length();
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == '/') {
                i5++;
                if (i5 == 2) {
                    break;
                }
            } else {
                if (cCharAt == '?') {
                    return str;
                }
                i5 = 0;
            }
            i4++;
        }
        if (i5 < 2) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str.length());
        stringBuffer.append((CharSequence) str, 0, i4);
        while (true) {
            if (i4 >= length) {
                break;
            }
            char cCharAt2 = str.charAt(i4);
            if (cCharAt2 == '/') {
                int i6 = i5 + 1;
                if (i5 == 0) {
                    stringBuffer.append(cCharAt2);
                }
                i5 = i6;
            } else {
                if (cCharAt2 == '?') {
                    stringBuffer.append((CharSequence) str, i4, length);
                    break;
                }
                stringBuffer.append(cCharAt2);
                i5 = 0;
            }
            i4++;
        }
        return stringBuffer.toString();
    }

    public static String decodePath(String str) {
        String str2;
        String str3;
        int i4;
        char[] cArr = null;
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = null;
        int length2 = 0;
        int i5 = 0;
        int length3 = 0;
        while (true) {
            if (length2 >= length) {
                break;
            }
            char cCharAt = str.charAt(length2);
            if (cCharAt == '%' && (i4 = length2 + 2) < length) {
                if (cArr == null) {
                    cArr = new char[length];
                    bArr = new byte[length];
                    str.getChars(0, length2, cArr, 0);
                }
                bArr[i5] = (byte) (TypeUtil.parseInt(str, length2 + 1, 2, 16) & 255);
                i5++;
                length2 = i4;
            } else if (cCharAt == ';') {
                if (cArr == null) {
                    cArr = new char[length];
                    str.getChars(0, length2, cArr, 0);
                }
            } else if (bArr == null) {
                length3++;
            } else {
                if (i5 > 0) {
                    try {
                        str3 = new String(bArr, 0, i5, __CHARSET);
                    } catch (UnsupportedEncodingException unused) {
                        str3 = new String(bArr, 0, i5);
                    }
                    str3.getChars(0, str3.length(), cArr, length3);
                    length3 += str3.length();
                    i5 = 0;
                }
                cArr[length3] = cCharAt;
                length3++;
            }
            length2++;
        }
        length2 = length3;
        if (cArr == null) {
            return str;
        }
        if (i5 > 0) {
            try {
                str2 = new String(bArr, 0, i5, __CHARSET);
            } catch (UnsupportedEncodingException unused2) {
                str2 = new String(bArr, 0, i5);
            }
            str2.getChars(0, str2.length(), cArr, length2);
            length2 += str2.length();
        }
        return new String(cArr, 0, length2);
    }

    public static String encodePath(String str) {
        StringBuilder sbEncodePath;
        return (str == null || str.length() == 0 || (sbEncodePath = encodePath(null, str)) == null) ? str : sbEncodePath.toString();
    }

    public static StringBuilder encodeString(StringBuilder sb, String str, String str2) {
        if (sb == null) {
            for (int i4 = 0; i4 < str.length(); i4++) {
                char cCharAt = str.charAt(i4);
                if (cCharAt == '%' || str2.indexOf(cCharAt) >= 0) {
                    sb = new StringBuilder(str.length() << 1);
                    break;
                }
            }
            if (sb == null) {
                return null;
            }
        }
        synchronized (sb) {
            for (int i5 = 0; i5 < str.length(); i5++) {
                char cCharAt2 = str.charAt(i5);
                if (cCharAt2 == '%' || str2.indexOf(cCharAt2) >= 0) {
                    sb.append('%');
                    StringUtil.append(sb, (byte) (cCharAt2 & 255), 16);
                } else {
                    sb.append(cCharAt2);
                }
            }
        }
        return sb;
    }

    public static boolean hasScheme(String str) {
        for (int i4 = 0; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == ':') {
                return true;
            }
            if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && (i4 <= 0 || !((cCharAt >= '0' && cCharAt <= '9') || cCharAt == '.' || cCharAt == '+' || cCharAt == '-')))) {
                break;
            }
        }
        return false;
    }

    public static String parentPath(String str) {
        int iLastIndexOf;
        if (str == null || "/".equals(str) || (iLastIndexOf = str.lastIndexOf(47, str.length() - 2)) < 0) {
            return null;
        }
        return str.substring(0, iLastIndexOf + 1);
    }

    public static StringBuilder encodePath(StringBuilder sb, String str) {
        StringBuilder sb2;
        byte[] bytes;
        byte[] bArr = null;
        int i4 = 0;
        if (sb == null) {
            for (int i5 = 0; i5 < str.length(); i5++) {
                char cCharAt = str.charAt(i5);
                if (cCharAt == ' ' || cCharAt == '%' || cCharAt == '\'' || cCharAt == '\"' || cCharAt == '#' || cCharAt == ';' || cCharAt == '<' || cCharAt == '>' || cCharAt == '?') {
                    sb2 = new StringBuilder(str.length() * 2);
                    break;
                }
                if (cCharAt > 127) {
                    try {
                        bytes = str.getBytes(__CHARSET);
                        sb2 = new StringBuilder(str.length() * 2);
                        break;
                    } catch (UnsupportedEncodingException e4) {
                        throw new IllegalStateException(e4);
                    }
                }
            }
            sb2 = sb;
            bytes = null;
            if (sb2 == null) {
                return null;
            }
            bArr = bytes;
        } else {
            sb2 = sb;
        }
        synchronized (sb2) {
            if (bArr != null) {
                while (i4 < bArr.length) {
                    byte b4 = bArr[i4];
                    if (b4 == 32) {
                        sb2.append("%20");
                    } else if (b4 == 37) {
                        sb2.append("%25");
                    } else if (b4 == 39) {
                        sb2.append("%27");
                    } else if (b4 == 34) {
                        sb2.append("%22");
                    } else if (b4 == 35) {
                        sb2.append("%23");
                    } else if (b4 == 59) {
                        sb2.append("%3B");
                    } else if (b4 == 60) {
                        sb2.append("%3C");
                    } else if (b4 == 62) {
                        sb2.append("%3E");
                    } else if (b4 == 63) {
                        sb2.append("%3F");
                    } else if (b4 < 0) {
                        sb2.append('%');
                        TypeUtil.toHex(b4, (Appendable) sb2);
                    } else {
                        sb2.append((char) b4);
                    }
                    i4++;
                }
            } else {
                while (i4 < str.length()) {
                    char cCharAt2 = str.charAt(i4);
                    if (cCharAt2 == ' ') {
                        sb2.append("%20");
                    } else if (cCharAt2 == '%') {
                        sb2.append("%25");
                    } else if (cCharAt2 == '\'') {
                        sb2.append("%27");
                    } else if (cCharAt2 == '\"') {
                        sb2.append("%22");
                    } else if (cCharAt2 == '#') {
                        sb2.append("%23");
                    } else if (cCharAt2 == ';') {
                        sb2.append("%3B");
                    } else if (cCharAt2 == '<') {
                        sb2.append("%3C");
                    } else if (cCharAt2 == '>') {
                        sb2.append("%3E");
                    } else if (cCharAt2 != '?') {
                        sb2.append(cCharAt2);
                    } else {
                        sb2.append("%3F");
                    }
                    i4++;
                }
            }
        }
        return sb2;
    }

    public static String decodePath(byte[] bArr, int i4, int i5) {
        int i6;
        byte[] bArr2 = null;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            if (i7 >= i5) {
                break;
            }
            int i9 = i7 + i4;
            byte b4 = bArr[i9];
            if (b4 == 37 && (i6 = i7 + 2) < i5) {
                b4 = (byte) (TypeUtil.parseInt(bArr, i9 + 1, 2, 16) & 255);
                i7 = i6;
            } else {
                if (b4 == 59) {
                    i5 = i7;
                    break;
                }
                if (bArr2 == null) {
                    i8++;
                }
                i7++;
            }
            if (bArr2 == null) {
                bArr2 = new byte[i5];
                for (int i10 = 0; i10 < i8; i10++) {
                    bArr2[i10] = bArr[i10 + i4];
                }
            }
            bArr2[i8] = b4;
            i8++;
            i7++;
        }
        if (bArr2 == null) {
            return StringUtil.toString(bArr, i4, i5, __CHARSET);
        }
        return StringUtil.toString(bArr2, 0, i8, __CHARSET);
    }
}
