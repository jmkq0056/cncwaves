package org.eclipse.jetty.server;

import j2.a;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class CookieCutter {
    private static final Logger LOG = Log.getLogger((Class<?>) CookieCutter.class);
    private a[] _cookies;
    public int _fields;
    private a[] _lastCookies;
    public Object _lazyFields;

    public void addCookieField(String str) {
        if (str == null) {
            return;
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return;
        }
        int size = LazyList.size(this._lazyFields);
        int i4 = this._fields;
        if (size > i4) {
            if (!strTrim.equals(LazyList.get(this._lazyFields, i4))) {
                while (true) {
                    int size2 = LazyList.size(this._lazyFields);
                    int i5 = this._fields;
                    if (size2 <= i5) {
                        break;
                    } else {
                        this._lazyFields = LazyList.remove(this._lazyFields, i5);
                    }
                }
            } else {
                this._fields++;
                return;
            }
        }
        this._cookies = null;
        this._lastCookies = null;
        Object obj = this._lazyFields;
        int i6 = this._fields;
        this._fields = i6 + 1;
        this._lazyFields = LazyList.add(obj, i6, strTrim);
    }

    public a[] getCookies() {
        Object obj;
        a[] aVarArr = this._cookies;
        if (aVarArr != null) {
            return aVarArr;
        }
        if (this._lastCookies == null || (obj = this._lazyFields) == null || this._fields != LazyList.size(obj)) {
            parseFields();
        } else {
            this._cookies = this._lastCookies;
        }
        a[] aVarArr2 = this._cookies;
        this._lastCookies = aVarArr2;
        return aVarArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01ab A[PHI: r12 r14 r15 r16 r17 r20
      0x01ab: PHI (r12v6 boolean) = (r12v1 boolean), (r12v1 boolean), (r12v1 boolean), (r12v1 boolean), (r12v5 boolean), (r12v5 boolean), (r12v1 boolean) binds: [B:50:0x00c7, B:51:0x00c9, B:29:0x0082, B:30:0x0084, B:75:0x011d, B:76:0x011f, B:18:0x0056] A[DONT_GENERATE, DONT_INLINE]
      0x01ab: PHI (r14v18 int) = (r14v1 int), (r14v1 int), (r14v1 int), (r14v1 int), (r14v17 int), (r14v17 int), (r14v1 int) binds: [B:50:0x00c7, B:51:0x00c9, B:29:0x0082, B:30:0x0084, B:75:0x011d, B:76:0x011f, B:18:0x0056] A[DONT_GENERATE, DONT_INLINE]
      0x01ab: PHI (r15v6 int) = (r15v1 int), (r15v1 int), (r15v1 int), (r15v1 int), (r15v5 int), (r15v5 int), (r15v1 int) binds: [B:50:0x00c7, B:51:0x00c9, B:29:0x0082, B:30:0x0084, B:75:0x011d, B:76:0x011f, B:18:0x0056] A[DONT_GENERATE, DONT_INLINE]
      0x01ab: PHI (r16v12 ??) = (r16v1 ??), (r16v1 ??), (r16v1 ??), (r16v1 ??), (r16v10 ??), (r16v10 ??), (r16v1 ??) binds: [B:50:0x00c7, B:51:0x00c9, B:29:0x0082, B:30:0x0084, B:75:0x011d, B:76:0x011f, B:18:0x0056] A[DONT_GENERATE, DONT_INLINE]
      0x01ab: PHI (r17v9 ??) = (r17v1 ??), (r17v1 ??), (r17v1 ??), (r17v1 ??), (r17v7 ??), (r17v7 ??), (r17v1 ??) binds: [B:50:0x00c7, B:51:0x00c9, B:29:0x0082, B:30:0x0084, B:75:0x011d, B:76:0x011f, B:18:0x0056] A[DONT_GENERATE, DONT_INLINE]
      0x01ab: PHI (r20v7 boolean) = (r20v0 boolean), (r20v0 boolean), (r20v4 boolean), (r20v4 boolean), (r20v6 boolean), (r20v6 boolean), (r20v9 boolean) binds: [B:50:0x00c7, B:51:0x00c9, B:29:0x0082, B:30:0x0084, B:75:0x011d, B:76:0x011f, B:18:0x0056] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x011f A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v14 */
    /* JADX WARN: Type inference failed for: r16v16 */
    /* JADX WARN: Type inference failed for: r16v17 */
    /* JADX WARN: Type inference failed for: r16v18 */
    /* JADX WARN: Type inference failed for: r16v19 */
    /* JADX WARN: Type inference failed for: r16v20 */
    /* JADX WARN: Type inference failed for: r16v21 */
    /* JADX WARN: Type inference failed for: r16v22 */
    /* JADX WARN: Type inference failed for: r16v23 */
    /* JADX WARN: Type inference failed for: r16v24 */
    /* JADX WARN: Type inference failed for: r16v25 */
    /* JADX WARN: Type inference failed for: r16v26 */
    /* JADX WARN: Type inference failed for: r16v27 */
    /* JADX WARN: Type inference failed for: r16v28 */
    /* JADX WARN: Type inference failed for: r16v29 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v15 */
    /* JADX WARN: Type inference failed for: r17v16 */
    /* JADX WARN: Type inference failed for: r17v17 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v17 */
    /* JADX WARN: Type inference failed for: r18v20 */
    /* JADX WARN: Type inference failed for: r18v23 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parseFields() {
        /*
            Method dump skipped, instruction units count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.CookieCutter.parseFields():void");
    }

    public void reset() {
        this._cookies = null;
        this._fields = 0;
    }

    public void setCookies(a[] aVarArr) {
        this._cookies = aVarArr;
        this._lastCookies = null;
        this._lazyFields = null;
        this._fields = 0;
    }
}
