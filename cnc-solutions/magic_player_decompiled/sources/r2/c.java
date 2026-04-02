package r2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import k2.v;

/* JADX INFO: loaded from: classes.dex */
public final class c extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Method f3372c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Method f3373d;

    public c(Method method, Method method2) {
        this.f3372c = method;
        this.f3373d = method2;
    }

    @Override // r2.f
    public void f(SSLSocket sSLSocket, String str, List<v> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            ArrayList arrayList = (ArrayList) f.b(list);
            this.f3372c.invoke(sSLParameters, arrayList.toArray(new String[arrayList.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw l2.c.a("unable to set ssl parameters", e4);
        }
    }

    @Override // r2.f
    @Nullable
    public String i(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f3373d.invoke(sSLSocket, new Object[0]);
            if (str == null) {
                return null;
            }
            if (str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw l2.c.a("unable to get selected protocols", e4);
        }
    }
}
