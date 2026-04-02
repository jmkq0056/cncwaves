package org.eclipse.jetty.http;

import android.support.v4.media.f;
import java.io.IOException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferCache;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.io.View;
import org.eclipse.jetty.io.bio.StreamEndPoint;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class HttpParser implements Parser {
    private static final Logger LOG = Log.getLogger((Class<?>) HttpParser.class);
    public static final int STATE_CHUNK = 6;
    public static final int STATE_CHUNKED_CONTENT = 3;
    public static final int STATE_CHUNK_PARAMS = 5;
    public static final int STATE_CHUNK_SIZE = 4;
    public static final int STATE_CONTENT = 2;
    public static final int STATE_END = 0;
    public static final int STATE_END0 = -8;
    public static final int STATE_END1 = -7;
    public static final int STATE_EOF_CONTENT = 1;
    public static final int STATE_FIELD0 = -13;
    public static final int STATE_FIELD2 = -6;
    public static final int STATE_HEADER = -5;
    public static final int STATE_HEADER_IN_NAME = -3;
    public static final int STATE_HEADER_IN_VALUE = -1;
    public static final int STATE_HEADER_NAME = -4;
    public static final int STATE_HEADER_VALUE = -2;
    public static final int STATE_SEEKING_EOF = 7;
    public static final int STATE_SPACE1 = -12;
    public static final int STATE_SPACE2 = -9;
    public static final int STATE_START = -14;
    public static final int STATE_STATUS = -11;
    public static final int STATE_URI = -10;
    private Buffer _body;
    private Buffer _buffer;
    private final Buffers _buffers;
    private BufferCache.CachedBuffer _cached;
    public int _chunkLength;
    public int _chunkPosition;
    public long _contentLength;
    public long _contentPosition;
    public final View _contentView;
    private final EndPoint _endp;
    public byte _eol;
    private boolean _forceContentBuffer;
    private final EventHandler _handler;
    private boolean _headResponse;
    private Buffer _header;
    public int _length;
    private String _multiLineValue;
    private boolean _persistent;
    private int _responseStatus;
    public int _state;
    private final View.CaseInsensitive _tok0;
    private final View.CaseInsensitive _tok1;

    public static abstract class EventHandler {
        public abstract void content(Buffer buffer);

        public void earlyEOF() {
        }

        public void headerComplete() {
        }

        public void messageComplete(long j4) {
        }

        public void parsedHeader(Buffer buffer, Buffer buffer2) {
        }

        public abstract void startRequest(Buffer buffer, Buffer buffer2, Buffer buffer3);

        public abstract void startResponse(Buffer buffer, int i4, Buffer buffer2);
    }

    public HttpParser(Buffer buffer, EventHandler eventHandler) {
        this._contentView = new View();
        this._state = -14;
        this._endp = null;
        this._buffers = null;
        this._header = buffer;
        this._buffer = buffer;
        this._handler = eventHandler;
        this._tok0 = new View.CaseInsensitive(this._header);
        this._tok1 = new View.CaseInsensitive(this._header);
    }

    public int available() throws IOException {
        View view = this._contentView;
        if (view != null && view.length() > 0) {
            return this._contentView.length();
        }
        if (this._endp.isBlocking()) {
            if (this._state <= 0) {
                return 0;
            }
            EndPoint endPoint = this._endp;
            return (!(endPoint instanceof StreamEndPoint) || ((StreamEndPoint) endPoint).getInputStream().available() <= 0) ? 0 : 1;
        }
        parseNext();
        View view2 = this._contentView;
        if (view2 == null) {
            return 0;
        }
        return view2.length();
    }

    public Buffer blockForContent(long j4) throws IOException {
        EndPoint endPoint;
        if (this._contentView.length() > 0) {
            return this._contentView;
        }
        if (getState() <= 0 || isState(7)) {
            return null;
        }
        try {
            parseNext();
            while (this._contentView.length() == 0 && !isState(0) && !isState(7) && (endPoint = this._endp) != null && endPoint.isOpen()) {
                if (!this._endp.isBlocking()) {
                    if (parseNext() <= 0) {
                        if (!this._endp.blockReadable(j4)) {
                            this._endp.close();
                            throw new EofException("timeout");
                        }
                    }
                }
                parseNext();
            }
            if (this._contentView.length() > 0) {
                return this._contentView;
            }
            return null;
        } catch (IOException e4) {
            this._endp.close();
            throw e4;
        }
    }

    public int fill() throws IOException {
        Buffer buffer;
        Buffer buffer2;
        if (this._buffer == null) {
            this._buffer = getHeaderBuffer();
        }
        if (this._state > 0) {
            Buffer buffer3 = this._buffer;
            Buffer buffer4 = this._header;
            if (buffer3 == buffer4 && buffer4 != null && !buffer4.hasContent() && (buffer2 = this._body) != null && buffer2.hasContent()) {
                Buffer buffer5 = this._body;
                this._buffer = buffer5;
                return buffer5.length();
            }
        }
        Buffer buffer6 = this._buffer;
        Buffer buffer7 = this._header;
        if (buffer6 == buffer7 && this._state > 0 && buffer7.length() == 0 && ((this._forceContentBuffer || this._contentLength - this._contentPosition > this._header.capacity()) && ((buffer = this._body) != null || this._buffers != null))) {
            if (buffer == null) {
                this._body = this._buffers.getBuffer();
            }
            this._buffer = this._body;
        }
        if (this._endp == null) {
            return -1;
        }
        Buffer buffer8 = this._buffer;
        if (buffer8 == this._body || this._state > 0) {
            buffer8.compact();
        }
        if (this._buffer.space() == 0) {
            LOG.warn("HttpParser Full for {} ", this._endp);
            this._buffer.clear();
            StringBuilder sbA = f.a("Request Entity Too Large: ");
            sbA.append(this._buffer == this._body ? "body" : "head");
            throw new HttpException(HttpStatus.REQUEST_ENTITY_TOO_LARGE_413, sbA.toString());
        }
        try {
            return this._endp.fill(this._buffer);
        } catch (IOException e4) {
            LOG.debug(e4);
            if (e4 instanceof EofException) {
                throw e4;
            }
            throw new EofException(e4);
        }
    }

    public Buffer getBodyBuffer() {
        return this._body;
    }

    public long getContentLength() {
        return this._contentLength;
    }

    public long getContentRead() {
        return this._contentPosition;
    }

    public Buffer getHeaderBuffer() {
        if (this._header == null) {
            Buffer header = this._buffers.getHeader();
            this._header = header;
            this._tok0.update(header);
            this._tok1.update(this._header);
        }
        return this._header;
    }

    public int getState() {
        return this._state;
    }

    public boolean inContentState() {
        return this._state > 0;
    }

    public boolean inHeaderState() {
        return this._state < 0;
    }

    public boolean isChunking() {
        return this._contentLength == -2;
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean isComplete() {
        return this._responseStatus > 0 ? isState(0) || isState(7) : isState(0);
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean isIdle() {
        return isState(-14);
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean isMoreInBuffer() {
        Buffer buffer;
        Buffer buffer2 = this._header;
        return (buffer2 != null && buffer2.hasContent()) || ((buffer = this._body) != null && buffer.hasContent());
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean isPersistent() {
        return this._persistent;
    }

    public boolean isState(int i4) {
        return this._state == i4;
    }

    public void parse() {
        if (this._state == 0) {
            reset();
        }
        if (this._state != -14) {
            throw new IllegalStateException("!START");
        }
        while (this._state != 0 && parseNext() >= 0) {
        }
    }

    @Override // org.eclipse.jetty.http.Parser
    public boolean parseAvailable() {
        Buffer buffer;
        boolean z3 = parseNext() > 0;
        while (!isComplete() && (buffer = this._buffer) != null && buffer.length() > 0 && !this._contentView.hasContent()) {
            z3 |= parseNext() > 0;
        }
        return z3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0435, code lost:
    
        r3 = r17._responseStatus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0437, code lost:
    
        if (r3 <= 0) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x043b, code lost:
    
        if (r3 == 304) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x043f, code lost:
    
        if (r3 == 204) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0443, code lost:
    
        if (r3 >= 200) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0445, code lost:
    
        r17._contentLength = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0450, code lost:
    
        if (r17._contentLength != (-3)) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0452, code lost:
    
        if (r3 == 0) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0456, code lost:
    
        if (r3 == 304) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x045a, code lost:
    
        if (r3 == 204) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x045e, code lost:
    
        if (r3 >= 200) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0461, code lost:
    
        r17._contentLength = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x0466, code lost:
    
        r3 = 0;
        r17._contentLength = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x046b, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x046d, code lost:
    
        r17._contentPosition = r3;
        r17._eol = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0471, code lost:
    
        if (r9 != 13) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0479, code lost:
    
        if (r17._buffer.hasContent() == false) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0483, code lost:
    
        if (r17._buffer.peek() != 10) goto L259;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0485, code lost:
    
        r17._eol = r17._buffer.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x048d, code lost:
    
        r2 = r17._contentLength;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0494, code lost:
    
        if (r2 <= org.xbill.DNS.TTL.MAX_VALUE) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0496, code lost:
    
        r2 = androidx.appcompat.widget.ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x049a, code lost:
    
        r2 = (int) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x049c, code lost:
    
        if (r2 == (-2)) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x049e, code lost:
    
        if (r2 == (-1)) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x04a0, code lost:
    
        if (r2 == 0) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x04a2, code lost:
    
        r17._state = 2;
        r17._handler.headerComplete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x04ae, code lost:
    
        if (r17._persistent != false) goto L277;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x04b0, code lost:
    
        r2 = r17._responseStatus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x04b4, code lost:
    
        if (r2 < 100) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x04b8, code lost:
    
        if (r2 >= 200) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x04bb, code lost:
    
        r2 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x04bd, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x04be, code lost:
    
        r17._state = r2;
        r17._handler.headerComplete();
        r17._handler.messageComplete(r17._contentPosition);
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x04cd, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x04ce, code lost:
    
        r17._state = 1;
        r17._handler.headerComplete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x04d7, code lost:
    
        r17._state = 3;
        r17._handler.headerComplete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x04e0, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x06dc, code lost:
    
        r3 = r17._responseStatus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x06de, code lost:
    
        if (r3 <= 0) goto L365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x06e2, code lost:
    
        if (r17._headResponse == false) goto L365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x06e6, code lost:
    
        if (r17._persistent != false) goto L363;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x06ea, code lost:
    
        if (r3 < 100) goto L362;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x06ee, code lost:
    
        if (r3 >= 200) goto L362;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x06f1, code lost:
    
        r3 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x06f3, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x06f4, code lost:
    
        r17._state = r3;
        r17._handler.messageComplete(r17._contentLength);
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x06fd, code lost:
    
        r3 = r17._buffer.length();
        r5 = r17._state;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0705, code lost:
    
        r6 = r17._state;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0707, code lost:
    
        if (r6 <= 0) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0709, code lost:
    
        if (r3 <= 0) goto L534;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x070b, code lost:
    
        if (r5 == r6) goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x070d, code lost:
    
        r4 = r4 + 1;
        r5 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0712, code lost:
    
        if (r17._eol != 13) goto L535;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x071c, code lost:
    
        if (r17._buffer.peek() != 10) goto L536;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x071e, code lost:
    
        r17._eol = r17._buffer.get();
        r3 = r17._buffer.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x072d, code lost:
    
        r17._eol = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0732, code lost:
    
        switch(r17._state) {
            case 1: goto L545;
            case 2: goto L544;
            case 3: goto L465;
            case 4: goto L421;
            case 5: goto L400;
            case 6: goto L393;
            case 7: goto L382;
            default: goto L378;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0747, code lost:
    
        if (r17._buffer.length() <= 2) goto L385;
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x0749, code lost:
    
        r17._state = 0;
        r17._endp.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0757, code lost:
    
        if (r17._buffer.length() <= 0) goto L549;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x0763, code lost:
    
        if (java.lang.Character.isWhitespace(r17._buffer.get()) != false) goto L552;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x0766, code lost:
    
        r17._state = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x0768, code lost:
    
        r17._endp.close();
        r17._buffer.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x0773, code lost:
    
        r17._buffer.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x0779, code lost:
    
        r6 = r17._chunkLength - r17._chunkPosition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x077f, code lost:
    
        if (r6 != 0) goto L538;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x0781, code lost:
    
        r17._state = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x0785, code lost:
    
        if (r3 <= r6) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0787, code lost:
    
        r3 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0788, code lost:
    
        r2 = r17._buffer.get(r3);
        r17._contentPosition += (long) r2.length();
        r17._chunkPosition += r2.length();
        r17._contentView.update(r2);
        r17._handler.content(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x07ac, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x07ad, code lost:
    
        r3 = r17._buffer.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x07b4, code lost:
    
        if (r3 == 13) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x07b8, code lost:
    
        if (r3 != 10) goto L405;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x07c0, code lost:
    
        r17._eol = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x07c4, code lost:
    
        if (r17._chunkLength != 0) goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x07c6, code lost:
    
        if (r3 != 13) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x07ce, code lost:
    
        if (r17._buffer.hasContent() == false) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x07d8, code lost:
    
        if (r17._buffer.peek() != 10) goto L414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x07da, code lost:
    
        r17._eol = r17._buffer.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x07e4, code lost:
    
        if (r17._persistent == false) goto L417;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x07e6, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x07e8, code lost:
    
        r2 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x07e9, code lost:
    
        r17._state = r2;
        r17._handler.messageComplete(r17._contentPosition);
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x07f3, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x07f4, code lost:
    
        r17._state = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x07f8, code lost:
    
        r3 = r17._buffer.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x07ff, code lost:
    
        if (r3 == 13) goto L450;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0803, code lost:
    
        if (r3 != 10) goto L426;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x0806, code lost:
    
        if (r3 <= 32) goto L448;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x080a, code lost:
    
        if (r3 != 59) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x080f, code lost:
    
        if (r3 < 48) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x0813, code lost:
    
        if (r3 > 57) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x0815, code lost:
    
        r17._chunkLength = (r3 - 48) + (r17._chunkLength * 16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0823, code lost:
    
        if (r3 < 97) goto L441;
     */
    /* JADX WARN: Code restructure failed: missing block: B:439:0x0827, code lost:
    
        if (r3 > 102) goto L441;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0829, code lost:
    
        r17._chunkLength = ((r3 + 10) - 97) + (r17._chunkLength * 16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x0837, code lost:
    
        if (r3 < 65) goto L540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x083b, code lost:
    
        if (r3 > 70) goto L541;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x083d, code lost:
    
        r17._chunkLength = ((r3 + 10) - 65) + (r17._chunkLength * 16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x085f, code lost:
    
        throw new java.io.IOException("bad chunk char: " + ((int) r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0860, code lost:
    
        r17._state = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x0868, code lost:
    
        r17._eol = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x086f, code lost:
    
        if (r17._chunkLength != 0) goto L464;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0871, code lost:
    
        if (r3 != 13) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x0879, code lost:
    
        if (r17._buffer.hasContent() == false) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x0883, code lost:
    
        if (r17._buffer.peek() != 10) goto L458;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x0885, code lost:
    
        r17._eol = r17._buffer.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:459:0x088f, code lost:
    
        if (r17._persistent == false) goto L461;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0891, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0893, code lost:
    
        r2 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x0894, code lost:
    
        r17._state = r2;
        r17._handler.messageComplete(r17._contentPosition);
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x089e, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x089f, code lost:
    
        r17._state = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x08a3, code lost:
    
        r3 = r17._buffer.peek();
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x08af, code lost:
    
        if (r3 == 13) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x08b1, code lost:
    
        if (r3 != 10) goto L469;
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x08b4, code lost:
    
        if (r3 > 32) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x08b6, code lost:
    
        r17._buffer.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x08bd, code lost:
    
        r17._chunkLength = 0;
        r17._chunkPosition = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x08c2, code lost:
    
        r17._state = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x08c5, code lost:
    
        r17._eol = r17._buffer.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x08d0, code lost:
    
        r4 = r17._contentLength;
        r6 = r17._contentPosition;
        r4 = r4 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x08d9, code lost:
    
        if (r4 != 0) goto L486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x08dd, code lost:
    
        if (r17._persistent == false) goto L483;
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x08df, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x08e1, code lost:
    
        r3 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x08e2, code lost:
    
        r17._state = r3;
        r17._handler.messageComplete(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x08ea, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x08ee, code lost:
    
        if (r3 <= r4) goto L489;
     */
    /* JADX WARN: Code restructure failed: missing block: B:488:0x08f0, code lost:
    
        r3 = (int) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x08f1, code lost:
    
        r2 = r17._buffer.get(r3);
        r17._contentPosition += (long) r2.length();
        r17._contentView.update(r2);
        r17._handler.content(r2);
        r2 = r17._contentPosition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x0911, code lost:
    
        if (r2 != r17._contentLength) goto L554;
     */
    /* JADX WARN: Code restructure failed: missing block: B:492:0x0915, code lost:
    
        if (r17._persistent == false) goto L494;
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x0917, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x0919, code lost:
    
        r4 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x091a, code lost:
    
        r17._state = r4;
        r17._handler.messageComplete(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x0921, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x0923, code lost:
    
        r2 = r17._buffer;
        r2 = r2.get(r2.length());
        r17._contentPosition += (long) r2.length();
        r17._contentView.update(r2);
        r17._handler.content(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x0942, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x0949, code lost:
    
        r3 = r17._buffer.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:502:0x094c, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:?, code lost:
    
        return 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0278 A[Catch: HttpException -> 0x094d, TryCatch #4 {HttpException -> 0x094d, blocks: (B:80:0x012c, B:81:0x0132, B:83:0x0136, B:85:0x013e, B:86:0x0153, B:88:0x0157, B:89:0x015f, B:90:0x0191, B:91:0x0196, B:96:0x01a1, B:98:0x01a5, B:99:0x01aa, B:100:0x01bd, B:102:0x01c1, B:104:0x01c9, B:105:0x01de, B:107:0x01e2, B:108:0x01ea, B:109:0x021c, B:116:0x022e, B:117:0x0238, B:119:0x023c, B:121:0x0240, B:122:0x0254, B:123:0x025a, B:125:0x025e, B:126:0x0272, B:127:0x0278, B:134:0x0289, B:136:0x0290, B:137:0x0295, B:138:0x02a9, B:140:0x02ad, B:142:0x02b1, B:143:0x02c5, B:144:0x02cb, B:146:0x02cf, B:147:0x02e3, B:152:0x02f1, B:154:0x02f5, B:156:0x02fd, B:158:0x0305, B:220:0x03ee, B:225:0x03fa, B:227:0x0407, B:229:0x0419, B:230:0x0435, B:238:0x0445, B:252:0x046d, B:254:0x0473, B:256:0x047b, B:258:0x0485, B:259:0x048d, B:267:0x04a2, B:269:0x04ac, B:271:0x04b0, B:278:0x04be, B:280:0x04ce, B:281:0x04d7, B:262:0x049a, B:239:0x044a, B:249:0x0461, B:250:0x0466, B:160:0x0309, B:164:0x0318, B:166:0x031e, B:168:0x0328, B:176:0x033d, B:179:0x0343, B:182:0x034f, B:184:0x0354, B:185:0x0361, B:186:0x0362, B:188:0x036f, B:189:0x0372, B:191:0x037e, B:192:0x0381, B:195:0x038a, B:196:0x0392, B:197:0x0393, B:204:0x03a2, B:209:0x03a9, B:211:0x03b7, B:218:0x03d0, B:216:0x03ca, B:217:0x03cd, B:219:0x03d4, B:167:0x0321, B:163:0x030f, B:283:0x04e1, B:287:0x04ee, B:289:0x04f2, B:291:0x0524, B:295:0x0533, B:290:0x0508, B:300:0x0555, B:302:0x0559, B:303:0x0584, B:305:0x05a8, B:307:0x05b4, B:310:0x05d1, B:313:0x05fb, B:318:0x061c, B:321:0x062d, B:322:0x0657, B:328:0x0668, B:329:0x066f, B:330:0x0670, B:332:0x0679, B:333:0x0683, B:335:0x068b, B:339:0x06ab, B:345:0x06bf, B:346:0x06c6, B:347:0x06c7, B:350:0x06d2, B:351:0x06dc, B:353:0x06e0, B:355:0x06e4, B:364:0x06f4, B:365:0x06fd, B:366:0x0705, B:370:0x070d, B:371:0x0710, B:373:0x0714, B:375:0x071e, B:376:0x072d, B:377:0x0732, B:500:0x0943, B:382:0x0740, B:384:0x0749, B:392:0x0773, B:385:0x0751, B:387:0x0759, B:391:0x0768, B:393:0x0779, B:395:0x0781, B:398:0x0788, B:400:0x07ad, B:406:0x07c0, B:409:0x07c8, B:411:0x07d0, B:413:0x07da, B:414:0x07e2, B:418:0x07e9, B:420:0x07f4, B:421:0x07f8, B:434:0x0815, B:440:0x0829, B:445:0x083d, B:446:0x0849, B:447:0x085f, B:448:0x0860, B:450:0x0868, B:453:0x0873, B:455:0x087b, B:457:0x0885, B:458:0x088d, B:462:0x0894, B:464:0x089f, B:465:0x08a3, B:470:0x08b6, B:475:0x08c2, B:476:0x08c5, B:478:0x08d0, B:480:0x08db, B:484:0x08e2, B:486:0x08eb, B:488:0x08f0, B:489:0x08f1, B:491:0x0913, B:495:0x091a, B:498:0x0923), top: B:517:0x012c, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00be A[Catch: HttpException -> 0x0951, TryCatch #3 {HttpException -> 0x0951, blocks: (B:3:0x0004, B:6:0x0009, B:8:0x000d, B:9:0x0013, B:11:0x0019, B:13:0x0021, B:15:0x0029, B:57:0x00d8, B:59:0x00e1, B:60:0x00e9, B:62:0x00f3, B:65:0x00f9, B:66:0x00fc, B:69:0x010a, B:70:0x010e, B:71:0x0113, B:72:0x0114, B:207:0x03a6, B:390:0x0766, B:473:0x08bd, B:29:0x0069, B:31:0x006f, B:33:0x0077, B:35:0x007b, B:36:0x0099, B:40:0x00a1, B:42:0x00a7, B:43:0x00ac, B:47:0x00c2, B:49:0x00c8, B:52:0x00cf, B:53:0x00d4, B:55:0x00d6, B:44:0x00b4, B:45:0x00be, B:25:0x0059), top: B:516:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0196 A[Catch: HttpException -> 0x094d, TryCatch #4 {HttpException -> 0x094d, blocks: (B:80:0x012c, B:81:0x0132, B:83:0x0136, B:85:0x013e, B:86:0x0153, B:88:0x0157, B:89:0x015f, B:90:0x0191, B:91:0x0196, B:96:0x01a1, B:98:0x01a5, B:99:0x01aa, B:100:0x01bd, B:102:0x01c1, B:104:0x01c9, B:105:0x01de, B:107:0x01e2, B:108:0x01ea, B:109:0x021c, B:116:0x022e, B:117:0x0238, B:119:0x023c, B:121:0x0240, B:122:0x0254, B:123:0x025a, B:125:0x025e, B:126:0x0272, B:127:0x0278, B:134:0x0289, B:136:0x0290, B:137:0x0295, B:138:0x02a9, B:140:0x02ad, B:142:0x02b1, B:143:0x02c5, B:144:0x02cb, B:146:0x02cf, B:147:0x02e3, B:152:0x02f1, B:154:0x02f5, B:156:0x02fd, B:158:0x0305, B:220:0x03ee, B:225:0x03fa, B:227:0x0407, B:229:0x0419, B:230:0x0435, B:238:0x0445, B:252:0x046d, B:254:0x0473, B:256:0x047b, B:258:0x0485, B:259:0x048d, B:267:0x04a2, B:269:0x04ac, B:271:0x04b0, B:278:0x04be, B:280:0x04ce, B:281:0x04d7, B:262:0x049a, B:239:0x044a, B:249:0x0461, B:250:0x0466, B:160:0x0309, B:164:0x0318, B:166:0x031e, B:168:0x0328, B:176:0x033d, B:179:0x0343, B:182:0x034f, B:184:0x0354, B:185:0x0361, B:186:0x0362, B:188:0x036f, B:189:0x0372, B:191:0x037e, B:192:0x0381, B:195:0x038a, B:196:0x0392, B:197:0x0393, B:204:0x03a2, B:209:0x03a9, B:211:0x03b7, B:218:0x03d0, B:216:0x03ca, B:217:0x03cd, B:219:0x03d4, B:167:0x0321, B:163:0x030f, B:283:0x04e1, B:287:0x04ee, B:289:0x04f2, B:291:0x0524, B:295:0x0533, B:290:0x0508, B:300:0x0555, B:302:0x0559, B:303:0x0584, B:305:0x05a8, B:307:0x05b4, B:310:0x05d1, B:313:0x05fb, B:318:0x061c, B:321:0x062d, B:322:0x0657, B:328:0x0668, B:329:0x066f, B:330:0x0670, B:332:0x0679, B:333:0x0683, B:335:0x068b, B:339:0x06ab, B:345:0x06bf, B:346:0x06c6, B:347:0x06c7, B:350:0x06d2, B:351:0x06dc, B:353:0x06e0, B:355:0x06e4, B:364:0x06f4, B:365:0x06fd, B:366:0x0705, B:370:0x070d, B:371:0x0710, B:373:0x0714, B:375:0x071e, B:376:0x072d, B:377:0x0732, B:500:0x0943, B:382:0x0740, B:384:0x0749, B:392:0x0773, B:385:0x0751, B:387:0x0759, B:391:0x0768, B:393:0x0779, B:395:0x0781, B:398:0x0788, B:400:0x07ad, B:406:0x07c0, B:409:0x07c8, B:411:0x07d0, B:413:0x07da, B:414:0x07e2, B:418:0x07e9, B:420:0x07f4, B:421:0x07f8, B:434:0x0815, B:440:0x0829, B:445:0x083d, B:446:0x0849, B:447:0x085f, B:448:0x0860, B:450:0x0868, B:453:0x0873, B:455:0x087b, B:457:0x0885, B:458:0x088d, B:462:0x0894, B:464:0x089f, B:465:0x08a3, B:470:0x08b6, B:475:0x08c2, B:476:0x08c5, B:478:0x08d0, B:480:0x08db, B:484:0x08e2, B:486:0x08eb, B:488:0x08f0, B:489:0x08f1, B:491:0x0913, B:495:0x091a, B:498:0x0923), top: B:517:0x012c, inners: #1 }] */
    /* JADX WARN: Type inference failed for: r12v14, types: [org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer] */
    /* JADX WARN: Type inference failed for: r12v15, types: [org.eclipse.jetty.io.Buffer] */
    /* JADX WARN: Type inference failed for: r12v16, types: [org.eclipse.jetty.io.Buffer] */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r14v7, types: [org.eclipse.jetty.http.HttpHeaderValues, org.eclipse.jetty.io.BufferCache] */
    /* JADX WARN: Type inference failed for: r3v121, types: [org.eclipse.jetty.http.HttpParser$EventHandler] */
    /* JADX WARN: Type inference failed for: r3v125, types: [org.eclipse.jetty.http.HttpHeaderValues, org.eclipse.jetty.io.BufferCache] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int parseNext() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 2446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.HttpParser.parseNext():int");
    }

    @Override // org.eclipse.jetty.http.Parser
    public void reset() {
        Buffer buffer;
        View view = this._contentView;
        view.setGetIndex(view.putIndex());
        this._state = this._persistent ? -14 : this._endp.isInputShutdown() ? 0 : 7;
        this._contentLength = -3L;
        this._contentPosition = 0L;
        this._length = 0;
        this._responseStatus = 0;
        if (this._eol == 13 && (buffer = this._buffer) != null && buffer.hasContent() && this._buffer.peek() == 10) {
            this._eol = this._buffer.get();
        }
        Buffer buffer2 = this._body;
        if (buffer2 != null && buffer2.hasContent()) {
            Buffer buffer3 = this._header;
            if (buffer3 == null) {
                getHeaderBuffer();
            } else {
                buffer3.setMarkIndex(-1);
                this._header.compact();
            }
            int iSpace = this._header.space();
            if (iSpace > this._body.length()) {
                iSpace = this._body.length();
            }
            Buffer buffer4 = this._body;
            buffer4.peek(buffer4.getIndex(), iSpace);
            Buffer buffer5 = this._body;
            buffer5.skip(this._header.put(buffer5.peek(buffer5.getIndex(), iSpace)));
        }
        Buffer buffer6 = this._header;
        if (buffer6 != null) {
            buffer6.setMarkIndex(-1);
            this._header.compact();
        }
        Buffer buffer7 = this._body;
        if (buffer7 != null) {
            buffer7.setMarkIndex(-1);
        }
        this._buffer = this._header;
        returnBuffers();
    }

    @Override // org.eclipse.jetty.http.Parser
    public void returnBuffers() {
        Buffers buffers;
        Buffers buffers2;
        Buffer buffer = this._body;
        if (buffer != null && !buffer.hasContent() && this._body.markIndex() == -1 && (buffers2 = this._buffers) != null) {
            Buffer buffer2 = this._buffer;
            Buffer buffer3 = this._body;
            if (buffer2 == buffer3) {
                this._buffer = this._header;
            }
            if (buffers2 != null) {
                buffers2.returnBuffer(buffer3);
            }
            this._body = null;
        }
        Buffer buffer4 = this._header;
        if (buffer4 == null || buffer4.hasContent() || this._header.markIndex() != -1 || (buffers = this._buffers) == null) {
            return;
        }
        Buffer buffer5 = this._buffer;
        Buffer buffer6 = this._header;
        if (buffer5 == buffer6) {
            this._buffer = null;
        }
        buffers.returnBuffer(buffer6);
        this._header = null;
    }

    public void setForceContentBuffer(boolean z3) {
        this._forceContentBuffer = z3;
    }

    public void setHeadResponse(boolean z3) {
        this._headResponse = z3;
    }

    @Override // org.eclipse.jetty.http.Parser
    public void setPersistent(boolean z3) {
        this._persistent = z3;
        if (z3) {
            return;
        }
        int i4 = this._state;
        if (i4 == 0 || i4 == -14) {
            this._state = 7;
        }
    }

    public void setState(int i4) {
        this._state = i4;
        this._contentLength = -3L;
    }

    public String toString(Buffer buffer) {
        StringBuilder sbA = f.a("state=");
        sbA.append(this._state);
        sbA.append(" length=");
        sbA.append(this._length);
        sbA.append(" buf=");
        sbA.append(buffer.hashCode());
        return sbA.toString();
    }

    public String toString() {
        return String.format("%s{s=%d,l=%d,c=%d}", getClass().getSimpleName(), Integer.valueOf(this._state), Integer.valueOf(this._length), Long.valueOf(this._contentLength));
    }

    public HttpParser(Buffers buffers, EndPoint endPoint, EventHandler eventHandler) {
        this._contentView = new View();
        this._state = -14;
        this._buffers = buffers;
        this._endp = endPoint;
        this._handler = eventHandler;
        this._tok0 = new View.CaseInsensitive();
        this._tok1 = new View.CaseInsensitive();
    }
}
