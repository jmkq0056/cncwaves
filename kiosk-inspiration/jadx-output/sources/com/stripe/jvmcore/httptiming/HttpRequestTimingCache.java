package com.stripe.jvmcore.httptiming;

import com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Request;

/* JADX INFO: compiled from: HttpRequestTimingCache.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\u0007R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;", "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;", "maxCacheSize", "", "(I)V", "requestToMetricsMap", "", "Lokhttp3/Request;", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;", "collect", "", "metrics", "removeAndGetRequestMetrics", "request", "LruCache", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HttpRequestTimingCache implements HttpTimingCollector {
    private final Map<Request, HttpTimingLoggerEventListener.RequestMetrics> requestToMetricsMap;

    public HttpRequestTimingCache() {
        this(0, 1, null);
    }

    public HttpRequestTimingCache(int i) {
        if (10 > i || i >= 1001) {
            throw new IllegalArgumentException("maxCacheSize should be between 10 and 1,000".toString());
        }
        Map<Request, HttpTimingLoggerEventListener.RequestMetrics> mapSynchronizedMap = Collections.synchronizedMap(new LruCache(i));
        Intrinsics.checkNotNullExpressionValue(mapSynchronizedMap, "synchronizedMap(...)");
        this.requestToMetricsMap = mapSynchronizedMap;
    }

    public /* synthetic */ HttpRequestTimingCache(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 32 : i);
    }

    /* JADX INFO: compiled from: HttpRequestTimingCache.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010&\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u001e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003j\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002`\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000bH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache$LruCache;", "K", "V", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "maxSize", "", "(I)V", "removeEldestEntry", "", "eldest", "", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class LruCache<K, V> extends LinkedHashMap<K, V> {
        private final int maxSize;

        public LruCache(int i) {
            this.maxSize = i;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
            return (Set<Map.Entry<K, V>>) getEntries();
        }

        public /* bridge */ Set<Map.Entry<Object, Object>> getEntries() {
            return super.entrySet();
        }

        public /* bridge */ Set<Object> getKeys() {
            return super.keySet();
        }

        public /* bridge */ int getSize() {
            return super.size();
        }

        public /* bridge */ Collection<Object> getValues() {
            return super.values();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<K> keySet() {
            return (Set<K>) getKeys();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return getSize();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<V> values() {
            return (Collection<V>) getValues();
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<? extends K, ? extends V> eldest) {
            Intrinsics.checkNotNullParameter(eldest, "eldest");
            return size() > this.maxSize;
        }
    }

    @Override // com.stripe.jvmcore.httptiming.HttpTimingCollector
    public void collect(HttpTimingLoggerEventListener.RequestMetrics metrics) {
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        this.requestToMetricsMap.put(metrics.getRequest(), metrics);
    }

    public final HttpTimingLoggerEventListener.RequestMetrics removeAndGetRequestMetrics(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return this.requestToMetricsMap.remove(request);
    }
}
