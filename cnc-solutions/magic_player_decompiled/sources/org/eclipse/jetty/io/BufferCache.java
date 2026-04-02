package org.eclipse.jetty.io;

import android.support.v4.media.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.StringMap;

/* JADX INFO: loaded from: classes2.dex */
public class BufferCache {
    private final HashMap _bufferMap = new HashMap();
    private final StringMap _stringMap = new StringMap(true);
    private final ArrayList _index = new ArrayList();

    public static class CachedBuffer extends ByteArrayBuffer.CaseInsensitive {
        private HashMap _associateMap;
        private final int _ordinal;

        public CachedBuffer(String str, int i4) {
            super(str);
            this._associateMap = null;
            this._ordinal = i4;
        }

        public CachedBuffer getAssociate(Object obj) {
            HashMap map = this._associateMap;
            if (map == null) {
                return null;
            }
            return (CachedBuffer) map.get(obj);
        }

        public int getOrdinal() {
            return this._ordinal;
        }

        public void setAssociate(Object obj, CachedBuffer cachedBuffer) {
            if (this._associateMap == null) {
                this._associateMap = new HashMap();
            }
            this._associateMap.put(obj, cachedBuffer);
        }
    }

    public CachedBuffer add(String str, int i4) {
        CachedBuffer cachedBuffer = new CachedBuffer(str, i4);
        this._bufferMap.put(cachedBuffer, cachedBuffer);
        this._stringMap.put(str, (Object) cachedBuffer);
        while (i4 - this._index.size() >= 0) {
            this._index.add(null);
        }
        if (this._index.get(i4) == null) {
            this._index.add(i4, cachedBuffer);
        }
        return cachedBuffer;
    }

    public CachedBuffer get(int i4) {
        if (i4 < 0 || i4 >= this._index.size()) {
            return null;
        }
        return (CachedBuffer) this._index.get(i4);
    }

    public CachedBuffer getBest(byte[] bArr, int i4, int i5) {
        Map.Entry bestEntry = this._stringMap.getBestEntry(bArr, i4, i5);
        if (bestEntry != null) {
            return (CachedBuffer) bestEntry.getValue();
        }
        return null;
    }

    public int getOrdinal(String str) {
        CachedBuffer cachedBuffer = (CachedBuffer) this._stringMap.get(str);
        if (cachedBuffer == null) {
            return -1;
        }
        return cachedBuffer.getOrdinal();
    }

    public Buffer lookup(Buffer buffer) {
        if (buffer instanceof CachedBuffer) {
            return buffer;
        }
        CachedBuffer cachedBuffer = get(buffer);
        return cachedBuffer == null ? buffer instanceof Buffer.CaseInsensitve ? buffer : new ByteArrayBuffer.CaseInsensitive(buffer.asArray(), 0, buffer.length(), 0) : cachedBuffer;
    }

    public String toString(Buffer buffer) {
        return lookup(buffer).toString();
    }

    public String toString() {
        StringBuilder sbA = f.a("CACHE[bufferMap=");
        sbA.append(this._bufferMap);
        sbA.append(",stringMap=");
        sbA.append(this._stringMap);
        sbA.append(",index=");
        sbA.append(this._index);
        sbA.append("]");
        return sbA.toString();
    }

    public CachedBuffer get(Buffer buffer) {
        return (CachedBuffer) this._bufferMap.get(buffer);
    }

    public int getOrdinal(Buffer buffer) {
        if (buffer instanceof CachedBuffer) {
            return ((CachedBuffer) buffer).getOrdinal();
        }
        Buffer bufferLookup = lookup(buffer);
        if (bufferLookup == null || !(bufferLookup instanceof CachedBuffer)) {
            return -1;
        }
        return ((CachedBuffer) bufferLookup).getOrdinal();
    }

    public CachedBuffer get(String str) {
        return (CachedBuffer) this._stringMap.get(str);
    }

    public Buffer lookup(String str) {
        CachedBuffer cachedBuffer = get(str);
        return cachedBuffer == null ? new CachedBuffer(str, -1) : cachedBuffer;
    }
}
