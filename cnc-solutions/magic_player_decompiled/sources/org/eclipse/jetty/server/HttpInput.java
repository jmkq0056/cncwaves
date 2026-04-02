package org.eclipse.jetty.server;

import g2.v;
import java.io.IOException;
import org.eclipse.jetty.http.HttpParser;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.EofException;

/* JADX INFO: loaded from: classes2.dex */
public class HttpInput extends v {
    public final AbstractHttpConnection _connection;
    public final HttpParser _parser;

    public HttpInput(AbstractHttpConnection abstractHttpConnection) {
        this._connection = abstractHttpConnection;
        this._parser = (HttpParser) abstractHttpConnection.getParser();
    }

    @Override // java.io.InputStream
    public int available() {
        return this._parser.available();
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) < 0) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i4, int i5) throws IOException {
        Buffer bufferBlockForContent = this._parser.blockForContent(this._connection.getMaxIdleTime());
        if (bufferBlockForContent != null) {
            return bufferBlockForContent.get(bArr, i4, i5);
        }
        if (this._connection.isEarlyEOF()) {
            throw new EofException("early EOF");
        }
        return -1;
    }
}
