package org.eclipse.jetty.http;

import android.support.v4.media.f;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import org.eclipse.jetty.util.MultiMap;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.UrlEncoded;
import org.eclipse.jetty.util.Utf8StringBuilder;

/* JADX INFO: loaded from: classes2.dex */
public class HttpURI {
    private static final int ASTERISK = 10;
    private static final int AUTH = 4;
    private static final int AUTH_OR_PATH = 1;
    private static final int IPV6 = 5;
    private static final int PARAM = 8;
    private static final int PATH = 7;
    private static final int PORT = 6;
    private static final int QUERY = 9;
    private static final int SCHEME_OR_PATH = 2;
    private static final int START = 0;
    private static final byte[] __empty = new byte[0];
    public int _authority;
    public boolean _encoded;
    public int _end;
    public int _fragment;
    public int _host;
    public int _param;
    public boolean _partial;
    public int _path;
    public int _port;
    public int _portValue;
    public int _query;
    public byte[] _raw;
    public String _rawString;
    public int _scheme;
    public final Utf8StringBuilder _utf8b;

    public HttpURI() {
        this._partial = false;
        this._raw = __empty;
        this._encoded = false;
        this._utf8b = new Utf8StringBuilder(64);
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parse2(byte[] r18, int r19, int r20) {
        /*
            Method dump skipped, instruction units count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.HttpURI.parse2(byte[], int, int):void");
    }

    private String toUtf8String(int i4, int i5) {
        this._utf8b.reset();
        this._utf8b.append(this._raw, i4, i5);
        return this._utf8b.toString();
    }

    public void clear() {
        this._end = 0;
        this._fragment = 0;
        this._query = 0;
        this._param = 0;
        this._path = 0;
        this._port = 0;
        this._host = 0;
        this._authority = 0;
        this._scheme = 0;
        this._raw = __empty;
        this._rawString = "";
        this._encoded = false;
    }

    public void decodeQueryTo(MultiMap multiMap) {
        if (this._query == this._fragment) {
            return;
        }
        this._utf8b.reset();
        UrlEncoded.decodeUtf8To(this._raw, this._query + 1, (this._fragment - r1) - 1, multiMap, this._utf8b);
    }

    public String getAuthority() {
        int i4 = this._authority;
        int i5 = this._path;
        if (i4 == i5) {
            return null;
        }
        return toUtf8String(i4, i5 - i4);
    }

    public String getCompletePath() {
        int i4 = this._path;
        int i5 = this._end;
        if (i4 == i5) {
            return null;
        }
        return toUtf8String(i4, i5 - i4);
    }

    public String getDecodedPath() {
        int i4 = this._path;
        int i5 = this._param;
        if (i4 == i5) {
            return null;
        }
        int i6 = i5 - i4;
        boolean z3 = false;
        while (i4 < this._param) {
            byte b4 = this._raw[i4];
            if (b4 == 37) {
                if (!z3) {
                    this._utf8b.reset();
                    Utf8StringBuilder utf8StringBuilder = this._utf8b;
                    byte[] bArr = this._raw;
                    int i7 = this._path;
                    utf8StringBuilder.append(bArr, i7, i4 - i7);
                    z3 = true;
                }
                int i8 = i4 + 2;
                int i9 = this._param;
                if (i8 >= i9) {
                    throw new IllegalArgumentException("Bad % encoding: " + this);
                }
                byte[] bArr2 = this._raw;
                int i10 = i4 + 1;
                if (bArr2[i10] == 117) {
                    i4 += 5;
                    if (i4 >= i9) {
                        throw new IllegalArgumentException("Bad %u encoding: " + this);
                    }
                    try {
                        this._utf8b.getStringBuilder().append(new String(Character.toChars(TypeUtil.parseInt(bArr2, i8, 4, 16))));
                    } catch (Exception e4) {
                        throw new RuntimeException(e4);
                    }
                } else {
                    this._utf8b.append((byte) (TypeUtil.parseInt(bArr2, i10, 2, 16) & 255));
                    i4 = i8;
                }
            } else if (z3) {
                this._utf8b.append(b4);
            }
            i4++;
        }
        return !z3 ? toUtf8String(this._path, i6) : this._utf8b.toString();
    }

    public String getFragment() {
        int i4 = this._fragment;
        if (i4 == this._end) {
            return null;
        }
        return toUtf8String(i4 + 1, (r1 - i4) - 1);
    }

    public String getHost() {
        int i4 = this._host;
        int i5 = this._port;
        if (i4 == i5) {
            return null;
        }
        return toUtf8String(i4, i5 - i4);
    }

    public String getParam() {
        int i4 = this._param;
        if (i4 == this._query) {
            return null;
        }
        return toUtf8String(i4 + 1, (r1 - i4) - 1);
    }

    public String getPath() {
        int i4 = this._path;
        int i5 = this._param;
        if (i4 == i5) {
            return null;
        }
        return toUtf8String(i4, i5 - i4);
    }

    public String getPathAndParam() {
        int i4 = this._path;
        int i5 = this._query;
        if (i4 == i5) {
            return null;
        }
        return toUtf8String(i4, i5 - i4);
    }

    public int getPort() {
        return this._portValue;
    }

    public String getQuery() {
        int i4 = this._query;
        if (i4 == this._fragment) {
            return null;
        }
        return toUtf8String(i4 + 1, (r1 - i4) - 1);
    }

    public String getScheme() {
        int i4 = this._scheme;
        int i5 = this._authority;
        if (i4 == i5) {
            return null;
        }
        int i6 = i5 - i4;
        if (i6 == 5) {
            byte[] bArr = this._raw;
            if (bArr[i4] == 104 && bArr[i4 + 1] == 116 && bArr[i4 + 2] == 116 && bArr[i4 + 3] == 112) {
                return "http";
            }
        }
        if (i6 == 6) {
            byte[] bArr2 = this._raw;
            if (bArr2[i4] == 104 && bArr2[i4 + 1] == 116 && bArr2[i4 + 2] == 116 && bArr2[i4 + 3] == 112 && bArr2[i4 + 4] == 115) {
                return "https";
            }
        }
        return toUtf8String(i4, (i5 - i4) - 1);
    }

    public boolean hasQuery() {
        return this._fragment > this._query;
    }

    public void parse(String str) {
        byte[] bytes = str.getBytes();
        parse2(bytes, 0, bytes.length);
        this._rawString = str;
    }

    public void parseConnect(byte[] bArr, int i4, int i5) {
        this._rawString = null;
        this._encoded = false;
        this._raw = bArr;
        int i6 = i4 + i5;
        this._end = i6;
        this._scheme = i4;
        this._authority = i4;
        this._host = i4;
        this._port = i6;
        this._portValue = -1;
        this._path = i6;
        this._param = i6;
        this._query = i6;
        this._fragment = i6;
        char c4 = 4;
        int i7 = i4;
        while (true) {
            if (i7 >= i6) {
                break;
            }
            char c5 = (char) (this._raw[i7] & 255);
            int i8 = i7 + 1;
            if (c4 == 4) {
                if (c5 == ':') {
                    this._port = i7;
                    break;
                } else if (c5 == '[') {
                    c4 = 5;
                }
            } else if (c4 != 5) {
                continue;
            } else {
                if (c5 == '/') {
                    StringBuilder sbA = f.a("No closing ']' for ");
                    sbA.append(StringUtil.toString(this._raw, i4, i5, URIUtil.__CHARSET));
                    throw new IllegalArgumentException(sbA.toString());
                }
                if (c5 == ']') {
                    c4 = 4;
                }
            }
            i7 = i8;
        }
        int i9 = this._port;
        if (i9 >= this._path) {
            throw new IllegalArgumentException("No port");
        }
        this._portValue = TypeUtil.parseInt(this._raw, i9 + 1, (r9 - i9) - 1, 10);
        this._path = i4;
    }

    public String toString() {
        if (this._rawString == null) {
            int i4 = this._scheme;
            this._rawString = toUtf8String(i4, this._end - i4);
        }
        return this._rawString;
    }

    public void writeTo(Utf8StringBuilder utf8StringBuilder) {
        byte[] bArr = this._raw;
        int i4 = this._scheme;
        utf8StringBuilder.append(bArr, i4, this._end - i4);
    }

    public String getQuery(String str) {
        int i4 = this._query;
        if (i4 == this._fragment) {
            return null;
        }
        return StringUtil.toString(this._raw, i4 + 1, (r1 - i4) - 1, str);
    }

    public void decodeQueryTo(MultiMap multiMap, String str) {
        if (this._query == this._fragment) {
            return;
        }
        if (str != null && !StringUtil.isUTF8(str)) {
            UrlEncoded.decodeTo(StringUtil.toString(this._raw, this._query + 1, (this._fragment - r1) - 1, str), multiMap, str);
        } else {
            UrlEncoded.decodeUtf8To(this._raw, this._query + 1, (this._fragment - r0) - 1, multiMap);
        }
    }

    public void parse(byte[] bArr, int i4, int i5) {
        this._rawString = null;
        parse2(bArr, i4, i5);
    }

    public HttpURI(boolean z3) {
        this._partial = false;
        this._raw = __empty;
        this._encoded = false;
        this._utf8b = new Utf8StringBuilder(64);
        this._partial = z3;
    }

    public HttpURI(String str) {
        this._partial = false;
        this._raw = __empty;
        this._encoded = false;
        this._utf8b = new Utf8StringBuilder(64);
        this._rawString = str;
        try {
            byte[] bytes = str.getBytes(StringUtil.__UTF8);
            parse(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(e4.getMessage());
        }
    }

    public String getDecodedPath(String str) {
        int i4 = this._path;
        int i5 = this._param;
        byte[] bArr = null;
        if (i4 == i5) {
            return null;
        }
        int i6 = i5 - i4;
        int length = 0;
        while (true) {
            int i7 = this._param;
            if (i4 >= i7) {
                if (bArr == null) {
                    byte[] bArr2 = this._raw;
                    int i8 = this._path;
                    return StringUtil.toString(bArr2, i8, i7 - i8, str);
                }
                return StringUtil.toString(bArr, 0, length, str);
            }
            byte[] bArr3 = this._raw;
            byte b4 = bArr3[i4];
            if (b4 == 37) {
                if (bArr == null) {
                    bArr = new byte[i6];
                    System.arraycopy(bArr3, this._path, bArr, 0, length);
                }
                int i9 = i4 + 2;
                int i10 = this._param;
                if (i9 < i10) {
                    byte[] bArr4 = this._raw;
                    int i11 = i4 + 1;
                    if (bArr4[i11] == 117) {
                        i4 += 5;
                        if (i4 < i10) {
                            try {
                                byte[] bytes = new String(Character.toChars(TypeUtil.parseInt(bArr4, i9, 4, 16))).getBytes(str);
                                System.arraycopy(bytes, 0, bArr, length, bytes.length);
                                length += bytes.length;
                            } catch (Exception e4) {
                                throw new RuntimeException(e4);
                            }
                        } else {
                            throw new IllegalArgumentException("Bad %u encoding: " + this);
                        }
                    } else {
                        bArr[length] = (byte) (TypeUtil.parseInt(bArr4, i11, 2, 16) & 255);
                        i4 = i9;
                        length++;
                    }
                } else {
                    throw new IllegalArgumentException("Bad % encoding: " + this);
                }
            } else if (bArr == null) {
                length++;
            } else {
                bArr[length] = b4;
                length++;
            }
            i4++;
        }
    }

    public HttpURI(byte[] bArr, int i4, int i5) {
        this._partial = false;
        this._raw = __empty;
        this._encoded = false;
        this._utf8b = new Utf8StringBuilder(64);
        parse2(bArr, i4, i5);
    }

    public HttpURI(URI uri) {
        this._partial = false;
        this._raw = __empty;
        this._encoded = false;
        this._utf8b = new Utf8StringBuilder(64);
        parse(uri.toASCIIString());
    }
}
