package org.eclipse.jetty.http;

import android.support.v4.media.f;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class HttpException extends IOException {
    public String _reason;
    public int _status;

    public HttpException(int i4) {
        this._status = i4;
        this._reason = null;
    }

    public String getReason() {
        return this._reason;
    }

    public int getStatus() {
        return this._status;
    }

    public void setReason(String str) {
        this._reason = str;
    }

    public void setStatus(int i4) {
        this._status = i4;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sbA = f.a("HttpException(");
        sbA.append(this._status);
        sbA.append(",");
        sbA.append(this._reason);
        sbA.append(",");
        sbA.append(super.getCause());
        sbA.append(")");
        return sbA.toString();
    }

    public HttpException(int i4, String str) {
        this._status = i4;
        this._reason = str;
    }

    public HttpException(int i4, String str, Throwable th) {
        this._status = i4;
        this._reason = str;
        initCause(th);
    }
}
