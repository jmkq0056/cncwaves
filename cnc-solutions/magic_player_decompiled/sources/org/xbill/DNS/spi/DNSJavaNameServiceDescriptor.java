package org.xbill.DNS.spi;

import java.lang.reflect.Proxy;
import sun.net.spi.nameservice.NameService;
import sun.net.spi.nameservice.NameServiceDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public class DNSJavaNameServiceDescriptor implements NameServiceDescriptor {
    public static /* synthetic */ Class class$sun$net$spi$nameservice$NameService;
    private static NameService nameService;

    static {
        Class clsClass$ = class$sun$net$spi$nameservice$NameService;
        if (clsClass$ == null) {
            clsClass$ = class$("sun.net.spi.nameservice.NameService");
            class$sun$net$spi$nameservice$NameService = clsClass$;
        }
        ClassLoader classLoader = clsClass$.getClassLoader();
        if (classLoader == null) {
            classLoader = Thread.currentThread().getContextClassLoader();
        }
        Class[] clsArr = new Class[1];
        Class clsClass$2 = class$sun$net$spi$nameservice$NameService;
        if (clsClass$2 == null) {
            clsClass$2 = class$("sun.net.spi.nameservice.NameService");
            class$sun$net$spi$nameservice$NameService = clsClass$2;
        }
        clsArr[0] = clsClass$2;
        nameService = (NameService) Proxy.newProxyInstance(classLoader, clsArr, new DNSJavaNameService());
    }

    public static /* synthetic */ Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e4) {
            throw new NoClassDefFoundError().initCause(e4);
        }
    }

    public NameService createNameService() {
        return nameService;
    }

    public String getProviderName() {
        return "dnsjava";
    }

    public String getType() {
        return "dns";
    }
}
