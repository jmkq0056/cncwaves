package org.eclipse.jetty.client;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferUtil;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public class ContentExchange extends CachedExchange {
    private int _bufferSize;
    private String _encoding;
    private File _fileForUpload;
    private ByteArrayOutputStream _responseContent;

    public ContentExchange() {
        super(false);
        this._bufferSize = 4096;
        this._encoding = "utf-8";
    }

    private synchronized InputStream getInputStream() {
        return new FileInputStream(this._fileForUpload);
    }

    public synchronized File getFileForUpload() {
        return this._fileForUpload;
    }

    public synchronized String getResponseContent() {
        ByteArrayOutputStream byteArrayOutputStream = this._responseContent;
        if (byteArrayOutputStream == null) {
            return null;
        }
        return byteArrayOutputStream.toString(this._encoding);
    }

    public synchronized byte[] getResponseContentBytes() {
        ByteArrayOutputStream byteArrayOutputStream = this._responseContent;
        if (byteArrayOutputStream == null) {
            return null;
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.eclipse.jetty.client.HttpExchange
    public synchronized void onResponseContent(Buffer buffer) {
        super.onResponseContent(buffer);
        if (this._responseContent == null) {
            this._responseContent = new ByteArrayOutputStream(this._bufferSize);
        }
        buffer.writeTo(this._responseContent);
    }

    @Override // org.eclipse.jetty.client.CachedExchange, org.eclipse.jetty.client.HttpExchange
    public synchronized void onResponseHeader(Buffer buffer, Buffer buffer2) {
        String strAsciiToLowerCase;
        int iIndexOf;
        super.onResponseHeader(buffer, buffer2);
        int ordinal = HttpHeaders.CACHE.getOrdinal(buffer);
        if (ordinal == 12) {
            this._bufferSize = BufferUtil.toInt(buffer2);
        } else if (ordinal == 16 && (iIndexOf = (strAsciiToLowerCase = StringUtil.asciiToLowerCase(buffer2.toString())).indexOf("charset=")) > 0) {
            String strSubstring = strAsciiToLowerCase.substring(iIndexOf + 8);
            this._encoding = strSubstring;
            int iIndexOf2 = strSubstring.indexOf(59);
            if (iIndexOf2 > 0) {
                this._encoding = this._encoding.substring(0, iIndexOf2);
            }
        }
    }

    @Override // org.eclipse.jetty.client.CachedExchange, org.eclipse.jetty.client.HttpExchange
    public synchronized void onResponseStatus(Buffer buffer, int i4, Buffer buffer2) {
        ByteArrayOutputStream byteArrayOutputStream = this._responseContent;
        if (byteArrayOutputStream != null) {
            byteArrayOutputStream.reset();
        }
        super.onResponseStatus(buffer, i4, buffer2);
    }

    @Override // org.eclipse.jetty.client.HttpExchange
    public synchronized void onRetry() {
        if (this._fileForUpload != null) {
            setRequestContent(null);
            setRequestContentSource(getInputStream());
        } else {
            super.onRetry();
        }
    }

    public synchronized void setFileForUpload(File file) {
        this._fileForUpload = file;
        setRequestContentSource(getInputStream());
    }

    public ContentExchange(boolean z3) {
        super(z3);
        this._bufferSize = 4096;
        this._encoding = "utf-8";
    }
}
