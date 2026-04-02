package org.eclipse.jetty.security;

import j2.a;
import j2.c;
import j2.e;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class HashCrossContextPsuedoSession<T> implements CrossContextPsuedoSession<T> {
    private final String _cookieName;
    private final String _cookiePath;
    private final Random _random = new SecureRandom();
    private final Map<String, T> _data = new HashMap();

    public HashCrossContextPsuedoSession(String str, String str2) {
        this._cookieName = str;
        this._cookiePath = str2 == null ? "/" : str2;
    }

    @Override // org.eclipse.jetty.security.CrossContextPsuedoSession
    public void clear(c cVar) {
        for (a aVar : cVar.getCookies()) {
            if (this._cookieName.equals(aVar.f2016a)) {
                this._data.remove(aVar.f2017b);
                return;
            }
        }
    }

    @Override // org.eclipse.jetty.security.CrossContextPsuedoSession
    public T fetch(c cVar) {
        for (a aVar : cVar.getCookies()) {
            if (this._cookieName.equals(aVar.f2016a)) {
                return this._data.get(aVar.f2017b);
            }
        }
        return null;
    }

    @Override // org.eclipse.jetty.security.CrossContextPsuedoSession
    public void store(T t3, e eVar) {
        String string;
        synchronized (this._data) {
            do {
                string = Long.toString(Math.abs(this._random.nextLong()), ((int) (System.currentTimeMillis() % 7)) + 30);
            } while (this._data.containsKey(string));
            this._data.put(string, t3);
        }
        a aVar = new a(this._cookieName, string);
        aVar.f2020e = this._cookiePath;
        eVar.addCookie(aVar);
    }
}
