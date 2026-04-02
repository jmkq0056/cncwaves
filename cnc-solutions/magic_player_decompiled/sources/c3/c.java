package c3;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f324a = a.class.getName();

    public static b a(String str, String str2) {
        String str3 = f324a;
        ResourceBundle bundle = ResourceBundle.getBundle(str);
        b bVar = null;
        try {
            b bVar2 = (b) Class.forName(str3).newInstance();
            bVar2.f(bundle, str2, null);
            bVar = bVar2;
        } catch (ClassNotFoundException | ExceptionInInitializerError | IllegalAccessException | InstantiationException | NoClassDefFoundError | SecurityException unused) {
        }
        if (bVar != null) {
            return bVar;
        }
        throw new MissingResourceException("Error locating the logging class", "c3.c", str2);
    }
}
