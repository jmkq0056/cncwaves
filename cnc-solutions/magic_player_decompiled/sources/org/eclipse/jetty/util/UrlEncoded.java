package org.eclipse.jetty.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jetty.util.Utf8Appendable;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class UrlEncoded extends MultiMap implements Cloneable {
    private static final Logger LOG = Log.getLogger((Class<?>) UrlEncoded.class);
    public static final String ENCODING = System.getProperty("org.eclipse.jetty.util.UrlEncoding.charset", StringUtil.__UTF8);

    public UrlEncoded(UrlEncoded urlEncoded) {
        super((MultiMap) urlEncoded);
    }

    public static void decode88591To(InputStream inputStream, MultiMap multiMap, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        synchronized (multiMap) {
            StringBuffer stringBuffer = new StringBuffer();
            String string = null;
            int i9 = 0;
            while (true) {
                int i10 = inputStream.read();
                if (i10 >= 0) {
                    char c4 = (char) i10;
                    if (c4 == '%') {
                        int i11 = inputStream.read();
                        if (117 == i11) {
                            int i12 = inputStream.read();
                            if (i12 >= 0 && (i7 = inputStream.read()) >= 0 && (i8 = inputStream.read()) >= 0) {
                                stringBuffer.append(Character.toChars((TypeUtil.convertHexDigit(i11) << 12) + (TypeUtil.convertHexDigit(i12) << 8) + (TypeUtil.convertHexDigit(i7) << 4) + TypeUtil.convertHexDigit(i8)));
                            }
                        } else if (i11 >= 0 && (i6 = inputStream.read()) >= 0) {
                            stringBuffer.append((char) ((TypeUtil.convertHexDigit(i11) << 4) + TypeUtil.convertHexDigit(i6)));
                        }
                    } else if (c4 == '&') {
                        String string2 = stringBuffer.length() == 0 ? "" : stringBuffer.toString();
                        stringBuffer.setLength(0);
                        if (string != null) {
                            multiMap.add(string, string2);
                        } else if (string2 != null && string2.length() > 0) {
                            multiMap.add(string2, "");
                        }
                        if (i5 > 0 && multiMap.size() > i5) {
                            throw new IllegalStateException(String.format("Form with too many keys [%d > %d]", Integer.valueOf(multiMap.size()), Integer.valueOf(i5)));
                        }
                        string = null;
                    } else if (c4 == '+') {
                        stringBuffer.append(' ');
                    } else if (c4 == '=' && string == null) {
                        string = stringBuffer.toString();
                        stringBuffer.setLength(0);
                    } else {
                        stringBuffer.append(c4);
                    }
                    if (i4 >= 0 && (i9 = i9 + 1) > i4) {
                        throw new IllegalStateException("Form too large");
                    }
                } else if (string != null) {
                    Object string3 = stringBuffer.length() == 0 ? "" : stringBuffer.toString();
                    stringBuffer.setLength(0);
                    multiMap.add(string, string3);
                } else if (stringBuffer.length() > 0) {
                    multiMap.add(stringBuffer.toString(), "");
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c9 A[Catch: UnsupportedEncodingException -> 0x0103, LOOP:1: B:23:0x0051->B:58:0x00c9, LOOP_END, TryCatch #2 {UnsupportedEncodingException -> 0x0103, blocks: (B:10:0x0026, B:16:0x0034, B:17:0x003c, B:65:0x00f7, B:20:0x0045, B:21:0x004d, B:29:0x0061, B:34:0x006d, B:58:0x00c9, B:48:0x00a2, B:39:0x008a, B:44:0x0095, B:49:0x00ac, B:52:0x00b7, B:54:0x00c3, B:53:0x00be, B:59:0x00d5, B:61:0x00e3, B:63:0x00e9, B:64:0x00f4, B:70:0x0109, B:73:0x0110, B:75:0x0117), top: B:145:0x0026 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String decodeString(java.lang.String r16, int r17, int r18, java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.UrlEncoded.decodeString(java.lang.String, int, int, java.lang.String):java.lang.String");
    }

    public static void decodeTo(String str, MultiMap multiMap, String str2) {
        decodeTo(str, multiMap, str2, -1);
    }

    public static void decodeUtf16To(InputStream inputStream, MultiMap multiMap, int i4, int i5) throws IOException {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, StringUtil.__UTF16);
        StringWriter stringWriter = new StringWriter(8192);
        IO.copy(inputStreamReader, stringWriter, i4);
        decodeTo(stringWriter.getBuffer().toString(), multiMap, StringUtil.__UTF16, i5);
    }

    public static void decodeUtf8To(byte[] bArr, int i4, int i5, MultiMap multiMap) {
        decodeUtf8To(bArr, i4, i5, multiMap, new Utf8StringBuilder());
    }

    public static String encodeString(String str) {
        return encodeString(str, ENCODING);
    }

    public Object clone() {
        return new UrlEncoded(this);
    }

    public void decode(String str) {
        decodeTo(str, this, ENCODING, -1);
    }

    public String encode() {
        return encode(ENCODING, false);
    }

    public UrlEncoded() {
        super(6);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void decodeTo(java.lang.String r9, org.eclipse.jetty.util.MultiMap r10, java.lang.String r11, int r12) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.UrlEncoded.decodeTo(java.lang.String, org.eclipse.jetty.util.MultiMap, java.lang.String, int):void");
    }

    public static void decodeUtf8To(byte[] bArr, int i4, int i5, MultiMap multiMap, Utf8StringBuilder utf8StringBuilder) {
        int i6;
        StringBuilder stringBuilder;
        synchronized (multiMap) {
            int i7 = i5 + i4;
            String string = null;
            while (i4 < i7) {
                try {
                    byte b4 = bArr[i4];
                    char c4 = (char) (b4 & 255);
                    if (c4 == '%') {
                        if (i4 + 2 < i7) {
                            int i8 = i4 + 1;
                            if (117 != bArr[i8]) {
                                i6 = i8 + 1;
                                utf8StringBuilder.append((byte) ((TypeUtil.convertHexDigit(bArr[i8]) << 4) + TypeUtil.convertHexDigit(bArr[i6])));
                            } else if (i8 + 4 < i7) {
                                try {
                                    stringBuilder = utf8StringBuilder.getStringBuilder();
                                    i6 = i8 + 1;
                                } catch (Utf8Appendable.NotUtf8Exception e4) {
                                    e = e4;
                                    i4 = i8;
                                }
                                try {
                                    int iConvertHexDigit = TypeUtil.convertHexDigit(bArr[i6]) << 12;
                                    int i9 = i6 + 1;
                                    int iConvertHexDigit2 = iConvertHexDigit + (TypeUtil.convertHexDigit(bArr[i9]) << 8);
                                    int i10 = i9 + 1;
                                    int iConvertHexDigit3 = iConvertHexDigit2 + (TypeUtil.convertHexDigit(bArr[i10]) << 4);
                                    i6 = i10 + 1;
                                    stringBuilder.append(Character.toChars(iConvertHexDigit3 + TypeUtil.convertHexDigit(bArr[i6])));
                                } catch (Utf8Appendable.NotUtf8Exception e5) {
                                    int i11 = i6;
                                    e = e5;
                                    i4 = i11;
                                    Logger logger = LOG;
                                    logger.warn(e.toString(), new Object[0]);
                                    logger.debug(e);
                                }
                            } else {
                                utf8StringBuilder.getStringBuilder().append(Utf8Appendable.REPLACEMENT);
                            }
                            i4 = i6;
                        } else {
                            utf8StringBuilder.getStringBuilder().append(Utf8Appendable.REPLACEMENT);
                        }
                        i4 = i7;
                    } else if (c4 == '&') {
                        String string2 = utf8StringBuilder.length() == 0 ? "" : utf8StringBuilder.toString();
                        utf8StringBuilder.reset();
                        if (string != null) {
                            multiMap.add(string, string2);
                        } else if (string2 != null && string2.length() > 0) {
                            multiMap.add(string2, "");
                        }
                        string = null;
                    } else if (c4 == '+') {
                        utf8StringBuilder.append((byte) 32);
                    } else if (c4 != '=') {
                        try {
                            utf8StringBuilder.append(b4);
                        } catch (Utf8Appendable.NotUtf8Exception e6) {
                            e = e6;
                            Logger logger2 = LOG;
                            logger2.warn(e.toString(), new Object[0]);
                            logger2.debug(e);
                        }
                    } else if (string != null) {
                        utf8StringBuilder.append(b4);
                    } else {
                        string = utf8StringBuilder.toString();
                        utf8StringBuilder.reset();
                    }
                    i4++;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (string != null) {
                String replacedString = utf8StringBuilder.length() == 0 ? "" : utf8StringBuilder.toReplacedString();
                utf8StringBuilder.reset();
                multiMap.add(string, replacedString);
            } else if (utf8StringBuilder.length() > 0) {
                multiMap.add(utf8StringBuilder.toReplacedString(), "");
            }
        }
    }

    public static String encodeString(String str, String str2) {
        byte[] bytes;
        int i4;
        if (str2 == null) {
            str2 = ENCODING;
        }
        try {
            bytes = str.getBytes(str2);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        byte[] bArr = new byte[bytes.length * 3];
        boolean z3 = true;
        int i5 = 0;
        for (byte b4 : bytes) {
            if (b4 == 32) {
                bArr[i5] = 43;
                i5++;
            } else if ((b4 < 97 || b4 > 122) && ((b4 < 65 || b4 > 90) && (b4 < 48 || b4 > 57))) {
                int i6 = i5 + 1;
                bArr[i5] = 37;
                byte b5 = (byte) ((b4 & 240) >> 4);
                if (b5 >= 10) {
                    i4 = i6 + 1;
                    bArr[i6] = (byte) ((b5 + 65) - 10);
                } else {
                    i4 = i6 + 1;
                    bArr[i6] = (byte) (b5 + 48);
                }
                byte b6 = (byte) (b4 & 15);
                if (b6 >= 10) {
                    i5 = i4 + 1;
                    bArr[i4] = (byte) ((b6 + 65) - 10);
                } else {
                    i5 = i4 + 1;
                    bArr[i4] = (byte) (b6 + 48);
                }
            } else {
                bArr[i5] = b4;
                i5++;
            }
            z3 = false;
        }
        if (z3) {
            return str;
        }
        try {
            return new String(bArr, 0, i5, str2);
        } catch (UnsupportedEncodingException unused2) {
            return new String(bArr, 0, i5);
        }
    }

    public void decode(String str, String str2) {
        decodeTo(str, this, str2, -1);
    }

    public String encode(String str) {
        return encode(str, false);
    }

    public UrlEncoded(String str) {
        super(6);
        decode(str, ENCODING);
    }

    public synchronized String encode(String str, boolean z3) {
        return encode(this, str, z3);
    }

    public static String encode(MultiMap multiMap, String str, boolean z3) {
        if (str == null) {
            str = ENCODING;
        }
        StringBuilder sb = new StringBuilder(128);
        Iterator it = multiMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String string = entry.getKey().toString();
            Object value = entry.getValue();
            int size = LazyList.size(value);
            if (size == 0) {
                sb.append(encodeString(string, str));
                if (z3) {
                    sb.append(B64Code.__pad);
                }
            } else {
                for (int i4 = 0; i4 < size; i4++) {
                    if (i4 > 0) {
                        sb.append('&');
                    }
                    Object obj = LazyList.get(value, i4);
                    sb.append(encodeString(string, str));
                    if (obj != null) {
                        String string2 = obj.toString();
                        if (string2.length() > 0) {
                            sb.append(B64Code.__pad);
                            sb.append(encodeString(string2, str));
                        } else if (z3) {
                            sb.append(B64Code.__pad);
                        }
                    } else if (z3) {
                        sb.append(B64Code.__pad);
                    }
                }
            }
            if (it.hasNext()) {
                sb.append('&');
            }
        }
        return sb.toString();
    }

    public UrlEncoded(String str, String str2) {
        super(6);
        decode(str, str2);
    }

    public static void decodeTo(InputStream inputStream, MultiMap multiMap, String str, int i4, int i5) throws IOException {
        int i6;
        int i7;
        int i8;
        if (str == null) {
            str = ENCODING;
        }
        if (StringUtil.__UTF8.equalsIgnoreCase(str)) {
            decodeUtf8To(inputStream, multiMap, i4, i5);
            return;
        }
        if ("ISO-8859-1".equals(str)) {
            decode88591To(inputStream, multiMap, i4, i5);
            return;
        }
        if (StringUtil.__UTF16.equalsIgnoreCase(str)) {
            decodeUtf16To(inputStream, multiMap, i4, i5);
            return;
        }
        synchronized (multiMap) {
            ByteArrayOutputStream2 byteArrayOutputStream2 = new ByteArrayOutputStream2();
            String string = null;
            int i9 = 0;
            while (true) {
                int i10 = inputStream.read();
                if (i10 > 0) {
                    char c4 = (char) i10;
                    if (c4 == '%') {
                        int i11 = inputStream.read();
                        if (117 == i11) {
                            int i12 = inputStream.read();
                            if (i12 >= 0 && (i7 = inputStream.read()) >= 0 && (i8 = inputStream.read()) >= 0) {
                                byteArrayOutputStream2.write(new String(Character.toChars((TypeUtil.convertHexDigit(i11) << 12) + (TypeUtil.convertHexDigit(i12) << 8) + (TypeUtil.convertHexDigit(i7) << 4) + TypeUtil.convertHexDigit(i8))).getBytes(str));
                            }
                        } else if (i11 >= 0 && (i6 = inputStream.read()) >= 0) {
                            byteArrayOutputStream2.write((TypeUtil.convertHexDigit(i11) << 4) + TypeUtil.convertHexDigit(i6));
                        }
                    } else if (c4 == '&') {
                        String string2 = byteArrayOutputStream2.size() == 0 ? "" : byteArrayOutputStream2.toString(str);
                        byteArrayOutputStream2.setCount(0);
                        if (string != null) {
                            multiMap.add(string, string2);
                        } else if (string2 != null && string2.length() > 0) {
                            multiMap.add(string2, "");
                        }
                        if (i5 > 0 && multiMap.size() > i5) {
                            throw new IllegalStateException(String.format("Form with too many keys [%d > %d]", Integer.valueOf(multiMap.size()), Integer.valueOf(i5)));
                        }
                        string = null;
                    } else if (c4 == '+') {
                        byteArrayOutputStream2.write(32);
                    } else if (c4 != '=' || string != null) {
                        byteArrayOutputStream2.write(i10);
                    } else {
                        string = byteArrayOutputStream2.size() == 0 ? "" : byteArrayOutputStream2.toString(str);
                        byteArrayOutputStream2.setCount(0);
                    }
                    i9++;
                    if (i4 >= 0 && i9 > i4) {
                        throw new IllegalStateException("Form too large");
                    }
                } else {
                    int size = byteArrayOutputStream2.size();
                    if (string != null) {
                        Object string3 = size == 0 ? "" : byteArrayOutputStream2.toString(str);
                        byteArrayOutputStream2.setCount(0);
                        multiMap.add(string, string3);
                    } else if (size > 0) {
                        multiMap.add(byteArrayOutputStream2.toString(str), "");
                    }
                }
            }
        }
    }

    public static void decodeUtf8To(InputStream inputStream, MultiMap multiMap, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        synchronized (multiMap) {
            Utf8StringBuilder utf8StringBuilder = new Utf8StringBuilder();
            String string = null;
            int i9 = 0;
            while (true) {
                int i10 = inputStream.read();
                if (i10 >= 0) {
                    char c4 = (char) i10;
                    if (c4 == '%') {
                        int i11 = inputStream.read();
                        if (117 == i11) {
                            int i12 = inputStream.read();
                            if (i12 >= 0 && (i7 = inputStream.read()) >= 0 && (i8 = inputStream.read()) >= 0) {
                                utf8StringBuilder.getStringBuilder().append(Character.toChars((TypeUtil.convertHexDigit(i11) << 12) + (TypeUtil.convertHexDigit(i12) << 8) + (TypeUtil.convertHexDigit(i7) << 4) + TypeUtil.convertHexDigit(i8)));
                            }
                        } else if (i11 >= 0 && (i6 = inputStream.read()) >= 0) {
                            utf8StringBuilder.append((byte) ((TypeUtil.convertHexDigit(i11) << 4) + TypeUtil.convertHexDigit(i6)));
                        }
                    } else if (c4 == '&') {
                        String string2 = utf8StringBuilder.length() == 0 ? "" : utf8StringBuilder.toString();
                        utf8StringBuilder.reset();
                        if (string != null) {
                            multiMap.add(string, string2);
                        } else if (string2 != null && string2.length() > 0) {
                            multiMap.add(string2, "");
                        }
                        if (i5 > 0) {
                            try {
                                if (multiMap.size() > i5) {
                                    throw new IllegalStateException(String.format("Form with too many keys [%d > %d]", Integer.valueOf(multiMap.size()), Integer.valueOf(i5)));
                                }
                            } catch (Utf8Appendable.NotUtf8Exception e4) {
                                e = e4;
                                string = null;
                                Logger logger = LOG;
                                logger.warn(e.toString(), new Object[0]);
                                logger.debug(e);
                            }
                        }
                        string = null;
                    } else if (c4 == '+') {
                        utf8StringBuilder.append((byte) 32);
                    } else if (c4 != '=') {
                        try {
                            utf8StringBuilder.append((byte) i10);
                        } catch (Utf8Appendable.NotUtf8Exception e5) {
                            e = e5;
                            Logger logger2 = LOG;
                            logger2.warn(e.toString(), new Object[0]);
                            logger2.debug(e);
                        }
                    } else if (string != null) {
                        utf8StringBuilder.append((byte) i10);
                    } else {
                        string = utf8StringBuilder.toString();
                        utf8StringBuilder.reset();
                    }
                    if (i4 >= 0 && (i9 = i9 + 1) > i4) {
                        throw new IllegalStateException("Form too large");
                    }
                } else if (string != null) {
                    Object string3 = utf8StringBuilder.length() == 0 ? "" : utf8StringBuilder.toString();
                    utf8StringBuilder.reset();
                    multiMap.add(string, string3);
                } else if (utf8StringBuilder.length() > 0) {
                    multiMap.add(utf8StringBuilder.toString(), "");
                }
            }
        }
    }
}
