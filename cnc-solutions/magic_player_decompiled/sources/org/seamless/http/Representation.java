package org.seamless.http;

import android.support.v4.media.f;
import java.io.Serializable;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
import org.eclipse.jetty.http.HttpHeaders;

/* JADX INFO: loaded from: classes2.dex */
public class Representation<E> implements Serializable {
    private CacheControl cacheControl;
    private Integer contentLength;
    private String contentType;
    private E entity;
    private String entityTag;
    private Long lastModified;
    private URL url;

    public Representation(CacheControl cacheControl, Integer num, String str, Long l4, String str2, E e4) {
        this(null, cacheControl, num, str, l4, str2, e4);
    }

    public CacheControl getCacheControl() {
        return this.cacheControl;
    }

    public Integer getContentLength() {
        Integer num = this.contentLength;
        if (num == null || num.intValue() == -1) {
            return null;
        }
        return this.contentLength;
    }

    public String getContentType() {
        return this.contentType;
    }

    public E getEntity() {
        return this.entity;
    }

    public String getEntityTag() {
        return this.entityTag;
    }

    public Long getLastModified() {
        if (this.lastModified.longValue() == 0) {
            return null;
        }
        return this.lastModified;
    }

    public Long getMaxAgeOrNull() {
        if (getCacheControl() == null || getCacheControl().getMaxAge() == -1 || getCacheControl().getMaxAge() == 0) {
            return null;
        }
        return Long.valueOf(getCacheControl().getMaxAge());
    }

    public URL getUrl() {
        return this.url;
    }

    public boolean hasBeenModified(long j4) {
        return getLastModified() == null || getLastModified().longValue() < j4;
    }

    public boolean hasEntityTagChanged(String str) {
        return (getEntityTag() == null || getEntityTag().equals(str)) ? false : true;
    }

    public boolean isExpired(long j4, long j5) {
        return (j5 * 1000) + j4 < new Date().getTime();
    }

    public boolean isNoCache() {
        return getCacheControl() != null && getCacheControl().isNoCache();
    }

    public boolean isNoStore() {
        return getCacheControl() != null && getCacheControl().isNoStore();
    }

    public boolean mustRevalidate() {
        return getCacheControl() != null && getCacheControl().isProxyRevalidate();
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") CT: ");
        sbA.append(getContentType());
        return sbA.toString();
    }

    public Representation(URL url, CacheControl cacheControl, Integer num, String str, Long l4, String str2, E e4) {
        this.url = url;
        this.cacheControl = cacheControl;
        this.contentLength = num;
        this.contentType = str;
        this.lastModified = l4;
        this.entityTag = str2;
        this.entity = e4;
    }

    public boolean isExpired(long j4) {
        return getMaxAgeOrNull() == null || isExpired(j4, getMaxAgeOrNull().longValue());
    }

    public Representation(URLConnection uRLConnection, E e4) {
        this(uRLConnection.getURL(), CacheControl.valueOf(uRLConnection.getHeaderField(HttpHeaders.CACHE_CONTROL)), Integer.valueOf(uRLConnection.getContentLength()), uRLConnection.getContentType(), Long.valueOf(uRLConnection.getLastModified()), uRLConnection.getHeaderField("Etag"), e4);
    }
}
