package org.eclipse.jetty.client;

import android.support.v4.media.g;
import androidx.appcompat.widget.ActivityChooserView;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.concurrent.atomic.AtomicInteger;
import org.eclipse.jetty.http.HttpFields;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpSchemes;
import org.eclipse.jetty.http.HttpURI;
import org.eclipse.jetty.http.HttpVersions;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.BufferCache;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.Timeout;

/* JADX INFO: loaded from: classes2.dex */
public class HttpExchange {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final Logger LOG = Log.getLogger((Class<?>) HttpExchange.class);
    public static final int STATUS_CANCELLED = 11;
    public static final int STATUS_CANCELLING = 10;
    public static final int STATUS_COMPLETED = 7;
    public static final int STATUS_EXCEPTED = 9;
    public static final int STATUS_EXPIRED = 8;
    public static final int STATUS_PARSING_CONTENT = 6;
    public static final int STATUS_PARSING_HEADERS = 5;
    public static final int STATUS_SENDING_COMPLETED = 14;
    public static final int STATUS_SENDING_PARSING_CONTENT = 13;
    public static final int STATUS_SENDING_PARSING_HEADERS = 12;
    public static final int STATUS_SENDING_REQUEST = 3;
    public static final int STATUS_START = 0;
    public static final int STATUS_WAITING_FOR_COMMIT = 2;
    public static final int STATUS_WAITING_FOR_CONNECTION = 1;
    public static final int STATUS_WAITING_FOR_RESPONSE = 4;
    private Address _address;
    private volatile AbstractHttpConnection _connection;
    public boolean _onDone;
    public boolean _onRequestCompleteDone;
    public boolean _onResponseCompleteDone;
    private Buffer _requestContent;
    private InputStream _requestContentSource;
    private volatile Timeout.Task _timeoutTask;
    private String _uri;
    private String _method = HttpMethods.GET;
    private Buffer _scheme = HttpSchemes.HTTP_BUFFER;
    private int _version = 11;
    private final HttpFields _requestFields = new HttpFields();
    private AtomicInteger _status = new AtomicInteger(0);
    private boolean _retryStatus = false;
    private boolean _configureListeners = true;
    private HttpEventListener _listener = new Listener();
    private Address _localAddress = null;
    private long _timeout = -1;
    private long _lastStateChange = System.currentTimeMillis();
    private long _sent = -1;
    private int _lastState = -1;
    private int _lastStatePeriod = -1;

    @Deprecated
    public static class CachedExchange extends org.eclipse.jetty.client.CachedExchange {
        public CachedExchange(boolean z3) {
            super(z3);
        }
    }

    @Deprecated
    public static class ContentExchange extends org.eclipse.jetty.client.ContentExchange {
    }

    public class Listener implements HttpEventListener {
        private Listener() {
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onConnectionFailed(Throwable th) {
            try {
                HttpExchange.this.onConnectionFailed(th);
            } finally {
                HttpExchange.this.done();
            }
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onException(Throwable th) {
            try {
                HttpExchange.this.onException(th);
            } finally {
                HttpExchange.this.done();
            }
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onExpire() {
            try {
                HttpExchange.this.onExpire();
            } finally {
                HttpExchange.this.done();
            }
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onRequestCommitted() {
            HttpExchange.this.onRequestCommitted();
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onRequestComplete() {
            try {
                HttpExchange.this.onRequestComplete();
                synchronized (HttpExchange.this) {
                    HttpExchange httpExchange = HttpExchange.this;
                    httpExchange._onRequestCompleteDone = true;
                    boolean z3 = httpExchange._onDone | httpExchange._onResponseCompleteDone;
                    httpExchange._onDone = z3;
                    if (z3) {
                        httpExchange.disassociate();
                    }
                    HttpExchange.this.notifyAll();
                }
            } catch (Throwable th) {
                synchronized (HttpExchange.this) {
                    HttpExchange httpExchange2 = HttpExchange.this;
                    httpExchange2._onRequestCompleteDone = true;
                    boolean z4 = httpExchange2._onDone | httpExchange2._onResponseCompleteDone;
                    httpExchange2._onDone = z4;
                    if (z4) {
                        httpExchange2.disassociate();
                    }
                    HttpExchange.this.notifyAll();
                    throw th;
                }
            }
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onResponseComplete() {
            try {
                HttpExchange.this.onResponseComplete();
                synchronized (HttpExchange.this) {
                    HttpExchange httpExchange = HttpExchange.this;
                    httpExchange._onResponseCompleteDone = true;
                    boolean z3 = httpExchange._onDone | httpExchange._onRequestCompleteDone;
                    httpExchange._onDone = z3;
                    if (z3) {
                        httpExchange.disassociate();
                    }
                    HttpExchange.this.notifyAll();
                }
            } catch (Throwable th) {
                synchronized (HttpExchange.this) {
                    HttpExchange httpExchange2 = HttpExchange.this;
                    httpExchange2._onResponseCompleteDone = true;
                    boolean z4 = httpExchange2._onDone | httpExchange2._onRequestCompleteDone;
                    httpExchange2._onDone = z4;
                    if (z4) {
                        httpExchange2.disassociate();
                    }
                    HttpExchange.this.notifyAll();
                    throw th;
                }
            }
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onResponseContent(Buffer buffer) {
            HttpExchange.this.onResponseContent(buffer);
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onResponseHeader(Buffer buffer, Buffer buffer2) {
            HttpExchange.this.onResponseHeader(buffer, buffer2);
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onResponseHeaderComplete() {
            HttpExchange.this.onResponseHeaderComplete();
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onResponseStatus(Buffer buffer, int i4, Buffer buffer2) {
            HttpExchange.this.onResponseStatus(buffer, i4, buffer2);
        }

        @Override // org.eclipse.jetty.client.HttpEventListener
        public void onRetry() {
            HttpExchange.this.setRetryStatus(true);
            try {
                HttpExchange.this.onRetry();
            } catch (IOException e4) {
                HttpExchange.LOG.debug(e4);
            }
        }
    }

    private void abort() {
        AbstractHttpConnection abstractHttpConnection = this._connection;
        try {
            if (abstractHttpConnection != null) {
                try {
                    abstractHttpConnection.close();
                } catch (IOException e4) {
                    LOG.debug(e4);
                }
            }
        } finally {
            disassociate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void done() {
        synchronized (this) {
            disassociate();
            this._onDone = true;
            notifyAll();
        }
    }

    private boolean isResponseCompleted() {
        boolean z3;
        synchronized (this) {
            z3 = this._onResponseCompleteDone;
        }
        return z3;
    }

    private boolean setStatusExpired(int i4, int i5) {
        boolean zCompareAndSet = this._status.compareAndSet(i5, i4);
        if (zCompareAndSet) {
            getEventListener().onExpire();
        }
        return zCompareAndSet;
    }

    public static String toState(int i4) {
        switch (i4) {
            case 0:
                return "START";
            case 1:
                return "CONNECTING";
            case 2:
                return "CONNECTED";
            case 3:
                return "SENDING";
            case 4:
                return "WAITING";
            case 5:
                return "HEADERS";
            case 6:
                return "CONTENT";
            case 7:
                return "COMPLETED";
            case 8:
                return "EXPIRED";
            case 9:
                return "EXCEPTED";
            case 10:
                return "CANCELLING";
            case 11:
                return "CANCELLED";
            case 12:
                return "SENDING+HEADERS";
            case 13:
                return "SENDING+CONTENT";
            case 14:
                return "SENDING+COMPLETED";
            default:
                return "UNKNOWN";
        }
    }

    public void addRequestHeader(String str, String str2) {
        getRequestFields().add(str, str2);
    }

    public void associate(AbstractHttpConnection abstractHttpConnection) {
        if (abstractHttpConnection.getEndPoint().getLocalAddr() != null) {
            this._localAddress = new Address(abstractHttpConnection.getEndPoint().getLocalAddr(), abstractHttpConnection.getEndPoint().getLocalPort());
        }
        this._connection = abstractHttpConnection;
        if (getStatus() == 10) {
            abort();
        }
    }

    public void cancel() {
        setStatus(10);
        abort();
    }

    public void cancelTimeout(HttpClient httpClient) {
        Timeout.Task task = this._timeoutTask;
        if (task != null) {
            httpClient.cancel(task);
        }
        this._timeoutTask = null;
    }

    public boolean configureListeners() {
        return this._configureListeners;
    }

    public AbstractHttpConnection disassociate() {
        AbstractHttpConnection abstractHttpConnection = this._connection;
        this._connection = null;
        if (getStatus() == 10) {
            setStatus(11);
        }
        return abstractHttpConnection;
    }

    public void expire(HttpDestination httpDestination) {
        AbstractHttpConnection abstractHttpConnection = this._connection;
        int status = getStatus();
        if (status < 7 || status == 12 || status == 13 || status == 14) {
            setStatus(8);
        }
        httpDestination.exchangeExpired(this);
        if (abstractHttpConnection != null) {
            abstractHttpConnection.exchangeExpired(this);
        }
    }

    public Address getAddress() {
        return this._address;
    }

    public HttpEventListener getEventListener() {
        return this._listener;
    }

    public Address getLocalAddress() {
        return this._localAddress;
    }

    public String getMethod() {
        return this._method;
    }

    public Buffer getRequestContent() {
        return this._requestContent;
    }

    public Buffer getRequestContentChunk(Buffer buffer) {
        synchronized (this) {
            if (this._requestContentSource != null) {
                if (buffer == null) {
                    buffer = new ByteArrayBuffer(8192);
                }
                int i4 = this._requestContentSource.read(buffer.array(), buffer.putIndex(), buffer.space());
                if (i4 >= 0) {
                    buffer.setPutIndex(buffer.putIndex() + i4);
                    return buffer;
                }
            }
            return null;
        }
    }

    public InputStream getRequestContentSource() {
        return this._requestContentSource;
    }

    public HttpFields getRequestFields() {
        return this._requestFields;
    }

    public String getRequestURI() {
        return this._uri;
    }

    public boolean getRetryStatus() {
        return this._retryStatus;
    }

    public Buffer getScheme() {
        return this._scheme;
    }

    public int getStatus() {
        return this._status.get();
    }

    public long getTimeout() {
        return this._timeout;
    }

    @Deprecated
    public String getURI() {
        return getRequestURI();
    }

    public int getVersion() {
        return this._version;
    }

    public boolean isAssociated() {
        return this._connection != null;
    }

    public boolean isDone() {
        boolean z3;
        synchronized (this) {
            z3 = this._onDone;
        }
        return z3;
    }

    public void onConnectionFailed(Throwable th) {
        LOG.warn("CONNECTION FAILED " + this, th);
    }

    public void onException(Throwable th) {
        LOG.warn(Log.EXCEPTION + this, th);
    }

    public void onExpire() {
        LOG.warn("EXPIRED " + this, new Object[0]);
    }

    public void onRequestCommitted() {
    }

    public void onRequestComplete() {
    }

    public void onResponseComplete() {
    }

    public void onResponseContent(Buffer buffer) {
    }

    public void onResponseHeader(Buffer buffer, Buffer buffer2) {
    }

    public void onResponseHeaderComplete() {
    }

    public void onResponseStatus(Buffer buffer, int i4, Buffer buffer2) {
    }

    public void onRetry() throws IOException {
        InputStream inputStream = this._requestContentSource;
        if (inputStream != null) {
            if (!inputStream.markSupported()) {
                throw new IOException("Unsupported retry attempt");
            }
            this._requestContent = null;
            this._requestContentSource.reset();
        }
    }

    public Connection onSwitchProtocol(EndPoint endPoint) {
        return null;
    }

    public void reset() {
        synchronized (this) {
            this._timeoutTask = null;
            this._onRequestCompleteDone = false;
            this._onResponseCompleteDone = false;
            this._onDone = false;
            setStatus(0);
        }
    }

    public void scheduleTimeout(final HttpDestination httpDestination) {
        this._timeoutTask = new Timeout.Task() { // from class: org.eclipse.jetty.client.HttpExchange.1
            @Override // org.eclipse.jetty.util.thread.Timeout.Task
            public void expired() {
                HttpExchange.this.expire(httpDestination);
            }
        };
        HttpClient httpClient = httpDestination.getHttpClient();
        long timeout = getTimeout();
        if (timeout > 0) {
            httpClient.schedule(this._timeoutTask, timeout);
        } else {
            httpClient.schedule(this._timeoutTask);
        }
    }

    public void setAddress(Address address) {
        this._address = address;
    }

    public void setConfigureListeners(boolean z3) {
        this._configureListeners = z3;
    }

    public void setEventListener(HttpEventListener httpEventListener) {
        this._listener = httpEventListener;
    }

    public void setMethod(String str) {
        this._method = str;
    }

    public void setRequestContent(Buffer buffer) {
        this._requestContent = buffer;
    }

    public void setRequestContentSource(InputStream inputStream) {
        this._requestContentSource = inputStream;
        if (inputStream == null || !inputStream.markSupported()) {
            return;
        }
        this._requestContentSource.mark(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public void setRequestContentType(String str) {
        getRequestFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, str);
    }

    public void setRequestHeader(String str, String str2) {
        getRequestFields().put(str, str2);
    }

    public void setRequestURI(String str) {
        this._uri = str;
    }

    public void setRetryStatus(boolean z3) {
        this._retryStatus = z3;
    }

    public void setScheme(Buffer buffer) {
        this._scheme = buffer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ac A[Catch: IOException -> 0x022d, TryCatch #1 {IOException -> 0x022d, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x001b, B:10:0x0028, B:129:0x0217, B:130:0x022c, B:12:0x002e, B:14:0x0032, B:15:0x003a, B:16:0x0040, B:23:0x0057, B:24:0x005f, B:25:0x0065, B:29:0x0078, B:37:0x0093, B:38:0x009b, B:39:0x00a1, B:43:0x00b4, B:52:0x00ce, B:59:0x00e3, B:60:0x00e7, B:63:0x00f3, B:65:0x00f7, B:67:0x00fd, B:68:0x0105, B:69:0x010d, B:70:0x0115, B:72:0x011a, B:73:0x0122, B:74:0x0128, B:80:0x013e, B:81:0x0146, B:82:0x014c, B:89:0x0164, B:90:0x016a, B:93:0x0176, B:95:0x017b, B:96:0x0182, B:97:0x0187, B:98:0x0190, B:105:0x01a7, B:106:0x01ac, B:108:0x01b5, B:110:0x01ba, B:111:0x01bf, B:115:0x01cc, B:117:0x01d1, B:118:0x01d6), top: B:135:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01bf A[Catch: IOException -> 0x022d, TryCatch #1 {IOException -> 0x022d, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x001b, B:10:0x0028, B:129:0x0217, B:130:0x022c, B:12:0x002e, B:14:0x0032, B:15:0x003a, B:16:0x0040, B:23:0x0057, B:24:0x005f, B:25:0x0065, B:29:0x0078, B:37:0x0093, B:38:0x009b, B:39:0x00a1, B:43:0x00b4, B:52:0x00ce, B:59:0x00e3, B:60:0x00e7, B:63:0x00f3, B:65:0x00f7, B:67:0x00fd, B:68:0x0105, B:69:0x010d, B:70:0x0115, B:72:0x011a, B:73:0x0122, B:74:0x0128, B:80:0x013e, B:81:0x0146, B:82:0x014c, B:89:0x0164, B:90:0x016a, B:93:0x0176, B:95:0x017b, B:96:0x0182, B:97:0x0187, B:98:0x0190, B:105:0x01a7, B:106:0x01ac, B:108:0x01b5, B:110:0x01ba, B:111:0x01bf, B:115:0x01cc, B:117:0x01d1, B:118:0x01d6), top: B:135:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01d6 A[Catch: IOException -> 0x022d, TRY_LEAVE, TryCatch #1 {IOException -> 0x022d, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x001b, B:10:0x0028, B:129:0x0217, B:130:0x022c, B:12:0x002e, B:14:0x0032, B:15:0x003a, B:16:0x0040, B:23:0x0057, B:24:0x005f, B:25:0x0065, B:29:0x0078, B:37:0x0093, B:38:0x009b, B:39:0x00a1, B:43:0x00b4, B:52:0x00ce, B:59:0x00e3, B:60:0x00e7, B:63:0x00f3, B:65:0x00f7, B:67:0x00fd, B:68:0x0105, B:69:0x010d, B:70:0x0115, B:72:0x011a, B:73:0x0122, B:74:0x0128, B:80:0x013e, B:81:0x0146, B:82:0x014c, B:89:0x0164, B:90:0x016a, B:93:0x0176, B:95:0x017b, B:96:0x0182, B:97:0x0187, B:98:0x0190, B:105:0x01a7, B:106:0x01ac, B:108:0x01b5, B:110:0x01ba, B:111:0x01bf, B:115:0x01cc, B:117:0x01d1, B:118:0x01d6), top: B:135:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01df A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x016a A[Catch: IOException -> 0x022d, TryCatch #1 {IOException -> 0x022d, blocks: (B:3:0x0001, B:5:0x000a, B:7:0x001b, B:10:0x0028, B:129:0x0217, B:130:0x022c, B:12:0x002e, B:14:0x0032, B:15:0x003a, B:16:0x0040, B:23:0x0057, B:24:0x005f, B:25:0x0065, B:29:0x0078, B:37:0x0093, B:38:0x009b, B:39:0x00a1, B:43:0x00b4, B:52:0x00ce, B:59:0x00e3, B:60:0x00e7, B:63:0x00f3, B:65:0x00f7, B:67:0x00fd, B:68:0x0105, B:69:0x010d, B:70:0x0115, B:72:0x011a, B:73:0x0122, B:74:0x0128, B:80:0x013e, B:81:0x0146, B:82:0x014c, B:89:0x0164, B:90:0x016a, B:93:0x0176, B:95:0x017b, B:96:0x0182, B:97:0x0187, B:98:0x0190, B:105:0x01a7, B:106:0x01ac, B:108:0x01b5, B:110:0x01ba, B:111:0x01bf, B:115:0x01cc, B:117:0x01d1, B:118:0x01d6), top: B:135:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean setStatus(int r11) {
        /*
            Method dump skipped, instruction units count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.HttpExchange.setStatus(int):boolean");
    }

    public void setTimeout(long j4) {
        this._timeout = j4;
    }

    @Deprecated
    public void setURI(String str) {
        setRequestURI(str);
    }

    public void setURL(String str) {
        setURI(URI.create(str));
    }

    public void setVersion(int i4) {
        this._version = i4;
    }

    public String toString() {
        String state = toState(getStatus());
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j4 = jCurrentTimeMillis - this._lastStateChange;
        String str = this._lastState >= 0 ? String.format("%s@%x=%s//%s%s#%s(%dms)->%s(%dms)", getClass().getSimpleName(), Integer.valueOf(hashCode()), this._method, this._address, this._uri, toState(this._lastState), Integer.valueOf(this._lastStatePeriod), state, Long.valueOf(j4)) : String.format("%s@%x=%s//%s%s#%s(%dms)", getClass().getSimpleName(), Integer.valueOf(hashCode()), this._method, this._address, this._uri, state, Long.valueOf(j4));
        if (getStatus() < 3 || this._sent <= 0) {
            return str;
        }
        StringBuilder sbA = g.a(str, "sent=");
        sbA.append(jCurrentTimeMillis - this._sent);
        sbA.append("ms");
        return sbA.toString();
    }

    public int waitForDone() {
        int i4;
        synchronized (this) {
            while (!isDone()) {
                wait();
            }
            i4 = this._status.get();
        }
        return i4;
    }

    @Deprecated
    public void waitForStatus(int i4) {
        throw new UnsupportedOperationException();
    }

    public void addRequestHeader(Buffer buffer, Buffer buffer2) {
        getRequestFields().add(buffer, buffer2);
    }

    public void setRequestHeader(Buffer buffer, Buffer buffer2) {
        getRequestFields().put(buffer, buffer2);
    }

    public void setScheme(String str) {
        if (str != null) {
            if ("http".equalsIgnoreCase(str)) {
                setScheme(HttpSchemes.HTTP_BUFFER);
            } else if ("https".equalsIgnoreCase(str)) {
                setScheme(HttpSchemes.HTTPS_BUFFER);
            } else {
                setScheme(new ByteArrayBuffer(str));
            }
        }
    }

    public void setURI(URI uri) {
        if (!uri.isAbsolute()) {
            throw new IllegalArgumentException("!Absolute URI: " + uri);
        }
        if (uri.isOpaque()) {
            throw new IllegalArgumentException("Opaque URI: " + uri);
        }
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            logger.debug("URI = {}", uri.toASCIIString());
        }
        String scheme = uri.getScheme();
        int port = uri.getPort();
        if (port <= 0) {
            port = "https".equalsIgnoreCase(scheme) ? 443 : 80;
        }
        setScheme(scheme);
        setAddress(new Address(uri.getHost(), port));
        String completePath = new HttpURI(uri).getCompletePath();
        if (completePath == null) {
            completePath = "/";
        }
        setRequestURI(completePath);
    }

    public void setVersion(String str) {
        BufferCache.CachedBuffer cachedBuffer = HttpVersions.CACHE.get(str);
        if (cachedBuffer == null) {
            this._version = 10;
        } else {
            this._version = cachedBuffer.getOrdinal();
        }
    }

    @Deprecated
    public boolean isDone(int i4) {
        return isDone();
    }
}
