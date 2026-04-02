package androidx.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.support.v4.media.f;
import android.support.v4.media.g;
import android.util.Log;
import androidx.appcompat.view.b;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public final class MultiDex {
    private static final String CODE_CACHE_NAME = "code_cache";
    private static final String CODE_CACHE_SECONDARY_FOLDER_NAME = "secondary-dexes";
    private static final int MAX_SUPPORTED_SDK_VERSION = 20;
    private static final int MIN_SDK_VERSION = 4;
    private static final String NO_KEY_PREFIX = "";
    private static final String OLD_SECONDARY_FOLDER_NAME = "secondary-dexes";
    public static final String TAG = "MultiDex";
    private static final int VM_WITH_MULTIDEX_VERSION_MAJOR = 2;
    private static final int VM_WITH_MULTIDEX_VERSION_MINOR = 1;
    private static final Set<File> installedApk = new HashSet();
    private static final boolean IS_VM_MULTIDEX_CAPABLE = isVMMultidexCapable(System.getProperty("java.vm.version"));

    public static final class V14 {
        private static final int EXTRACTED_SUFFIX_LENGTH = 4;
        private final ElementConstructor elementConstructor;

        public interface ElementConstructor {
            Object newInstance(File file, DexFile dexFile);
        }

        public static class ICSElementConstructor implements ElementConstructor {
            private final Constructor<?> elementConstructor;

            public ICSElementConstructor(Class<?> cls) throws NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.elementConstructor = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            public Object newInstance(File file, DexFile dexFile) {
                return this.elementConstructor.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        public static class JBMR11ElementConstructor implements ElementConstructor {
            private final Constructor<?> elementConstructor;

            public JBMR11ElementConstructor(Class<?> cls) throws NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.elementConstructor = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            public Object newInstance(File file, DexFile dexFile) {
                return this.elementConstructor.newInstance(file, file, dexFile);
            }
        }

        public static class JBMR2ElementConstructor implements ElementConstructor {
            private final Constructor<?> elementConstructor;

            public JBMR2ElementConstructor(Class<?> cls) throws NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.elementConstructor = constructor;
                constructor.setAccessible(true);
            }

            @Override // androidx.multidex.MultiDex.V14.ElementConstructor
            public Object newInstance(File file, DexFile dexFile) {
                return this.elementConstructor.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        private V14() throws ClassNotFoundException {
            ElementConstructor jBMR2ElementConstructor;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                try {
                    jBMR2ElementConstructor = new ICSElementConstructor(cls);
                } catch (NoSuchMethodException unused) {
                    jBMR2ElementConstructor = new JBMR11ElementConstructor(cls);
                }
            } catch (NoSuchMethodException unused2) {
                jBMR2ElementConstructor = new JBMR2ElementConstructor(cls);
            }
            this.elementConstructor = jBMR2ElementConstructor;
        }

        public static void install(ClassLoader classLoader, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException {
            Object obj = MultiDex.findField(classLoader, "pathList").get(classLoader);
            Object[] objArrMakeDexElements = new V14().makeDexElements(list);
            try {
                MultiDex.expandFieldArray(obj, "dexElements", objArrMakeDexElements);
            } catch (NoSuchFieldException e4) {
                Log.w(MultiDex.TAG, "Failed find field 'dexElements' attempting 'pathElements'", e4);
                MultiDex.expandFieldArray(obj, "pathElements", objArrMakeDexElements);
            }
        }

        private Object[] makeDexElements(List<? extends File> list) {
            int size = list.size();
            Object[] objArr = new Object[size];
            for (int i4 = 0; i4 < size; i4++) {
                File file = list.get(i4);
                objArr[i4] = this.elementConstructor.newInstance(file, DexFile.loadDex(file.getPath(), optimizedPathFor(file), 0));
            }
            return objArr;
        }

        private static String optimizedPathFor(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - EXTRACTED_SUFFIX_LENGTH) + MultiDexExtractor.DEX_SUFFIX).getPath();
        }
    }

    public static final class V19 {
        private V19() {
        }

        public static void install(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalAccessException, NoSuchFieldException, IOException {
            IOException[] iOExceptionArr;
            Object obj = MultiDex.findField(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            MultiDex.expandFieldArray(obj, "dexElements", makeDexElements(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w(MultiDex.TAG, "Exception in makeDexElement", (IOException) it.next());
                }
                Field fieldFindField = MultiDex.findField(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) fieldFindField.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                fieldFindField.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }

        private static Object[] makeDexElements(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) {
            return (Object[]) MultiDex.findMethod(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }
    }

    public static final class V4 {
        private V4() {
        }

        public static void install(ClassLoader classLoader, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException {
            int size = list.size();
            Field fieldFindField = MultiDex.findField(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) fieldFindField.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<? extends File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File next = listIterator.next();
                String absolutePath = next.getAbsolutePath();
                sb.append(':');
                sb.append(absolutePath);
                int iPreviousIndex = listIterator.previousIndex();
                strArr[iPreviousIndex] = absolutePath;
                fileArr[iPreviousIndex] = next;
                zipFileArr[iPreviousIndex] = new ZipFile(next);
                dexFileArr[iPreviousIndex] = DexFile.loadDex(absolutePath, absolutePath + MultiDexExtractor.DEX_SUFFIX, 0);
            }
            fieldFindField.set(classLoader, sb.toString());
            MultiDex.expandFieldArray(classLoader, "mPaths", strArr);
            MultiDex.expandFieldArray(classLoader, "mFiles", fileArr);
            MultiDex.expandFieldArray(classLoader, "mZips", zipFileArr);
            MultiDex.expandFieldArray(classLoader, "mDexs", dexFileArr);
        }
    }

    private MultiDex() {
    }

    private static void clearOldDexDir(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            StringBuilder sbA = f.a("Clearing old secondary dex dir (");
            sbA.append(file.getPath());
            sbA.append(").");
            Log.i(TAG, sbA.toString());
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                StringBuilder sbA2 = f.a("Failed to list secondary dex dir content (");
                sbA2.append(file.getPath());
                sbA2.append(").");
                Log.w(TAG, sbA2.toString());
                return;
            }
            for (File file2 : fileArrListFiles) {
                StringBuilder sbA3 = f.a("Trying to delete old file ");
                sbA3.append(file2.getPath());
                sbA3.append(" of size ");
                sbA3.append(file2.length());
                Log.i(TAG, sbA3.toString());
                if (file2.delete()) {
                    StringBuilder sbA4 = f.a("Deleted old file ");
                    sbA4.append(file2.getPath());
                    Log.i(TAG, sbA4.toString());
                } else {
                    StringBuilder sbA5 = f.a("Failed to delete old file ");
                    sbA5.append(file2.getPath());
                    Log.w(TAG, sbA5.toString());
                }
            }
            if (file.delete()) {
                StringBuilder sbA6 = f.a("Deleted old secondary dex dir ");
                sbA6.append(file.getPath());
                Log.i(TAG, sbA6.toString());
            } else {
                StringBuilder sbA7 = f.a("Failed to delete secondary dex dir ");
                sbA7.append(file.getPath());
                Log.w(TAG, sbA7.toString());
            }
        }
    }

    private static void doInstallation(Context context, File file, File file2, String str, String str2, boolean z3) {
        Set<File> set = installedApk;
        synchronized (set) {
            if (set.contains(file)) {
                return;
            }
            set.add(file);
            int i4 = Build.VERSION.SDK_INT;
            if (i4 > 20) {
                Log.w(TAG, "MultiDex is not guaranteed to work in SDK version " + i4 + ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
            }
            ClassLoader dexClassloader = getDexClassloader(context);
            if (dexClassloader == null) {
                return;
            }
            try {
                clearOldDexDir(context);
            } catch (Throwable th) {
                Log.w(TAG, "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", th);
            }
            File dexDir = getDexDir(context, file2, str);
            MultiDexExtractor multiDexExtractor = new MultiDexExtractor(file, dexDir);
            IOException e4 = null;
            try {
                try {
                    installSecondaryDexes(dexClassloader, dexDir, multiDexExtractor.load(context, str2, false));
                } catch (IOException e5) {
                    if (!z3) {
                        throw e5;
                    }
                    Log.w(TAG, "Failed to install extracted secondary dex files, retrying with forced extraction", e5);
                    installSecondaryDexes(dexClassloader, dexDir, multiDexExtractor.load(context, str2, true));
                }
                try {
                } catch (IOException e6) {
                    e4 = e6;
                }
                if (e4 != null) {
                    throw e4;
                }
            } finally {
                try {
                    multiDexExtractor.close();
                } catch (IOException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void expandFieldArray(Object obj, String str, Object[] objArr) throws IllegalAccessException, NoSuchFieldException {
        Field fieldFindField = findField(obj, str);
        Object[] objArr2 = (Object[]) fieldFindField.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        fieldFindField.set(obj, objArr3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Field findField(Object obj, String str) throws NoSuchFieldException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        StringBuilder sbA = b.a("Field ", str, " not found in ");
        sbA.append(obj.getClass());
        throw new NoSuchFieldException(sbA.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Method findMethod(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Method declaredMethod = superclass.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        StringBuilder sbA = b.a("Method ", str, " with parameters ");
        sbA.append(Arrays.asList(clsArr));
        sbA.append(" not found in ");
        sbA.append(obj.getClass());
        throw new NoSuchMethodException(sbA.toString());
    }

    private static ApplicationInfo getApplicationInfo(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e4) {
            Log.w(TAG, "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e4);
            return null;
        }
    }

    private static ClassLoader getDexClassloader(Context context) {
        try {
            ClassLoader classLoader = context.getClassLoader();
            if (classLoader instanceof BaseDexClassLoader) {
                return classLoader;
            }
            Log.e(TAG, "Context class loader is null or not dex-capable. Must be running in test mode. Skip patching.");
            return null;
        } catch (RuntimeException e4) {
            Log.w(TAG, "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", e4);
            return null;
        }
    }

    private static File getDexDir(Context context, File file, String str) throws IOException {
        File file2 = new File(file, CODE_CACHE_NAME);
        try {
            mkdirChecked(file2);
        } catch (IOException unused) {
            file2 = new File(context.getFilesDir(), CODE_CACHE_NAME);
            mkdirChecked(file2);
        }
        File file3 = new File(file2, str);
        mkdirChecked(file3);
        return file3;
    }

    public static void install(Context context) {
        Log.i(TAG, "Installing application");
        if (IS_VM_MULTIDEX_CAPABLE) {
            Log.i(TAG, "VM has multidex support, MultiDex support library is disabled.");
            return;
        }
        try {
            ApplicationInfo applicationInfo = getApplicationInfo(context);
            if (applicationInfo == null) {
                Log.i(TAG, "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
            } else {
                doInstallation(context, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir), "secondary-dexes", "", true);
                Log.i(TAG, "install done");
            }
        } catch (Exception e4) {
            Log.e(TAG, "MultiDex installation failure", e4);
            StringBuilder sbA = f.a("MultiDex installation failed (");
            sbA.append(e4.getMessage());
            sbA.append(").");
            throw new RuntimeException(sbA.toString());
        }
    }

    public static void installInstrumentation(Context context, Context context2) {
        Log.i(TAG, "Installing instrumentation");
        if (IS_VM_MULTIDEX_CAPABLE) {
            Log.i(TAG, "VM has multidex support, MultiDex support library is disabled.");
            return;
        }
        try {
            ApplicationInfo applicationInfo = getApplicationInfo(context);
            if (applicationInfo == null) {
                Log.i(TAG, "No ApplicationInfo available for instrumentation, i.e. running on a test Context: MultiDex support library is disabled.");
                return;
            }
            ApplicationInfo applicationInfo2 = getApplicationInfo(context2);
            if (applicationInfo2 == null) {
                Log.i(TAG, "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                return;
            }
            String str = context.getPackageName() + ".";
            File file = new File(applicationInfo2.dataDir);
            doInstallation(context2, new File(applicationInfo.sourceDir), file, str + "secondary-dexes", str, false);
            doInstallation(context2, new File(applicationInfo2.sourceDir), file, "secondary-dexes", "", false);
            Log.i(TAG, "Installation done");
        } catch (Exception e4) {
            Log.e(TAG, "MultiDex installation failure", e4);
            StringBuilder sbA = f.a("MultiDex installation failed (");
            sbA.append(e4.getMessage());
            sbA.append(").");
            throw new RuntimeException(sbA.toString());
        }
    }

    private static void installSecondaryDexes(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalAccessException, NoSuchFieldException, IOException {
        if (list.isEmpty()) {
            return;
        }
        V19.install(classLoader, list, file);
    }

    public static boolean isVMMultidexCapable(String str) {
        boolean z3 = false;
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            String strNextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            String strNextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            if (strNextToken != null && strNextToken2 != null) {
                try {
                    int i4 = Integer.parseInt(strNextToken);
                    int i5 = Integer.parseInt(strNextToken2);
                    if (i4 > 2 || (i4 == 2 && i5 >= 1)) {
                        z3 = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder sbA = g.a("VM with version ", str);
        sbA.append(z3 ? " has multidex support" : " does not have multidex support");
        Log.i(TAG, sbA.toString());
        return z3;
    }

    private static void mkdirChecked(File file) throws IOException {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            StringBuilder sbA = f.a("Failed to create dir ");
            sbA.append(file.getPath());
            sbA.append(". Parent file is null.");
            Log.e(TAG, sbA.toString());
        } else {
            StringBuilder sbA2 = f.a("Failed to create dir ");
            sbA2.append(file.getPath());
            sbA2.append(". parent file is a dir ");
            sbA2.append(parentFile.isDirectory());
            sbA2.append(", a file ");
            sbA2.append(parentFile.isFile());
            sbA2.append(", exists ");
            sbA2.append(parentFile.exists());
            sbA2.append(", readable ");
            sbA2.append(parentFile.canRead());
            sbA2.append(", writable ");
            sbA2.append(parentFile.canWrite());
            Log.e(TAG, sbA2.toString());
        }
        StringBuilder sbA3 = f.a("Failed to create directory ");
        sbA3.append(file.getPath());
        throw new IOException(sbA3.toString());
    }
}
