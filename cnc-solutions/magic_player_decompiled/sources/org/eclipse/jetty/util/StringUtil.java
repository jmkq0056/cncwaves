package org.eclipse.jetty.util;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import com.google.zxing.oned.rss.expanded.decoders.DecodedChar;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class StringUtil {
    public static final String ALL_INTERFACES = "0.0.0.0";
    public static final String CRLF = "\r\n";
    public static final String __ISO_8859_1 = "ISO-8859-1";
    public static final String __UTF16 = "UTF-16";
    public static final String __UTF8Alt = "UTF8";
    private static final Logger LOG = Log.getLogger((Class<?>) StringUtil.class);
    public static final String __LINE_SEPARATOR = System.getProperty("line.separator", "\n");
    public static final String __UTF8 = "UTF-8";
    public static final Charset __UTF8_CHARSET = Charset.forName(__UTF8);
    public static final Charset __ISO_8859_1_CHARSET = Charset.forName("ISO-8859-1");
    private static char[] lowercases = {0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', '\r', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, ' ', '!', '\"', '#', DecodedChar.FNC1, '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '<', B64Code.__pad, '>', '?', '@', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '[', '\\', ']', '^', '_', '`', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', MessageFormatter.DELIM_START, '|', MessageFormatter.DELIM_STOP, '~', 127};

    public static void append(StringBuilder sb, String str, int i4, int i5) {
        synchronized (sb) {
            int i6 = i5 + i4;
            while (i4 < i6) {
                if (i4 >= str.length()) {
                    break;
                }
                sb.append(str.charAt(i4));
                i4++;
            }
        }
    }

    public static void append2digits(StringBuffer stringBuffer, int i4) {
        if (i4 < 100) {
            stringBuffer.append((char) ((i4 / 10) + 48));
            stringBuffer.append((char) ((i4 % 10) + 48));
        }
    }

    public static String asciiToLowerCase(String str) {
        int i4;
        char[] charArray;
        char c4;
        int length = str.length();
        while (true) {
            i4 = length - 1;
            if (length <= 0) {
                charArray = null;
                break;
            }
            char cCharAt = str.charAt(i4);
            if (cCharAt <= 127 && cCharAt != (c4 = lowercases[cCharAt])) {
                charArray = str.toCharArray();
                charArray[i4] = c4;
                break;
            }
            length = i4;
        }
        while (true) {
            int i5 = i4 - 1;
            if (i4 <= 0) {
                break;
            }
            if (charArray[i5] <= 127) {
                charArray[i5] = lowercases[charArray[i5]];
            }
            i4 = i5;
        }
        return charArray == null ? str : new String(charArray);
    }

    public static boolean endsWithIgnoreCase(String str, String str2) {
        int length;
        if (str2 == null) {
            return true;
        }
        if (str == null || (length = str.length()) < (length = str2.length())) {
            return false;
        }
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return true;
            }
            int length2 = length2 - 1;
            char cCharAt = str.charAt(length2);
            char cCharAt2 = str2.charAt(i4);
            if (cCharAt != cCharAt2) {
                if (cCharAt <= 127) {
                    cCharAt = lowercases[cCharAt];
                }
                if (cCharAt2 <= 127) {
                    cCharAt2 = lowercases[cCharAt2];
                }
                if (cCharAt != cCharAt2) {
                    return false;
                }
            }
            length = i4;
        }
    }

    public static boolean equals(String str, char[] cArr, int i4, int i5) {
        if (str.length() != i5) {
            return false;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            if (cArr[i4 + i6] != str.charAt(i6)) {
                return false;
            }
        }
        return true;
    }

    public static byte[] getBytes(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (Exception e4) {
            LOG.warn(e4);
            return str.getBytes();
        }
    }

    public static int indexFrom(String str, String str2) {
        for (int i4 = 0; i4 < str.length(); i4++) {
            if (str2.indexOf(str.charAt(i4)) >= 0) {
                return i4;
            }
        }
        return -1;
    }

    public static boolean isUTF8(String str) {
        return __UTF8.equalsIgnoreCase(str) || __UTF8Alt.equalsIgnoreCase(str);
    }

    public static String nonNull(String str) {
        return str == null ? "" : str;
    }

    public static String printable(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i4 = 0; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (!Character.isISOControl(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static String replace(String str, String str2, String str3) {
        int length = 0;
        int iIndexOf = str.indexOf(str2, 0);
        if (iIndexOf == -1) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str3.length() + str.length());
        do {
            sb.append(str.substring(length, iIndexOf));
            sb.append(str3);
            length = str2.length() + iIndexOf;
            iIndexOf = str.indexOf(str2, length);
        } while (iIndexOf != -1);
        if (length < str.length()) {
            sb.append(str.substring(length, str.length()));
        }
        return sb.toString();
    }

    public static String sidBytesToString(byte[] bArr) {
        StringBuilder sbA = f.a("S-");
        sbA.append(Byte.toString(bArr[0]));
        sbA.append('-');
        StringBuilder sb = new StringBuilder();
        for (int i4 = 2; i4 <= 7; i4++) {
            sb.append(Integer.toHexString(bArr[i4] & 255));
        }
        sbA.append(Long.parseLong(sb.toString(), 16));
        byte b4 = bArr[1];
        for (int i5 = 0; i5 < b4; i5++) {
            int i6 = i5 * 4;
            sb.setLength(0);
            sb.append(String.format("%02X%02X%02X%02X", Integer.valueOf(bArr[i6 + 11] & 255), Integer.valueOf(bArr[i6 + 10] & 255), Integer.valueOf(bArr[i6 + 9] & 255), Integer.valueOf(bArr[i6 + 8] & 255)));
            sbA.append('-');
            sbA.append(Long.parseLong(sb.toString(), 16));
        }
        return sbA.toString();
    }

    public static byte[] sidStringToBytes(String str) {
        String[] strArrSplit = str.split("-");
        int length = strArrSplit.length - 3;
        byte[] bArr = new byte[(length * 4) + 8];
        int i4 = 0;
        bArr[0] = (byte) Integer.parseInt(strArrSplit[1]);
        bArr[1] = (byte) length;
        int i5 = 2;
        String hexString = Long.toHexString(Long.parseLong(strArrSplit[2]));
        while (hexString.length() < 12) {
            hexString = a.a("0", hexString);
        }
        while (i4 < hexString.length()) {
            int i6 = i4 + 2;
            bArr[i5] = (byte) Integer.parseInt(hexString.substring(i4, i6), 16);
            i5++;
            i4 = i6;
        }
        for (int i7 = 3; i7 < strArrSplit.length; i7++) {
            String hexString2 = Long.toHexString(Long.parseLong(strArrSplit[i7]));
            while (hexString2.length() < 8) {
                hexString2 = a.a("0", hexString2);
            }
            int length2 = hexString2.length();
            while (length2 > 0) {
                int i8 = length2 - 2;
                bArr[i5] = (byte) Integer.parseInt(hexString2.substring(i8, length2), 16);
                i5++;
                length2 = i8;
            }
        }
        return bArr;
    }

    public static boolean startsWithIgnoreCase(String str, String str2) {
        if (str2 == null) {
            return true;
        }
        if (str == null || str.length() < str2.length()) {
            return false;
        }
        for (int i4 = 0; i4 < str2.length(); i4++) {
            char cCharAt = str.charAt(i4);
            char cCharAt2 = str2.charAt(i4);
            if (cCharAt != cCharAt2) {
                if (cCharAt <= 127) {
                    cCharAt = lowercases[cCharAt];
                }
                if (cCharAt2 <= 127) {
                    cCharAt2 = lowercases[cCharAt2];
                }
                if (cCharAt != cCharAt2) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String toString(byte[] bArr, int i4, int i5, String str) {
        try {
            return new String(bArr, i4, i5, str);
        } catch (UnsupportedEncodingException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    public static String toUTF8String(byte[] bArr, int i4, int i5) {
        try {
            return new String(bArr, i4, i5, __UTF8);
        } catch (UnsupportedEncodingException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    public static String unquote(String str) {
        return QuotedStringTokenizer.unquote(str);
    }

    public static void append2digits(StringBuilder sb, int i4) {
        if (i4 < 100) {
            sb.append((char) ((i4 / 10) + 48));
            sb.append((char) ((i4 % 10) + 48));
        }
    }

    public static byte[] getBytes(String str, String str2) {
        try {
            return str.getBytes(str2);
        } catch (Exception e4) {
            LOG.warn(e4);
            return str.getBytes();
        }
    }

    public static void append(StringBuilder sb, byte b4, int i4) {
        int i5 = b4 & 255;
        int i6 = ((i5 / i4) % i4) + 48;
        if (i6 > 57) {
            i6 = ((i6 - 48) - 10) + 97;
        }
        sb.append((char) i6);
        int i7 = (i5 % i4) + 48;
        if (i7 > 57) {
            i7 = ((i7 - 48) - 10) + 97;
        }
        sb.append((char) i7);
    }

    public static String printable(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < bArr.length; i4++) {
            char c4 = (char) bArr[i4];
            if (!Character.isWhitespace(c4) && (c4 <= ' ' || c4 >= 127)) {
                sb.append("0x");
                TypeUtil.toHex(bArr[i4], (Appendable) sb);
            } else {
                sb.append(c4);
            }
        }
        return sb.toString();
    }
}
