package org.xbill.DNS.spi;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.StringTokenizer;
import org.xbill.DNS.AAAARecord;
import org.xbill.DNS.ARecord;
import org.xbill.DNS.ExtendedResolver;
import org.xbill.DNS.Lookup;
import org.xbill.DNS.Name;
import org.xbill.DNS.PTRRecord;
import org.xbill.DNS.Record;
import org.xbill.DNS.ReverseMap;
import org.xbill.DNS.TextParseException;

/* JADX INFO: loaded from: classes2.dex */
public class DNSJavaNameService implements InvocationHandler {
    public static /* synthetic */ Class array$$B = null;
    public static /* synthetic */ Class array$Ljava$net$InetAddress = null;
    private static final String domainProperty = "sun.net.spi.nameservice.domain";
    private static final String nsProperty = "sun.net.spi.nameservice.nameservers";
    private static final String v6Property = "java.net.preferIPv6Addresses";
    private boolean preferV6;

    public DNSJavaNameService() {
        this.preferV6 = false;
        String property = System.getProperty(nsProperty);
        String property2 = System.getProperty(domainProperty);
        String property3 = System.getProperty(v6Property);
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, ",");
            String[] strArr = new String[stringTokenizer.countTokens()];
            int i4 = 0;
            while (stringTokenizer.hasMoreTokens()) {
                strArr[i4] = stringTokenizer.nextToken();
                i4++;
            }
            try {
                Lookup.setDefaultResolver(new ExtendedResolver(strArr));
            } catch (UnknownHostException unused) {
                System.err.println("DNSJavaNameService: invalid sun.net.spi.nameservice.nameservers");
            }
        }
        if (property2 != null) {
            try {
                Lookup.setDefaultSearchPath(new String[]{property2});
            } catch (TextParseException unused2) {
                System.err.println("DNSJavaNameService: invalid sun.net.spi.nameservice.domain");
            }
        }
        if (property3 == null || !property3.equalsIgnoreCase("true")) {
            return;
        }
        this.preferV6 = true;
    }

    public static /* synthetic */ Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e4) {
            throw new NoClassDefFoundError().initCause(e4);
        }
    }

    public String getHostByAddr(byte[] bArr) throws UnknownHostException {
        Record[] recordArrRun = new Lookup(ReverseMap.fromAddress(InetAddress.getByAddress(bArr)), 12).run();
        if (recordArrRun != null) {
            return ((PTRRecord) recordArrRun[0]).getTarget().toString();
        }
        throw new UnknownHostException();
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        try {
            if (method.getName().equals("getHostByAddr")) {
                return getHostByAddr((byte[]) objArr[0]);
            }
            if (method.getName().equals("lookupAllHostAddr")) {
                InetAddress[] inetAddressArrLookupAllHostAddr = lookupAllHostAddr((String) objArr[0]);
                Class<?> returnType = method.getReturnType();
                Class clsClass$ = array$Ljava$net$InetAddress;
                if (clsClass$ == null) {
                    clsClass$ = class$("[Ljava.net.InetAddress;");
                    array$Ljava$net$InetAddress = clsClass$;
                }
                if (returnType.equals(clsClass$)) {
                    return inetAddressArrLookupAllHostAddr;
                }
                Class clsClass$2 = array$$B;
                if (clsClass$2 == null) {
                    clsClass$2 = class$("[[B");
                    array$$B = clsClass$2;
                }
                if (returnType.equals(clsClass$2)) {
                    int length = inetAddressArrLookupAllHostAddr.length;
                    byte[][] bArr = new byte[length][];
                    for (int i4 = 0; i4 < length; i4++) {
                        bArr[i4] = inetAddressArrLookupAllHostAddr[i4].getAddress();
                    }
                    return bArr;
                }
            }
            throw new IllegalArgumentException("Unknown function name or arguments.");
        } catch (Throwable th) {
            System.err.println("DNSJavaNameService: Unexpected error.");
            th.printStackTrace();
            throw th;
        }
    }

    public InetAddress[] lookupAllHostAddr(String str) throws UnknownHostException {
        try {
            Name name = new Name(str);
            Record[] recordArrRun = this.preferV6 ? new Lookup(name, 28).run() : null;
            if (recordArrRun == null) {
                recordArrRun = new Lookup(name, 1).run();
            }
            if (recordArrRun == null && !this.preferV6) {
                recordArrRun = new Lookup(name, 28).run();
            }
            if (recordArrRun == null) {
                throw new UnknownHostException(str);
            }
            InetAddress[] inetAddressArr = new InetAddress[recordArrRun.length];
            for (int i4 = 0; i4 < recordArrRun.length; i4++) {
                Record record = recordArrRun[i4];
                if (recordArrRun[i4] instanceof ARecord) {
                    inetAddressArr[i4] = ((ARecord) recordArrRun[i4]).getAddress();
                } else {
                    inetAddressArr[i4] = ((AAAARecord) recordArrRun[i4]).getAddress();
                }
            }
            return inetAddressArr;
        } catch (TextParseException unused) {
            throw new UnknownHostException(str);
        }
    }
}
