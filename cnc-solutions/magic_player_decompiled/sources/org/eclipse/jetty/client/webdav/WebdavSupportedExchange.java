package org.eclipse.jetty.client.webdav;

import android.support.v4.media.f;
import org.eclipse.jetty.client.HttpExchange;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class WebdavSupportedExchange extends HttpExchange {
    private static final Logger LOG = Log.getLogger((Class<?>) WebdavSupportedExchange.class);
    private boolean _webdavSupported = false;
    private boolean _isComplete = false;

    public boolean isWebdavSupported() {
        return this._webdavSupported;
    }

    @Override // org.eclipse.jetty.client.HttpExchange
    public void onResponseComplete() {
        this._isComplete = true;
        super.onResponseComplete();
    }

    @Override // org.eclipse.jetty.client.HttpExchange
    public void onResponseHeader(Buffer buffer, Buffer buffer2) {
        Logger logger = LOG;
        if (logger.isDebugEnabled()) {
            StringBuilder sbA = f.a("WebdavSupportedExchange:Header:");
            sbA.append(buffer.toString());
            sbA.append(" / ");
            sbA.append(buffer2.toString());
            logger.debug(sbA.toString(), new Object[0]);
        }
        if ("DAV".equals(buffer.toString()) && (buffer2.toString().indexOf("1") >= 0 || buffer2.toString().indexOf("2") >= 0)) {
            this._webdavSupported = true;
        }
        super.onResponseHeader(buffer, buffer2);
    }

    public void waitTilCompletion() {
        synchronized (this) {
            while (!this._isComplete) {
                wait();
            }
        }
    }
}
