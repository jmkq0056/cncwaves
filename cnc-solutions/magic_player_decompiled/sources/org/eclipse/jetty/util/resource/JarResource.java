package org.eclipse.jetty.util.resource;

import java.io.File;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class JarResource extends URLResource {
    private static final Logger LOG = Log.getLogger((Class<?>) JarResource.class);
    public JarURLConnection _jarConnection;

    public JarResource(URL url) {
        super(url, null);
    }

    public static Resource newJarResource(Resource resource) {
        if (resource instanceof JarResource) {
            return resource;
        }
        return Resource.newResource("jar:" + resource + "!/");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001d  */
    @Override // org.eclipse.jetty.util.resource.URLResource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean checkConnection() {
        /*
            r2 = this;
            monitor-enter(r2)
            super.checkConnection()     // Catch: java.lang.Throwable -> L20
            java.net.JarURLConnection r0 = r2._jarConnection     // Catch: java.io.IOException -> Le java.lang.Throwable -> L20
            java.net.URLConnection r1 = r2._connection     // Catch: java.io.IOException -> Le java.lang.Throwable -> L20
            if (r0 == r1) goto L17
            r2.newConnection()     // Catch: java.io.IOException -> Le java.lang.Throwable -> L20
            goto L17
        Le:
            r0 = move-exception
            org.eclipse.jetty.util.log.Logger r1 = org.eclipse.jetty.util.resource.JarResource.LOG     // Catch: java.lang.Throwable -> L20
            r1.ignore(r0)     // Catch: java.lang.Throwable -> L20
            r0 = 0
            r2._jarConnection = r0     // Catch: java.lang.Throwable -> L20
        L17:
            java.net.JarURLConnection r0 = r2._jarConnection     // Catch: java.lang.Throwable -> L20
            if (r0 == 0) goto L1d
            r0 = 1
            goto L1e
        L1d:
            r0 = 0
        L1e:
            monitor-exit(r2)
            return r0
        L20:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.resource.JarResource.checkConnection():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00df A[PHI: r4 r7
      0x00df: PHI (r4v9 boolean) = (r4v6 boolean), (r4v10 boolean) binds: [B:45:0x00dd, B:41:0x00d4] A[DONT_GENERATE, DONT_INLINE]
      0x00df: PHI (r7v10 java.lang.String) = (r7v1 java.lang.String), (r7v11 java.lang.String) binds: [B:45:0x00dd, B:41:0x00d4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // org.eclipse.jetty.util.resource.Resource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void copyTo(java.io.File r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.resource.JarResource.copyTo(java.io.File):void");
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public boolean exists() {
        return this._urlString.endsWith("!/") ? checkConnection() : super.exists();
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public File getFile() {
        return null;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public InputStream getInputStream() {
        checkConnection();
        if (!this._urlString.endsWith("!/")) {
            return new FilterInputStream(super.getInputStream()) { // from class: org.eclipse.jetty.util.resource.JarResource.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    ((FilterInputStream) this).in = IO.getClosedStream();
                }
            };
        }
        return new URL(this._urlString.substring(4, r1.length() - 2)).openStream();
    }

    public void newConnection() {
        this._jarConnection = (JarURLConnection) this._connection;
    }

    @Override // org.eclipse.jetty.util.resource.URLResource, org.eclipse.jetty.util.resource.Resource
    public synchronized void release() {
        this._jarConnection = null;
        super.release();
    }

    public JarResource(URL url, boolean z3) {
        super(url, null, z3);
    }
}
