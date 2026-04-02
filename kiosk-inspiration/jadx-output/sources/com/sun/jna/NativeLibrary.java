package com.sun.jna;

import com.google.firebase.sessions.settings.RemoteSettings;
import java.io.BufferedReader;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class NativeLibrary {
    private static final Level DEBUG_LOAD_LEVEL;
    private static final int DEFAULT_OPEN_OPTIONS = -1;
    private static final Logger LOG = Logger.getLogger(NativeLibrary.class.getName());
    private static Method addSuppressedMethod;
    private static final Map<String, Reference<NativeLibrary>> libraries;
    private static final List<String> librarySearchPath;
    private static final Map<String, List<String>> searchPaths;
    final int callFlags;
    private String encoding;
    private final Map<String, Function> functions;
    private long handle;
    private final String libraryName;
    private final String libraryPath;
    final Map<String, ?> options;

    static {
        DEBUG_LOAD_LEVEL = Native.DEBUG_LOAD ? Level.INFO : Level.FINE;
        libraries = new HashMap();
        searchPaths = Collections.synchronizedMap(new HashMap());
        librarySearchPath = new ArrayList();
        if (Native.POINTER_SIZE == 0) {
            throw new Error("Native library not initialized");
        }
        addSuppressedMethod = null;
        try {
            addSuppressedMethod = Throwable.class.getMethod("addSuppressed", Throwable.class);
        } catch (NoSuchMethodException unused) {
        } catch (SecurityException e) {
            Logger.getLogger(NativeLibrary.class.getName()).log(Level.SEVERE, "Failed to initialize 'addSuppressed' method", (Throwable) e);
        }
        String webStartLibraryPath = Native.getWebStartLibraryPath("jnidispatch");
        if (webStartLibraryPath != null) {
            librarySearchPath.add(webStartLibraryPath);
        }
        if (System.getProperty("jna.platform.library.path") == null && !Platform.isWindows()) {
            String str = (Platform.isLinux() || Platform.isSolaris() || Platform.isFreeBSD() || Platform.iskFreeBSD()) ? (Platform.isSolaris() ? RemoteSettings.FORWARD_SLASH_STRING : "") + (Native.POINTER_SIZE * 8) : "";
            String[] strArr = {"/usr/lib" + str, "/lib" + str, "/usr/lib", "/lib"};
            if (Platform.isLinux() || Platform.iskFreeBSD() || Platform.isGNU()) {
                String multiArchPath = getMultiArchPath();
                strArr = new String[]{"/usr/lib/" + multiArchPath, "/lib/" + multiArchPath, "/usr/lib" + str, "/lib" + str, "/usr/lib", "/lib"};
            }
            if (Platform.isLinux()) {
                ArrayList<String> linuxLdPaths = getLinuxLdPaths();
                for (int length = strArr.length - 1; length >= 0; length--) {
                    int iIndexOf = linuxLdPaths.indexOf(strArr[length]);
                    if (iIndexOf != -1) {
                        linuxLdPaths.remove(iIndexOf);
                    }
                    linuxLdPaths.add(0, strArr[length]);
                }
                strArr = (String[]) linuxLdPaths.toArray(new String[0]);
            }
            String str2 = "";
            String str3 = str2;
            for (int i = 0; i < strArr.length; i++) {
                File file = new File(strArr[i]);
                if (file.exists() && file.isDirectory()) {
                    str2 = str2 + str3 + strArr[i];
                    str3 = File.pathSeparator;
                }
            }
            if (!"".equals(str2)) {
                System.setProperty("jna.platform.library.path", str2);
            }
        }
        librarySearchPath.addAll(initPaths("jna.platform.library.path"));
    }

    private static String functionKey(String str, int i, String str2) {
        return str + "|" + i + "|" + str2;
    }

    private NativeLibrary(String str, String str2, long j, Map<String, ?> map) throws Throwable {
        HashMap map2 = new HashMap();
        this.functions = map2;
        String libraryName = getLibraryName(str);
        this.libraryName = libraryName;
        this.libraryPath = str2;
        this.handle = j;
        Object obj = map.get(Library.OPTION_CALLING_CONVENTION);
        int iIntValue = obj instanceof Number ? ((Number) obj).intValue() : 0;
        this.callFlags = iIntValue;
        this.options = map;
        String str3 = (String) map.get(Library.OPTION_STRING_ENCODING);
        this.encoding = str3;
        if (str3 == null) {
            this.encoding = Native.getDefaultStringEncoding();
        }
        if (!Platform.isWindows() || !"kernel32".equals(libraryName.toLowerCase())) {
            return;
        }
        synchronized (map2) {
            try {
                try {
                    map2.put(functionKey("GetLastError", iIntValue, this.encoding), new Function(this, "GetLastError", 63, this.encoding) { // from class: com.sun.jna.NativeLibrary.1
                        @Override // com.sun.jna.Function
                        Object invoke(Object[] objArr, Class<?> cls, boolean z, int i) {
                            return Integer.valueOf(Native.getLastError());
                        }

                        @Override // com.sun.jna.Function
                        Object invoke(Method method, Class<?>[] clsArr, Class<?> cls, Object[] objArr, Map<String, ?> map3) {
                            return Integer.valueOf(Native.getLastError());
                        }
                    });
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private static int openFlags(Map<String, ?> map) {
        Object obj = map.get(Library.OPTION_OPEN_FLAGS);
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        return -1;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    private static NativeLibrary loadLibrary(String str, Map<String, ?> map) throws Throwable {
        long j;
        long jOpen;
        Map<String, ?> map2;
        Logger logger = LOG;
        Level level = DEBUG_LOAD_LEVEL;
        logger.log(level, "Looking for library '" + str + "'");
        ArrayList<Throwable> arrayList = new ArrayList();
        boolean zIsAbsolute = new File(str).isAbsolute();
        ArrayList arrayList2 = new ArrayList();
        int iOpenFlags = openFlags(map);
        String webStartLibraryPath = Native.getWebStartLibraryPath(str);
        if (webStartLibraryPath != null) {
            logger.log(level, "Adding web start path " + webStartLibraryPath);
            arrayList2.add(webStartLibraryPath);
        }
        List<String> list = searchPaths.get(str);
        if (list != null) {
            synchronized (list) {
                arrayList2.addAll(0, list);
            }
        }
        logger.log(level, "Adding paths from jna.library.path: " + System.getProperty("jna.library.path"));
        arrayList2.addAll(initPaths("jna.library.path"));
        String strFindLibraryPath = findLibraryPath(str, arrayList2);
        try {
            logger.log(level, "Trying " + strFindLibraryPath);
            jOpen = Native.open(strFindLibraryPath, iOpenFlags);
            j = 0;
        } catch (UnsatisfiedLinkError e) {
            Logger logger2 = LOG;
            Level level2 = DEBUG_LOAD_LEVEL;
            j = 0;
            logger2.log(level2, "Loading failed with message: " + e.getMessage());
            StringBuilder sb = new StringBuilder("Adding system paths: ");
            List<String> list2 = librarySearchPath;
            logger2.log(level2, sb.append(list2).toString());
            arrayList.add(e);
            arrayList2.addAll(list2);
            jOpen = 0;
        }
        if (jOpen == j) {
            try {
                strFindLibraryPath = findLibraryPath(str, arrayList2);
                LOG.log(DEBUG_LOAD_LEVEL, "Trying " + strFindLibraryPath);
                jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                if (jOpen == j) {
                    throw new UnsatisfiedLinkError("Failed to load library '" + str + "'");
                }
                map2 = map;
            } catch (UnsatisfiedLinkError e2) {
                Logger logger3 = LOG;
                Level level3 = DEBUG_LOAD_LEVEL;
                logger3.log(level3, "Loading failed with message: " + e2.getMessage());
                arrayList.add(e2);
                if (Platform.isAndroid()) {
                    try {
                        logger3.log(level3, "Preload (via System.loadLibrary) " + str);
                        System.loadLibrary(str);
                        jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                    } catch (UnsatisfiedLinkError e3) {
                        LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e3.getMessage());
                        arrayList.add(e3);
                    }
                } else if (Platform.isLinux() || Platform.isFreeBSD()) {
                    logger3.log(level3, "Looking for version variants");
                    strFindLibraryPath = matchLibrary(str, arrayList2);
                    if (strFindLibraryPath != null) {
                        logger3.log(level3, "Trying " + strFindLibraryPath);
                        try {
                            jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                        } catch (UnsatisfiedLinkError e4) {
                            LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e4.getMessage());
                            arrayList.add(e4);
                        }
                    }
                } else if (Platform.isMac() && !str.endsWith(".dylib")) {
                    logger3.log(level3, "Looking for matching frameworks");
                    strFindLibraryPath = matchFramework(str);
                    if (strFindLibraryPath != null) {
                        try {
                            logger3.log(level3, "Trying " + strFindLibraryPath);
                            jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                        } catch (UnsatisfiedLinkError e5) {
                            LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e5.getMessage());
                            arrayList.add(e5);
                        }
                    }
                } else if (Platform.isWindows() && !zIsAbsolute) {
                    logger3.log(level3, "Looking for lib- prefix");
                    strFindLibraryPath = findLibraryPath("lib" + str, arrayList2);
                    if (strFindLibraryPath != null) {
                        logger3.log(level3, "Trying " + strFindLibraryPath);
                        try {
                            jOpen = Native.open(strFindLibraryPath, iOpenFlags);
                        } catch (UnsatisfiedLinkError e6) {
                            LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e6.getMessage());
                            arrayList.add(e6);
                        }
                    }
                }
                if (jOpen == j) {
                    map2 = map;
                    try {
                        File fileExtractFromResourcePath = Native.extractFromResourcePath(str, (ClassLoader) map2.get(Library.OPTION_CLASSLOADER));
                        try {
                            jOpen = Native.open(fileExtractFromResourcePath.getAbsolutePath(), iOpenFlags);
                            strFindLibraryPath = fileExtractFromResourcePath.getAbsolutePath();
                            if (Native.isUnpacked(fileExtractFromResourcePath)) {
                                Native.deleteLibrary(fileExtractFromResourcePath);
                            }
                        } catch (Throwable th) {
                            if (Native.isUnpacked(fileExtractFromResourcePath)) {
                                Native.deleteLibrary(fileExtractFromResourcePath);
                            }
                            throw th;
                        }
                    } catch (IOException e7) {
                        LOG.log(DEBUG_LOAD_LEVEL, "Loading failed with message: " + e7.getMessage());
                        arrayList.add(e7);
                    }
                } else {
                    map2 = map;
                }
                if (jOpen == j) {
                    StringBuilder sb2 = new StringBuilder("Unable to load library '");
                    sb2.append(str);
                    sb2.append("':");
                    for (Throwable th2 : arrayList) {
                        sb2.append("\n");
                        sb2.append(th2.getMessage());
                    }
                    UnsatisfiedLinkError unsatisfiedLinkError = new UnsatisfiedLinkError(sb2.toString());
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        addSuppressedReflected(unsatisfiedLinkError, (Throwable) it.next());
                    }
                    throw unsatisfiedLinkError;
                }
            }
        } else {
            map2 = map;
        }
        long j2 = jOpen;
        String str2 = strFindLibraryPath;
        LOG.log(DEBUG_LOAD_LEVEL, "Found library '" + str + "' at " + str2);
        return new NativeLibrary(str, str2, j2, map2);
    }

    private static void addSuppressedReflected(Throwable th, Throwable th2) {
        Method method = addSuppressedMethod;
        if (method == null) {
            return;
        }
        try {
            method.invoke(th, th2);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Failed to call addSuppressedMethod", e);
        } catch (IllegalArgumentException e2) {
            throw new RuntimeException("Failed to call addSuppressedMethod", e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException("Failed to call addSuppressedMethod", e3);
        }
    }

    static String matchFramework(String str) {
        File file = new File(str);
        if (file.isAbsolute()) {
            if (str.indexOf(".framework") != -1 && file.exists()) {
                return file.getAbsolutePath();
            }
            File file2 = new File(new File(file.getParentFile(), file.getName() + ".framework"), file.getName());
            if (file2.exists()) {
                return file2.getAbsolutePath();
            }
            return null;
        }
        String[] strArr = {System.getProperty("user.home"), "", "/System"};
        if (str.indexOf(".framework") == -1) {
            str = str + ".framework/" + str;
        }
        for (int i = 0; i < 3; i++) {
            String str2 = strArr[i] + "/Library/Frameworks/" + str;
            if (new File(str2).exists()) {
                return str2;
            }
        }
        return null;
    }

    private String getLibraryName(String str) {
        String strMapSharedLibraryName = mapSharedLibraryName("---");
        int iIndexOf = strMapSharedLibraryName.indexOf("---");
        if (iIndexOf > 0 && str.startsWith(strMapSharedLibraryName.substring(0, iIndexOf))) {
            str = str.substring(iIndexOf);
        }
        int iIndexOf2 = str.indexOf(strMapSharedLibraryName.substring(iIndexOf + "---".length()));
        return iIndexOf2 != -1 ? str.substring(0, iIndexOf2) : str;
    }

    public static final NativeLibrary getInstance(String str) {
        return getInstance(str, (Map<String, ?>) Collections.emptyMap());
    }

    public static final NativeLibrary getInstance(String str, ClassLoader classLoader) {
        return getInstance(str, (Map<String, ?>) Collections.singletonMap(Library.OPTION_CLASSLOADER, classLoader));
    }

    public static final NativeLibrary getInstance(String str, Map<String, ?> map) {
        NativeLibrary nativeLibraryLoadLibrary;
        HashMap map2 = new HashMap(map);
        if (map2.get(Library.OPTION_CALLING_CONVENTION) == null) {
            map2.put(Library.OPTION_CALLING_CONVENTION, 0);
        }
        if ((Platform.isLinux() || Platform.isFreeBSD() || Platform.isAIX()) && Platform.C_LIBRARY_NAME.equals(str)) {
            str = null;
        }
        Map<String, Reference<NativeLibrary>> map3 = libraries;
        synchronized (map3) {
            Reference<NativeLibrary> reference = map3.get(str + map2);
            nativeLibraryLoadLibrary = reference != null ? reference.get() : null;
            if (nativeLibraryLoadLibrary == null) {
                if (str == null) {
                    nativeLibraryLoadLibrary = new NativeLibrary("<process>", null, Native.open(null, openFlags(map2)), map2);
                } else {
                    nativeLibraryLoadLibrary = loadLibrary(str, map2);
                }
                WeakReference weakReference = new WeakReference(nativeLibraryLoadLibrary);
                map3.put(nativeLibraryLoadLibrary.getName() + map2, weakReference);
                File file = nativeLibraryLoadLibrary.getFile();
                if (file != null) {
                    map3.put(file.getAbsolutePath() + map2, weakReference);
                    map3.put(file.getName() + map2, weakReference);
                }
            }
        }
        return nativeLibraryLoadLibrary;
    }

    public static final synchronized NativeLibrary getProcess() {
        return getInstance(null);
    }

    public static final synchronized NativeLibrary getProcess(Map<String, ?> map) {
        return getInstance((String) null, map);
    }

    public static final void addSearchPath(String str, String str2) {
        Map<String, List<String>> map = searchPaths;
        synchronized (map) {
            List<String> listSynchronizedList = map.get(str);
            if (listSynchronizedList == null) {
                listSynchronizedList = Collections.synchronizedList(new ArrayList());
                map.put(str, listSynchronizedList);
            }
            listSynchronizedList.add(str2);
        }
    }

    public Function getFunction(String str) {
        return getFunction(str, this.callFlags);
    }

    Function getFunction(String str, Method method) {
        FunctionMapper functionMapper = (FunctionMapper) this.options.get(Library.OPTION_FUNCTION_MAPPER);
        if (functionMapper != null) {
            str = functionMapper.getFunctionName(this, method);
        }
        String property = System.getProperty("jna.profiler.prefix", "$$YJP$$");
        if (str.startsWith(property)) {
            str = str.substring(property.length());
        }
        int i = this.callFlags;
        for (Class<?> cls : method.getExceptionTypes()) {
            if (LastErrorException.class.isAssignableFrom(cls)) {
                i |= 64;
            }
        }
        return getFunction(str, i);
    }

    public Function getFunction(String str, int i) {
        return getFunction(str, i, this.encoding);
    }

    public Function getFunction(String str, int i, String str2) {
        Function function;
        if (str == null) {
            throw new NullPointerException("Function name may not be null");
        }
        synchronized (this.functions) {
            String strFunctionKey = functionKey(str, i, str2);
            function = this.functions.get(strFunctionKey);
            if (function == null) {
                function = new Function(this, str, i, str2);
                this.functions.put(strFunctionKey, function);
            }
        }
        return function;
    }

    public Map<String, ?> getOptions() {
        return this.options;
    }

    public Pointer getGlobalVariableAddress(String str) {
        try {
            return new Pointer(getSymbolAddress(str));
        } catch (UnsatisfiedLinkError e) {
            throw new UnsatisfiedLinkError("Error looking up '" + str + "': " + e.getMessage());
        }
    }

    long getSymbolAddress(String str) {
        long j = this.handle;
        if (j == 0) {
            throw new UnsatisfiedLinkError("Library has been unloaded");
        }
        return Native.findSymbol(j, str);
    }

    public String toString() {
        return "Native Library <" + this.libraryPath + "@" + this.handle + ">";
    }

    public String getName() {
        return this.libraryName;
    }

    public File getFile() {
        if (this.libraryPath == null) {
            return null;
        }
        return new File(this.libraryPath);
    }

    protected void finalize() {
        dispose();
    }

    static void disposeAll() {
        LinkedHashSet linkedHashSet;
        Map<String, Reference<NativeLibrary>> map = libraries;
        synchronized (map) {
            linkedHashSet = new LinkedHashSet(map.values());
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            NativeLibrary nativeLibrary = (NativeLibrary) ((Reference) it.next()).get();
            if (nativeLibrary != null) {
                nativeLibrary.dispose();
            }
        }
    }

    public void dispose() {
        HashSet hashSet = new HashSet();
        Map<String, Reference<NativeLibrary>> map = libraries;
        synchronized (map) {
            for (Map.Entry<String, Reference<NativeLibrary>> entry : map.entrySet()) {
                if (entry.getValue().get() == this) {
                    hashSet.add(entry.getKey());
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                libraries.remove((String) it.next());
            }
        }
        synchronized (this) {
            long j = this.handle;
            if (j != 0) {
                Native.close(j);
                this.handle = 0L;
            }
        }
    }

    private static List<String> initPaths(String str) {
        String property = System.getProperty(str, "");
        if ("".equals(property)) {
            return Collections.emptyList();
        }
        StringTokenizer stringTokenizer = new StringTokenizer(property, File.pathSeparator);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (!"".equals(strNextToken)) {
                arrayList.add(strNextToken);
            }
        }
        return arrayList;
    }

    private static String findLibraryPath(String str, List<String> list) {
        if (new File(str).isAbsolute()) {
            return str;
        }
        String strMapSharedLibraryName = mapSharedLibraryName(str);
        for (String str2 : list) {
            File file = new File(str2, strMapSharedLibraryName);
            if (file.exists()) {
                return file.getAbsolutePath();
            }
            if (Platform.isMac() && strMapSharedLibraryName.endsWith(".dylib")) {
                File file2 = new File(str2, strMapSharedLibraryName.substring(0, strMapSharedLibraryName.lastIndexOf(".dylib")) + ".jnilib");
                if (file2.exists()) {
                    return file2.getAbsolutePath();
                }
            }
        }
        return strMapSharedLibraryName;
    }

    static String mapSharedLibraryName(String str) {
        if (Platform.isMac()) {
            if (str.startsWith("lib") && (str.endsWith(".dylib") || str.endsWith(".jnilib"))) {
                return str;
            }
            String strMapLibraryName = System.mapLibraryName(str);
            return strMapLibraryName.endsWith(".jnilib") ? strMapLibraryName.substring(0, strMapLibraryName.lastIndexOf(".jnilib")) + ".dylib" : strMapLibraryName;
        }
        if (Platform.isLinux() || Platform.isFreeBSD()) {
            if (isVersionedName(str) || str.endsWith(".so")) {
                return str;
            }
        } else if (Platform.isAIX()) {
            if (str.startsWith("lib")) {
                return str;
            }
        } else if (Platform.isWindows() && (str.endsWith(".drv") || str.endsWith(".dll") || str.endsWith(".ocx"))) {
            return str;
        }
        return System.mapLibraryName(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isVersionedName(String str) {
        int iLastIndexOf;
        int i;
        if (!str.startsWith("lib") || (iLastIndexOf = str.lastIndexOf(".so.")) == -1 || (i = iLastIndexOf + 4) >= str.length()) {
            return false;
        }
        for (i = iLastIndexOf + 4; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isDigit(cCharAt) && cCharAt != '.') {
                return false;
            }
        }
        return true;
    }

    static String matchLibrary(final String str, List<String> list) {
        File file = new File(str);
        if (file.isAbsolute()) {
            list = Arrays.asList(file.getParent());
        }
        FilenameFilter filenameFilter = new FilenameFilter() { // from class: com.sun.jna.NativeLibrary.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                return (str2.startsWith(new StringBuilder("lib").append(str).append(".so").toString()) || (str2.startsWith(new StringBuilder().append(str).append(".so").toString()) && str.startsWith("lib"))) && NativeLibrary.isVersionedName(str2);
            }
        };
        LinkedList linkedList = new LinkedList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            File[] fileArrListFiles = new File(it.next()).listFiles(filenameFilter);
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                linkedList.addAll(Arrays.asList(fileArrListFiles));
            }
        }
        Iterator it2 = linkedList.iterator();
        double d = -1.0d;
        String str2 = null;
        while (it2.hasNext()) {
            String absolutePath = ((File) it2.next()).getAbsolutePath();
            double version = parseVersion(absolutePath.substring(absolutePath.lastIndexOf(".so.") + 4));
            if (version > d) {
                str2 = absolutePath;
                d = version;
            }
        }
        return str2;
    }

    static double parseVersion(String str) {
        String str2;
        int iIndexOf = str.indexOf(".");
        double d = 1.0d;
        double d2 = 0.0d;
        while (str != null) {
            if (iIndexOf != -1) {
                String strSubstring = str.substring(0, iIndexOf);
                String strSubstring2 = str.substring(iIndexOf + 1);
                iIndexOf = strSubstring2.indexOf(".");
                str2 = strSubstring2;
                str = strSubstring;
            } else {
                str2 = null;
            }
            try {
                d2 += ((double) Integer.parseInt(str)) / d;
                d *= 100.0d;
                str = str2;
            } catch (NumberFormatException unused) {
                return 0.0d;
            }
        }
        return d2;
    }

    private static String getMultiArchPath() {
        String str;
        String str2 = Platform.ARCH;
        if (Platform.iskFreeBSD()) {
            str = "-kfreebsd";
        } else {
            str = Platform.isGNU() ? "" : "-linux";
        }
        String str3 = "-gnu";
        if (Platform.isIntel()) {
            str2 = Platform.is64Bit() ? "x86_64" : "i386";
        } else if (Platform.isPPC()) {
            str2 = Platform.is64Bit() ? "powerpc64" : "powerpc";
        } else if (Platform.isARM()) {
            str2 = "arm";
            str3 = "-gnueabi";
        } else if (Platform.ARCH.equals("mips64el")) {
            str3 = "-gnuabi64";
        }
        return str2 + str + str3;
    }

    private static ArrayList<String> getLinuxLdPaths() throws Throwable {
        ArrayList<String> arrayList = new ArrayList<>();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("/sbin/ldconfig -p").getInputStream()));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            int iIndexOf = line.indexOf(" => ");
                            int iLastIndexOf = line.lastIndexOf(47);
                            if (iIndexOf != -1 && iLastIndexOf != -1 && iIndexOf < iLastIndexOf) {
                                String strSubstring = line.substring(iIndexOf + 4, iLastIndexOf);
                                if (!arrayList.contains(strSubstring)) {
                                    arrayList.add(strSubstring);
                                }
                            }
                        } else {
                            bufferedReader2.close();
                            return arrayList;
                        }
                    } catch (Exception unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return arrayList;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException unused3) {
                return arrayList;
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
