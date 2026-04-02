package org.eclipse.jetty.http;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.IOException;
import java.io.InterruptedIOException;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferUtil;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class HttpGenerator extends AbstractGenerator {
    private static final int CHUNK_SPACE = 12;
    private static final byte[] CONNECTION_;
    private static final byte[] CONNECTION_CLOSE;
    private static final byte[] CONNECTION_KEEP_ALIVE;
    private static final byte[] CONTENT_LENGTH_0;
    private static final byte[] CRLF;
    private static final byte[] LAST_CHUNK;
    private static byte[] SERVER;
    private static final byte[] TRANSFER_ENCODING_CHUNKED;
    private boolean _bufferChunked;
    public boolean _bypass;
    private boolean _needCRLF;
    private boolean _needEOC;
    private static final Logger LOG = Log.getLogger((Class<?>) HttpGenerator.class);
    private static final Status[] __status = new Status[508];

    public static class Status {
        public Buffer _reason;
        public Buffer _responseLine;
        public Buffer _schemeCode;

        private Status() {
        }
    }

    static {
        int length = HttpVersions.HTTP_1_1_BUFFER.length();
        for (int i4 = 0; i4 < __status.length; i4++) {
            HttpStatus.Code code = HttpStatus.getCode(i4);
            if (code != null) {
                String message = code.getMessage();
                int i5 = length + 5;
                int length2 = message.length() + i5 + 2;
                byte[] bArr = new byte[length2];
                HttpVersions.HTTP_1_1_BUFFER.peek(0, bArr, 0, length);
                bArr[length + 0] = 32;
                bArr[length + 1] = (byte) ((i4 / 100) + 48);
                bArr[length + 2] = (byte) (((i4 % 100) / 10) + 48);
                bArr[length + 3] = (byte) ((i4 % 10) + 48);
                bArr[length + 4] = 32;
                for (int i6 = 0; i6 < message.length(); i6++) {
                    bArr[i5 + i6] = (byte) message.charAt(i6);
                }
                bArr[message.length() + i5] = 13;
                bArr[message.length() + length + 6] = 10;
                Status[] statusArr = __status;
                statusArr[i4] = new Status();
                statusArr[i4]._reason = new ByteArrayBuffer(bArr, i5, (length2 - length) - 7, 0);
                statusArr[i4]._schemeCode = new ByteArrayBuffer(bArr, 0, i5, 0);
                statusArr[i4]._responseLine = new ByteArrayBuffer(bArr, 0, length2, 0);
            }
        }
        LAST_CHUNK = new byte[]{48, 13, 10, 13, 10};
        CONTENT_LENGTH_0 = StringUtil.getBytes("Content-Length: 0\r\n");
        CONNECTION_KEEP_ALIVE = StringUtil.getBytes("Connection: keep-alive\r\n");
        CONNECTION_CLOSE = StringUtil.getBytes("Connection: close\r\n");
        CONNECTION_ = StringUtil.getBytes("Connection: ");
        CRLF = StringUtil.getBytes("\r\n");
        TRANSFER_ENCODING_CHUNKED = StringUtil.getBytes("Transfer-Encoding: chunked\r\n");
        SERVER = StringUtil.getBytes("Server: Jetty(7.0.x)\r\n");
    }

    public HttpGenerator(Buffers buffers, EndPoint endPoint) {
        super(buffers, endPoint);
        this._bypass = false;
        this._needCRLF = false;
        this._needEOC = false;
        this._bufferChunked = false;
    }

    private int flushMask() {
        Buffer buffer;
        Buffer buffer2 = this._header;
        int i4 = 0;
        int i5 = (buffer2 == null || buffer2.length() <= 0) ? 0 : 4;
        Buffer buffer3 = this._buffer;
        int i6 = i5 | ((buffer3 == null || buffer3.length() <= 0) ? 0 : 2);
        if (this._bypass && (buffer = this._content) != null && buffer.length() > 0) {
            i4 = 1;
        }
        return i6 | i4;
    }

    public static Buffer getReasonBuffer(int i4) {
        Status[] statusArr = __status;
        Status status = i4 < statusArr.length ? statusArr[i4] : null;
        if (status != null) {
            return status._reason;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void prepareBuffers() {
        /*
            Method dump skipped, instruction units count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.HttpGenerator.prepareBuffers():void");
    }

    public static void setServerVersion(String str) {
        SERVER = StringUtil.getBytes("Server: Jetty(" + str + ")\r\n");
    }

    @Override // org.eclipse.jetty.http.Generator
    public void addContent(Buffer buffer, boolean z3) throws IOException {
        Buffer buffer2;
        Buffer buffer3;
        if (this._noContent) {
            throw new IllegalStateException("NO CONTENT");
        }
        if (this._last || this._state == 4) {
            LOG.warn("Ignoring extra content {}", buffer);
            buffer.clear();
            return;
        }
        this._last = z3;
        Buffer buffer4 = this._content;
        if ((buffer4 != null && buffer4.length() > 0) || this._bufferChunked) {
            if (this._endp.isOutputShutdown()) {
                throw new EofException();
            }
            flushBuffer();
            Buffer buffer5 = this._content;
            if (buffer5 != null && buffer5.length() > 0) {
                if (this._bufferChunked) {
                    buffer3 = this._buffers.getBuffer(buffer.length() + this._content.length() + 12);
                    buffer3.put(this._content);
                    byte[] bArr = HttpTokens.CRLF;
                    buffer3.put(bArr);
                    BufferUtil.putHexInt(buffer3, buffer.length());
                    buffer3.put(bArr);
                    buffer3.put(buffer);
                } else {
                    buffer3 = this._buffers.getBuffer(buffer.length() + this._content.length());
                    buffer3.put(this._content);
                    buffer3.put(buffer);
                }
                buffer = buffer3;
            }
        }
        this._content = buffer;
        this._contentWritten += (long) buffer.length();
        if (this._head) {
            buffer.clear();
            this._content = null;
            return;
        }
        if (this._endp != null && (((buffer2 = this._buffer) == null || buffer2.length() == 0) && this._content.length() > 0 && (this._last || (isCommitted() && this._content.length() > 1024)))) {
            this._bypass = true;
            return;
        }
        if (this._bufferChunked) {
            return;
        }
        if (this._buffer == null) {
            this._buffer = this._buffers.getBuffer();
        }
        this._content.skip(this._buffer.put(this._content));
        if (this._content.length() == 0) {
            this._content = null;
        }
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    public void complete() throws IOException {
        if (this._state == 4) {
            return;
        }
        super.complete();
        if (this._state < 3) {
            this._state = 3;
            if (this._contentLength == -2) {
                this._needEOC = true;
            }
        }
        flushBuffer();
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x0296 A[Catch: ArrayIndexOutOfBoundsException -> 0x0503, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x0503, blocks: (B:21:0x0039, B:23:0x0050, B:26:0x005a, B:28:0x0080, B:30:0x00a2, B:32:0x00a7, B:75:0x0194, B:77:0x019a, B:79:0x019e, B:82:0x01c4, B:84:0x01d6, B:183:0x0343, B:87:0x01de, B:95:0x01f1, B:96:0x01f8, B:98:0x01fe, B:99:0x0208, B:101:0x0214, B:102:0x0218, B:103:0x0221, B:105:0x022d, B:112:0x0239, B:113:0x0241, B:116:0x0249, B:118:0x024f, B:119:0x0254, B:125:0x0264, B:127:0x026d, B:126:0x026a, B:128:0x0276, B:130:0x027c, B:131:0x0283, B:133:0x0287, B:135:0x028d, B:137:0x0296, B:139:0x029c, B:140:0x02a0, B:142:0x02a8, B:144:0x02ae, B:146:0x02b4, B:148:0x02bd, B:150:0x02ca, B:152:0x02cd, B:154:0x02db, B:158:0x02e5, B:160:0x02ee, B:182:0x033f, B:159:0x02eb, B:161:0x02f4, B:163:0x02f8, B:165:0x02fe, B:167:0x0306, B:169:0x030c, B:170:0x0310, B:172:0x0318, B:174:0x031e, B:176:0x0324, B:179:0x0331, B:181:0x033a, B:180:0x0337, B:185:0x035a, B:231:0x0414, B:234:0x041c, B:236:0x0423, B:238:0x042f, B:239:0x0435, B:240:0x043c, B:241:0x043d, B:242:0x0444, B:244:0x044c, B:246:0x0454, B:248:0x045a, B:251:0x0464, B:253:0x0468, B:255:0x0471, B:257:0x0498, B:259:0x04a1, B:261:0x04c8, B:263:0x04e5, B:265:0x04eb, B:267:0x04f1, B:268:0x04f8, B:192:0x036d, B:194:0x0373, B:200:0x0381, B:201:0x038a, B:202:0x0396, B:204:0x039c, B:206:0x03a0, B:207:0x03a8, B:209:0x03ac, B:211:0x03b2, B:213:0x03b8, B:216:0x03c2, B:218:0x03c6, B:219:0x03ea, B:221:0x03f2, B:226:0x03fd, B:228:0x0405, B:230:0x040d, B:31:0x00a5, B:33:0x00b3, B:35:0x00b7, B:37:0x00c0, B:42:0x00c9, B:43:0x00cf, B:45:0x00d6, B:49:0x00de, B:51:0x0112, B:53:0x0137, B:58:0x0160, B:61:0x0166, B:63:0x016e, B:64:0x0171, B:66:0x0177, B:72:0x0189, B:74:0x0191, B:52:0x0132, B:54:0x013f, B:56:0x0143, B:57:0x014b), top: B:274:0x0039 }] */
    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void completeHeader(org.eclipse.jetty.http.HttpFields r23, boolean r24) throws org.eclipse.jetty.io.EofException {
        /*
            Method dump skipped, instruction units count: 1311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.HttpGenerator.completeHeader(org.eclipse.jetty.http.HttpFields, boolean):void");
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    public int flushBuffer() throws IOException {
        Buffer buffer;
        Boolean bool;
        Buffer buffer2;
        Buffer buffer3;
        try {
            if (this._state == 0) {
                throw new IllegalStateException("State==HEADER");
            }
            prepareBuffers();
            if (this._endp == null) {
                if (this._needCRLF && (buffer3 = this._buffer) != null) {
                    buffer3.put(HttpTokens.CRLF);
                }
                if (this._needEOC && (buffer2 = this._buffer) != null && !this._head) {
                    buffer2.put(LAST_CHUNK);
                }
                this._needCRLF = false;
                this._needEOC = false;
                return 0;
            }
            int iFlush = -1;
            int iFlushMask = flushMask();
            int i4 = 0;
            while (true) {
                switch (iFlushMask) {
                    case 0:
                        Buffer buffer4 = this._header;
                        if (buffer4 != null) {
                            buffer4.clear();
                        }
                        this._bypass = false;
                        this._bufferChunked = false;
                        Buffer buffer5 = this._buffer;
                        if (buffer5 != null) {
                            buffer5.clear();
                            if (this._contentLength == -2) {
                                this._buffer.setPutIndex(12);
                                this._buffer.setGetIndex(12);
                                Buffer buffer6 = this._content;
                                if (buffer6 != null && buffer6.length() < this._buffer.space() && this._state != 3) {
                                    this._buffer.put(this._content);
                                    this._content.clear();
                                    this._content = null;
                                }
                            }
                        }
                        if (this._needCRLF || this._needEOC || !((buffer = this._content) == null || buffer.length() == 0)) {
                            prepareBuffers();
                        } else {
                            if (this._state == 3) {
                                this._state = 4;
                            }
                            if (this._state == 4 && (bool = this._persistent) != null && !bool.booleanValue() && this._status != 100 && this._method == null) {
                                this._endp.shutdownOutput();
                            }
                        }
                        iFlush = 0;
                        break;
                    case 1:
                        iFlush = this._endp.flush(this._content);
                        break;
                    case 2:
                        iFlush = this._endp.flush(this._buffer);
                        break;
                    case 3:
                        iFlush = this._endp.flush(this._buffer, this._content, null);
                        break;
                    case 4:
                        iFlush = this._endp.flush(this._header);
                        break;
                    case 5:
                        iFlush = this._endp.flush(this._header, this._content, null);
                        break;
                    case 6:
                        iFlush = this._endp.flush(this._header, this._buffer, null);
                        break;
                    case 7:
                        throw new IllegalStateException();
                }
                if (iFlush > 0) {
                    i4 += iFlush;
                }
                int iFlushMask2 = flushMask();
                if (iFlush > 0 || (iFlushMask2 != 0 && iFlushMask == 0)) {
                    iFlushMask = iFlushMask2;
                }
            }
            return i4;
        } catch (IOException e4) {
            LOG.ignore(e4);
            if (e4 instanceof EofException) {
                throw e4;
            }
            throw new EofException(e4);
        }
    }

    public int getBytesBuffered() {
        Buffer buffer = this._header;
        int length = buffer == null ? 0 : buffer.length();
        Buffer buffer2 = this._buffer;
        int length2 = length + (buffer2 == null ? 0 : buffer2.length());
        Buffer buffer3 = this._content;
        return length2 + (buffer3 != null ? buffer3.length() : 0);
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    public boolean isBufferFull() {
        Buffer buffer;
        return super.isBufferFull() || this._bufferChunked || this._bypass || (this._contentLength == -2 && (buffer = this._buffer) != null && buffer.space() < 12);
    }

    public boolean isEmpty() {
        Buffer buffer;
        Buffer buffer2;
        Buffer buffer3 = this._header;
        return (buffer3 == null || buffer3.length() == 0) && ((buffer = this._buffer) == null || buffer.length() == 0) && ((buffer2 = this._content) == null || buffer2.length() == 0);
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator
    public boolean isRequest() {
        return this._method != null;
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator
    public boolean isResponse() {
        return this._method == null;
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator
    public int prepareUncheckedAddContent() throws IOException {
        if (this._noContent || this._last || this._state == 4) {
            return -1;
        }
        Buffer buffer = this._content;
        if ((buffer != null && buffer.length() > 0) || this._bufferChunked) {
            flushBuffer();
            if ((buffer != null && buffer.length() > 0) || this._bufferChunked) {
                throw new IllegalStateException("FULL");
            }
        }
        if (this._buffer == null) {
            this._buffer = this._buffers.getBuffer();
        }
        this._contentWritten -= (long) this._buffer.length();
        if (this._head) {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        return this._buffer.space() - (this._contentLength == -2 ? 12 : 0);
    }

    @Override // org.eclipse.jetty.http.AbstractGenerator, org.eclipse.jetty.http.Generator
    public void reset() {
        EndPoint endPoint;
        Boolean bool = this._persistent;
        if (bool != null && !bool.booleanValue() && (endPoint = this._endp) != null && !endPoint.isOutputShutdown()) {
            try {
                this._endp.shutdownOutput();
            } catch (IOException e4) {
                LOG.ignore(e4);
            }
        }
        super.reset();
        Buffer buffer = this._buffer;
        if (buffer != null) {
            buffer.clear();
        }
        Buffer buffer2 = this._header;
        if (buffer2 != null) {
            buffer2.clear();
        }
        if (this._content != null) {
            this._content = null;
        }
        this._bypass = false;
        this._needCRLF = false;
        this._needEOC = false;
        this._bufferChunked = false;
        this._method = null;
        this._uri = null;
        this._noContent = false;
    }

    public void send1xx(int i4) {
        if (this._state != 0) {
            return;
        }
        if (i4 < 100 || i4 > 199) {
            throw new IllegalArgumentException("!1xx");
        }
        Status status = __status[i4];
        if (status == null) {
            throw new IllegalArgumentException(i4 + "?");
        }
        if (this._header == null) {
            this._header = this._buffers.getHeader();
        }
        this._header.put(status._responseLine);
        this._header.put(HttpTokens.CRLF);
        while (this._header.length() > 0) {
            try {
                int iFlush = this._endp.flush(this._header);
                if (iFlush < 0 || !this._endp.isOpen()) {
                    throw new EofException();
                }
                if (iFlush == 0) {
                    Thread.sleep(100L);
                }
            } catch (InterruptedException e4) {
                LOG.debug(e4);
                throw new InterruptedIOException(e4.toString());
            }
        }
    }

    public void sendResponse(Buffer buffer) {
        Buffer buffer2;
        if (this._noContent || this._state != 0 || (((buffer2 = this._content) != null && buffer2.length() > 0) || this._bufferChunked || this._head)) {
            throw new IllegalStateException();
        }
        this._last = true;
        this._content = buffer;
        this._bypass = true;
        this._state = 3;
        long length = buffer.length();
        this._contentWritten = length;
        this._contentLength = length;
    }

    public String toString() {
        Buffer buffer = this._header;
        Buffer buffer2 = this._buffer;
        Buffer buffer3 = this._content;
        Object[] objArr = new Object[5];
        objArr[0] = getClass().getSimpleName();
        objArr[1] = Integer.valueOf(this._state);
        objArr[2] = Integer.valueOf(buffer == null ? -1 : buffer.length());
        objArr[3] = Integer.valueOf(buffer2 == null ? -1 : buffer2.length());
        objArr[4] = Integer.valueOf(buffer3 != null ? buffer3.length() : -1);
        return String.format("%s{s=%d,h=%d,b=%d,c=%d}", objArr);
    }
}
