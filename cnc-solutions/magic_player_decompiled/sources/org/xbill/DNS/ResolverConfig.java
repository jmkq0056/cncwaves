package org.xbill.DNS;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.ResourceBundle;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public class ResolverConfig {
    public static /* synthetic */ Class class$java$lang$String;
    public static /* synthetic */ Class class$org$xbill$DNS$ResolverConfig;
    private static ResolverConfig currentConfig;
    private String[] servers = null;
    private Name[] searchlist = null;
    private int ndots = -1;

    static {
        refresh();
    }

    public ResolverConfig() throws Throwable {
        if (findProperty() || findSunJVM()) {
            return;
        }
        if (this.servers == null || this.searchlist == null) {
            String property = System.getProperty("os.name");
            String property2 = System.getProperty("java.vendor");
            if (property.indexOf("Windows") != -1) {
                if (property.indexOf("95") == -1 && property.indexOf("98") == -1 && property.indexOf("ME") == -1) {
                    findNT();
                    return;
                } else {
                    find95();
                    return;
                }
            }
            if (property.indexOf("NetWare") != -1) {
                findNetware();
            } else if (property2.indexOf("Android") != -1) {
                findAndroid();
            } else {
                findUnix();
            }
        }
    }

    private void addSearch(String str, List list) {
        if (Options.check("verbose")) {
            PrintStream printStream = System.out;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("adding search ");
            stringBuffer.append(str);
            printStream.println(stringBuffer.toString());
        }
        try {
            Name nameFromString = Name.fromString(str, Name.root);
            if (list.contains(nameFromString)) {
                return;
            }
            list.add(nameFromString);
        } catch (TextParseException unused) {
        }
    }

    private void addServer(String str, List list) {
        if (list.contains(str)) {
            return;
        }
        if (Options.check("verbose")) {
            PrintStream printStream = System.out;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("adding server ");
            stringBuffer.append(str);
            printStream.println(stringBuffer.toString());
        }
        list.add(str);
    }

    public static /* synthetic */ Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e4) {
            throw new NoClassDefFoundError().initCause(e4);
        }
    }

    private void configureFromLists(List list, List list2) {
        if (this.servers == null && list.size() > 0) {
            this.servers = (String[]) list.toArray(new String[0]);
        }
        if (this.searchlist != null || list2.size() <= 0) {
            return;
        }
        this.searchlist = (Name[]) list2.toArray(new Name[0]);
    }

    private void configureNdots(int i4) {
        if (this.ndots >= 0 || i4 <= 0) {
            return;
        }
        this.ndots = i4;
    }

    private void find95() throws Throwable {
        try {
            Runtime.getRuntime().exec("winipcfg /all /batch winipcfg.out").waitFor();
            findWin(new FileInputStream(new File("winipcfg.out")));
            new File("winipcfg.out").delete();
        } catch (Exception unused) {
        }
    }

    private void findAndroid() throws Throwable {
        ArrayList arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            Class<?>[] clsArr = new Class[1];
            Class<?> clsClass$ = class$java$lang$String;
            if (clsClass$ == null) {
                clsClass$ = class$("java.lang.String");
                class$java$lang$String = clsClass$;
            }
            clsArr[0] = clsClass$;
            Method method = cls.getMethod("get", clsArr);
            String[] strArr = {"net.dns1", "net.dns2", "net.dns3", "net.dns4"};
            for (int i4 = 0; i4 < 4; i4++) {
                String str = (String) method.invoke(null, strArr[i4]);
                if (str != null && ((str.matches("^\\d+(\\.\\d+){3}$") || str.matches("^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$")) && !arrayList.contains(str))) {
                    arrayList.add(str);
                }
            }
        } catch (Exception unused) {
        }
        configureFromLists(arrayList, arrayList2);
    }

    private void findNT() throws Throwable {
        try {
            Process processExec = Runtime.getRuntime().exec("ipconfig /all");
            findWin(processExec.getInputStream());
            processExec.destroy();
        } catch (Exception unused) {
        }
    }

    private void findNetware() {
        findResolvConf("sys:/etc/resolv.cfg");
    }

    private boolean findProperty() {
        ArrayList arrayList = new ArrayList(0);
        ArrayList arrayList2 = new ArrayList(0);
        String property = System.getProperty("dns.server");
        if (property != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(property, ",");
            while (stringTokenizer.hasMoreTokens()) {
                addServer(stringTokenizer.nextToken(), arrayList);
            }
        }
        String property2 = System.getProperty("dns.search");
        if (property2 != null) {
            StringTokenizer stringTokenizer2 = new StringTokenizer(property2, ",");
            while (stringTokenizer2.hasMoreTokens()) {
                addSearch(stringTokenizer2.nextToken(), arrayList2);
            }
        }
        configureFromLists(arrayList, arrayList2);
        return (this.servers == null || this.searchlist == null) ? false : true;
    }

    private void findResolvConf(String str) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(str)));
            List arrayList = new ArrayList(0);
            ArrayList arrayList2 = new ArrayList(0);
            int ndots = -1;
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.startsWith("nameserver")) {
                        StringTokenizer stringTokenizer = new StringTokenizer(line);
                        stringTokenizer.nextToken();
                        addServer(stringTokenizer.nextToken(), arrayList);
                    } else if (line.startsWith("domain")) {
                        StringTokenizer stringTokenizer2 = new StringTokenizer(line);
                        stringTokenizer2.nextToken();
                        if (stringTokenizer2.hasMoreTokens() && arrayList2.isEmpty()) {
                            addSearch(stringTokenizer2.nextToken(), arrayList2);
                        }
                    } else if (line.startsWith("search")) {
                        if (!arrayList2.isEmpty()) {
                            arrayList2.clear();
                        }
                        StringTokenizer stringTokenizer3 = new StringTokenizer(line);
                        stringTokenizer3.nextToken();
                        while (stringTokenizer3.hasMoreTokens()) {
                            addSearch(stringTokenizer3.nextToken(), arrayList2);
                        }
                    } else if (line.startsWith("options")) {
                        StringTokenizer stringTokenizer4 = new StringTokenizer(line);
                        stringTokenizer4.nextToken();
                        while (stringTokenizer4.hasMoreTokens()) {
                            String strNextToken = stringTokenizer4.nextToken();
                            if (strNextToken.startsWith("ndots:")) {
                                ndots = parseNdots(strNextToken);
                            }
                        }
                    }
                } catch (IOException unused) {
                }
                configureFromLists(arrayList, arrayList2);
                configureNdots(ndots);
            }
            bufferedReader.close();
            configureFromLists(arrayList, arrayList2);
            configureNdots(ndots);
        } catch (FileNotFoundException unused2) {
        }
    }

    private boolean findSunJVM() {
        ArrayList arrayList = new ArrayList(0);
        ArrayList arrayList2 = new ArrayList(0);
        try {
            Class<?>[] clsArr = new Class[0];
            Object[] objArr = new Object[0];
            Class<?> cls = Class.forName("sun.net.dns.ResolverConfiguration");
            Object objInvoke = cls.getDeclaredMethod("open", clsArr).invoke(null, objArr);
            List list = (List) cls.getMethod("nameservers", clsArr).invoke(objInvoke, objArr);
            List list2 = (List) cls.getMethod("searchlist", clsArr).invoke(objInvoke, objArr);
            if (list.size() == 0) {
                return false;
            }
            if (list.size() > 0) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    addServer((String) it.next(), arrayList);
                }
            }
            if (list2.size() > 0) {
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    addSearch((String) it2.next(), arrayList2);
                }
            }
            configureFromLists(arrayList, arrayList2);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private void findUnix() {
        findResolvConf("/etc/resolv.conf");
    }

    private void findWin(InputStream inputStream, Locale locale) throws Throwable {
        Class clsClass$ = class$org$xbill$DNS$ResolverConfig;
        if (clsClass$ == null) {
            clsClass$ = class$("org.xbill.DNS.ResolverConfig");
            class$org$xbill$DNS$ResolverConfig = clsClass$;
        }
        String name = clsClass$.getPackage().getName();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(name);
        stringBuffer.append(".windows.DNSServer");
        String string = stringBuffer.toString();
        ResourceBundle bundle = locale != null ? ResourceBundle.getBundle(string, locale) : ResourceBundle.getBundle(string);
        String string2 = bundle.getString("host_name");
        String string3 = bundle.getString("primary_dns_suffix");
        String string4 = bundle.getString("dns_suffix");
        String string5 = bundle.getString("dns_servers");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                boolean z3 = false;
                boolean z4 = false;
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        configureFromLists(arrayList, arrayList2);
                        return;
                    }
                    StringTokenizer stringTokenizer = new StringTokenizer(line);
                    if (!stringTokenizer.hasMoreTokens()) {
                        break;
                    }
                    String strNextToken = stringTokenizer.nextToken();
                    if (line.indexOf(":") != -1) {
                        z3 = false;
                        z4 = false;
                    }
                    String str = string2;
                    if (line.indexOf(string2) != -1) {
                        while (stringTokenizer.hasMoreTokens()) {
                            strNextToken = stringTokenizer.nextToken();
                        }
                        try {
                            if (Name.fromString(strNextToken, null).labels() != 1) {
                                addSearch(strNextToken, arrayList2);
                            }
                        } catch (TextParseException unused) {
                        }
                    } else if (line.indexOf(string3) != -1) {
                        while (stringTokenizer.hasMoreTokens()) {
                            strNextToken = stringTokenizer.nextToken();
                        }
                        if (!strNextToken.equals(":")) {
                            addSearch(strNextToken, arrayList2);
                            z3 = true;
                        }
                    } else if (z3 || line.indexOf(string4) != -1) {
                        while (stringTokenizer.hasMoreTokens()) {
                            strNextToken = stringTokenizer.nextToken();
                        }
                        if (!strNextToken.equals(":")) {
                            addSearch(strNextToken, arrayList2);
                            z3 = true;
                        }
                    } else if (z4 || line.indexOf(string5) != -1) {
                        while (stringTokenizer.hasMoreTokens()) {
                            strNextToken = stringTokenizer.nextToken();
                        }
                        if (!strNextToken.equals(":")) {
                            addServer(strNextToken, arrayList);
                            z4 = true;
                        }
                    }
                    string2 = str;
                }
            }
        } catch (IOException unused2) {
        }
    }

    public static synchronized ResolverConfig getCurrentConfig() {
        return currentConfig;
    }

    private int parseNdots(String str) {
        String strSubstring = str.substring(6);
        try {
            int i4 = Integer.parseInt(strSubstring);
            if (i4 < 0) {
                return -1;
            }
            if (Options.check("verbose")) {
                PrintStream printStream = System.out;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("setting ndots ");
                stringBuffer.append(strSubstring);
                printStream.println(stringBuffer.toString());
            }
            return i4;
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static void refresh() throws Throwable {
        ResolverConfig resolverConfig = new ResolverConfig();
        Class clsClass$ = class$org$xbill$DNS$ResolverConfig;
        if (clsClass$ == null) {
            clsClass$ = class$("org.xbill.DNS.ResolverConfig");
            class$org$xbill$DNS$ResolverConfig = clsClass$;
        }
        synchronized (clsClass$) {
            currentConfig = resolverConfig;
        }
    }

    public int ndots() {
        int i4 = this.ndots;
        if (i4 < 0) {
            return 1;
        }
        return i4;
    }

    public Name[] searchPath() {
        return this.searchlist;
    }

    public String server() {
        String[] strArr = this.servers;
        if (strArr == null) {
            return null;
        }
        return strArr[0];
    }

    public String[] servers() {
        return this.servers;
    }

    private void findWin(InputStream inputStream) throws Throwable {
        int iIntValue = Integer.getInteger("org.xbill.DNS.windows.parse.buffer", 8192).intValue();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, iIntValue);
        bufferedInputStream.mark(iIntValue);
        findWin(bufferedInputStream, null);
        if (this.servers == null) {
            try {
                bufferedInputStream.reset();
                findWin(bufferedInputStream, new Locale("", ""));
            } catch (IOException unused) {
            }
        }
    }
}
