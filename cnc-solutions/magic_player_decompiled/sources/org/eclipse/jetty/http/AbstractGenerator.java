package org.eclipse.jetty.http;

import android.support.v4.media.d;
import android.support.v4.media.f;
import java.io.IOException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.io.View;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractGenerator implements Generator {
    private static final Logger LOG = Log.getLogger((Class<?>) AbstractGenerator.class);
    public static final byte[] NO_BYTES = new byte[0];
    public static final int STATE_CONTENT = 2;
    public static final int STATE_END = 4;
    public static final int STATE_FLUSHING = 3;
    public static final int STATE_HEADER = 0;
    public Buffer _buffer;
    public final Buffers _buffers;
    public Buffer _content;
    public Buffer _date;
    public final EndPoint _endp;
    public Buffer _header;
    public Buffer _method;
    public Buffer _reason;
    private boolean _sendServerVersion;
    public String _uri;
    public int _state = 0;
    public int _status = 0;
    public int _version = 11;
    public long _contentWritten = 0;
    public long _contentLength = -3;
    public boolean _last = false;
    public boolean _head = false;
    public boolean _noContent = false;
    public Boolean _persistent = null;

    public AbstractGenerator(Buffers buffers, EndPoint endPoint) {
        this._buffers = buffers;
        this._endp = endPoint;
    }

    public void blockForOutput(long j4) throws IOException {
        if (this._endp.isBlocking()) {
            try {
                flushBuffer();
                return;
            } catch (IOException e4) {
                this._endp.close();
                throw e4;
            }
        }
        if (this._endp.blockWritable(j4)) {
            flushBuffer();
        } else {
            this._endp.close();
            throw new EofException("timeout");
        }
    }

    @Override // org.eclipse.jetty.http.Generator
    public void complete() {
        if (this._state == 0) {
            throw new IllegalStateException("State==HEADER");
        }
        long j4 = this._contentLength;
        if (j4 < 0 || j4 == this._contentWritten || this._head) {
            return;
        }
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            StringBuilder sbA = f.a("ContentLength written==");
            sbA.append(this._contentWritten);
            sbA.append(" != contentLength==");
            sbA.append(this._contentLength);
            logger.debug(sbA.toString(), new Object[0]);
        }
        this._persistent = Boolean.FALSE;
    }

    @Override // org.eclipse.jetty.http.Generator
    public abstract void completeHeader(HttpFields httpFields, boolean z3);

    public void completeUncheckedAddContent() {
        if (this._noContent) {
            Buffer buffer = this._buffer;
            if (buffer != null) {
                buffer.clear();
                return;
            }
            return;
        }
        this._contentWritten += (long) this._buffer.length();
        if (this._head) {
            this._buffer.clear();
        }
    }

    public void flush(long j4) throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j5 = j4 + jCurrentTimeMillis;
        Buffer buffer = this._content;
        Buffer buffer2 = this._buffer;
        if ((buffer == null || buffer.length() <= 0) && ((buffer2 == null || buffer2.length() <= 0) && !isBufferFull())) {
            return;
        }
        flushBuffer();
        while (jCurrentTimeMillis < j5) {
            if ((buffer == null || buffer.length() <= 0) && (buffer2 == null || buffer2.length() <= 0)) {
                return;
            }
            if (!this._endp.isOpen() || this._endp.isOutputShutdown()) {
                throw new EofException();
            }
            blockForOutput(j5 - jCurrentTimeMillis);
            jCurrentTimeMillis = System.currentTimeMillis();
        }
    }

    @Override // org.eclipse.jetty.http.Generator
    public abstract int flushBuffer();

    @Override // org.eclipse.jetty.http.Generator
    public int getContentBufferSize() {
        if (this._buffer == null) {
            this._buffer = this._buffers.getBuffer();
        }
        return this._buffer.capacity();
    }

    @Override // org.eclipse.jetty.http.Generator
    public long getContentWritten() {
        return this._contentWritten;
    }

    public boolean getSendServerVersion() {
        return this._sendServerVersion;
    }

    public int getState() {
        return this._state;
    }

    public Buffer getUncheckedBuffer() {
        return this._buffer;
    }

    public int getVersion() {
        return this._version;
    }

    @Override // org.eclipse.jetty.http.Generator
    public void increaseContentBufferSize(int i4) {
        if (this._buffer == null) {
            this._buffer = this._buffers.getBuffer();
        }
        if (i4 > this._buffer.capacity()) {
            Buffer buffer = this._buffers.getBuffer(i4);
            buffer.put(this._buffer);
            this._buffers.returnBuffer(this._buffer);
            this._buffer = buffer;
        }
    }

    @Override // org.eclipse.jetty.http.Generator
    public boolean isAllContentWritten() {
        long j4 = this._contentLength;
        return j4 >= 0 && this._contentWritten >= j4;
    }

    @Override // org.eclipse.jetty.http.Generator
    public boolean isBufferFull() {
        Buffer buffer = this._buffer;
        if (buffer == null || buffer.space() != 0) {
            Buffer buffer2 = this._content;
            return buffer2 != null && buffer2.length() > 0;
        }
        if (this._buffer.length() == 0 && !this._buffer.isImmutable()) {
            this._buffer.compact();
        }
        return this._buffer.space() == 0;
    }

    @Override // org.eclipse.jetty.http.Generator
    public boolean isCommitted() {
        return this._state != 0;
    }

    @Override // org.eclipse.jetty.http.Generator
    public boolean isComplete() {
        return this._state == 4;
    }

    public boolean isHead() {
        return this._head;
    }

    @Override // org.eclipse.jetty.http.Generator
    public boolean isIdle() {
        return this._state == 0 && this._method == null && this._status == 0;
    }

    public boolean isOpen() {
        return this._endp.isOpen();
    }

    @Override // org.eclipse.jetty.http.Generator
    public boolean isPersistent() {
        Boolean bool = this._persistent;
        return bool != null ? bool.booleanValue() : isRequest() || this._version > 10;
    }

    public abstract boolean isRequest();

    public abstract boolean isResponse();

    public boolean isState(int i4) {
        return this._state == i4;
    }

    @Override // org.eclipse.jetty.http.Generator
    public boolean isWritten() {
        return this._contentWritten > 0;
    }

    public abstract int prepareUncheckedAddContent();

    @Override // org.eclipse.jetty.http.Generator
    public void reset() {
        this._state = 0;
        this._status = 0;
        this._version = 11;
        this._reason = null;
        this._last = false;
        this._head = false;
        this._noContent = false;
        this._persistent = null;
        this._contentWritten = 0L;
        this._contentLength = -3L;
        this._date = null;
        this._content = null;
        this._method = null;
    }

    @Override // org.eclipse.jetty.http.Generator
    public void resetBuffer() {
        if (this._state >= 3) {
            throw new IllegalStateException("Flushed");
        }
        this._last = false;
        this._persistent = null;
        this._contentWritten = 0L;
        this._contentLength = -3L;
        this._content = null;
        Buffer buffer = this._buffer;
        if (buffer != null) {
            buffer.clear();
        }
    }

    @Override // org.eclipse.jetty.http.Generator
    public void returnBuffers() {
        Buffer buffer = this._buffer;
        if (buffer != null && buffer.length() == 0) {
            this._buffers.returnBuffer(this._buffer);
            this._buffer = null;
        }
        Buffer buffer2 = this._header;
        if (buffer2 == null || buffer2.length() != 0) {
            return;
        }
        this._buffers.returnBuffer(this._header);
        this._header = null;
    }

    @Override // org.eclipse.jetty.http.Generator
    public void sendError(int i4, String str, String str2, boolean z3) {
        if (z3) {
            this._persistent = Boolean.FALSE;
        }
        if (isCommitted()) {
            LOG.debug("sendError on committed: {} {}", Integer.valueOf(i4), str);
            return;
        }
        LOG.debug("sendError: {} {}", Integer.valueOf(i4), str);
        setResponse(i4, str);
        if (str2 != null) {
            completeHeader(null, false);
            addContent(new View(new ByteArrayBuffer(str2)), true);
        } else if (i4 >= 400) {
            completeHeader(null, false);
            StringBuilder sbA = f.a("Error: ");
            if (str == null) {
                str = d.a("", i4);
            }
            sbA.append(str);
            addContent(new View(new ByteArrayBuffer(sbA.toString())), true);
        } else {
            completeHeader(null, true);
        }
        complete();
    }

    @Override // org.eclipse.jetty.http.Generator
    public void setContentLength(long j4) {
        if (j4 < 0) {
            this._contentLength = -3L;
        } else {
            this._contentLength = j4;
        }
    }

    @Override // org.eclipse.jetty.http.Generator
    public void setDate(Buffer buffer) {
        this._date = buffer;
    }

    @Override // org.eclipse.jetty.http.Generator
    public void setHead(boolean z3) {
        this._head = z3;
    }

    @Override // org.eclipse.jetty.http.Generator
    public void setPersistent(boolean z3) {
        this._persistent = Boolean.valueOf(z3);
    }

    @Override // org.eclipse.jetty.http.Generator
    public void setRequest(String str, String str2) {
        if (str == null || HttpMethods.GET.equals(str)) {
            this._method = HttpMethods.GET_BUFFER;
        } else {
            this._method = HttpMethods.CACHE.lookup(str);
        }
        this._uri = str2;
        if (this._version == 9) {
            this._noContent = true;
        }
    }

    @Override // org.eclipse.jetty.http.Generator
    public void setResponse(int i4, String str) {
        if (this._state != 0) {
            throw new IllegalStateException("STATE!=START");
        }
        this._method = null;
        this._status = i4;
        if (str != null) {
            byte[] bytes = StringUtil.getBytes(str);
            int length = bytes.length;
            if (length > 1024) {
                length = 1024;
            }
            this._reason = new ByteArrayBuffer(length);
            for (int i5 = 0; i5 < length; i5++) {
                byte b4 = bytes[i5];
                if (b4 == 13 || b4 == 10) {
                    this._reason.put((byte) 32);
                } else {
                    this._reason.put(b4);
                }
            }
        }
    }

    @Override // org.eclipse.jetty.http.Generator
    public void setSendServerVersion(boolean z3) {
        this._sendServerVersion = z3;
    }

    @Override // org.eclipse.jetty.http.Generator
    public void setVersion(int i4) {
        if (this._state != 0) {
            StringBuilder sbA = f.a("STATE!=START ");
            sbA.append(this._state);
            throw new IllegalStateException(sbA.toString());
        }
        this._version = i4;
        if (i4 != 9 || this._method == null) {
            return;
        }
        this._noContent = true;
    }

    public void uncheckedAddContent(int i4) {
        this._buffer.put((byte) i4);
    }
}
