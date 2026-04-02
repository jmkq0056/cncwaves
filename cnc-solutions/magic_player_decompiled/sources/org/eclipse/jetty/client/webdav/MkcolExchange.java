package org.eclipse.jetty.client.webdav;

import org.eclipse.jetty.client.CachedExchange;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class MkcolExchange extends CachedExchange {
    private static final Logger LOG = Log.getLogger((Class<?>) MkcolExchange.class);
    public boolean exists;

    public MkcolExchange() {
        super(true);
        this.exists = false;
    }

    public boolean exists() {
        return this.exists;
    }

    @Override // org.eclipse.jetty.client.CachedExchange, org.eclipse.jetty.client.HttpExchange
    public void onResponseStatus(Buffer buffer, int i4, Buffer buffer2) {
        if (i4 == 201) {
            LOG.debug("MkcolExchange:Status: Successfully created resource", new Object[0]);
            this.exists = true;
        }
        if (i4 == 405) {
            LOG.debug("MkcolExchange:Status: Resource must exist", new Object[0]);
            this.exists = true;
        }
        super.onResponseStatus(buffer, i4, buffer2);
    }
}
