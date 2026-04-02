package org.eclipse.jetty.http;

import org.eclipse.jetty.util.MultiMap;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.UrlEncoded;
import org.eclipse.jetty.util.Utf8StringBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class EncodedHttpURI extends HttpURI {
    private final String _encoding;

    public EncodedHttpURI(String str) {
        this._encoding = str;
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public void decodeQueryTo(MultiMap multiMap) {
        int i4 = this._query;
        if (i4 == this._fragment) {
            return;
        }
        UrlEncoded.decodeTo(StringUtil.toString(this._raw, i4 + 1, (r1 - i4) - 1, this._encoding), multiMap, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getAuthority() {
        int i4 = this._authority;
        int i5 = this._path;
        if (i4 == i5) {
            return null;
        }
        return StringUtil.toString(this._raw, i4, i5 - i4, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getCompletePath() {
        int i4 = this._path;
        int i5 = this._end;
        if (i4 == i5) {
            return null;
        }
        return StringUtil.toString(this._raw, i4, i5 - i4, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getDecodedPath() {
        int i4 = this._path;
        int i5 = this._param;
        if (i4 == i5) {
            return null;
        }
        return URIUtil.decodePath(this._raw, i4, i5 - i4);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getFragment() {
        int i4 = this._fragment;
        if (i4 == this._end) {
            return null;
        }
        return StringUtil.toString(this._raw, i4 + 1, (r1 - i4) - 1, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getHost() {
        int i4 = this._host;
        int i5 = this._port;
        if (i4 == i5) {
            return null;
        }
        return StringUtil.toString(this._raw, i4, i5 - i4, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getParam() {
        int i4 = this._param;
        if (i4 == this._query) {
            return null;
        }
        return StringUtil.toString(this._raw, i4 + 1, (r1 - i4) - 1, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getPath() {
        int i4 = this._path;
        int i5 = this._param;
        if (i4 == i5) {
            return null;
        }
        return StringUtil.toString(this._raw, i4, i5 - i4, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getPathAndParam() {
        int i4 = this._path;
        int i5 = this._query;
        if (i4 == i5) {
            return null;
        }
        return StringUtil.toString(this._raw, i4, i5 - i4, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public int getPort() {
        int i4 = this._port;
        if (i4 == this._path) {
            return -1;
        }
        return TypeUtil.parseInt(this._raw, i4 + 1, (r1 - i4) - 1, 10);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String getQuery() {
        int i4 = this._query;
        if (i4 == this._fragment) {
            return null;
        }
        return StringUtil.toString(this._raw, i4 + 1, (r1 - i4) - 1, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
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
        return StringUtil.toString(this._raw, i4, (i5 - i4) - 1, this._encoding);
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public boolean hasQuery() {
        return this._fragment > this._query;
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public String toString() {
        if (this._rawString == null) {
            byte[] bArr = this._raw;
            int i4 = this._scheme;
            this._rawString = StringUtil.toString(bArr, i4, this._end - i4, this._encoding);
        }
        return this._rawString;
    }

    public void writeTo(Utf8StringBuffer utf8StringBuffer) {
        utf8StringBuffer.getStringBuffer().append(toString());
    }

    @Override // org.eclipse.jetty.http.HttpURI
    public void decodeQueryTo(MultiMap multiMap, String str) {
        int i4 = this._query;
        if (i4 == this._fragment) {
            return;
        }
        if (str == null) {
            str = this._encoding;
        }
        UrlEncoded.decodeTo(StringUtil.toString(this._raw, i4 + 1, (r1 - i4) - 1, str), multiMap, str);
    }
}
