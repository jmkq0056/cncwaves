package s;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class o {
    @SuppressLint({"DiscouragedPrivateApi"})
    public static void a() {
        Object objInvoke;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 < 22) {
            Log.d("WebViewUtils", "Don't need to Hook WebView");
            return;
        }
        try {
            Class<?> cls = Class.forName("android.webkit.WebViewFactory");
            Field declaredField = cls.getDeclaredField("sProviderInstance");
            declaredField.setAccessible(true);
            if (declaredField.get(null) != null) {
                Log.d("WebViewUtils", "sProviderInstance isn't null");
                return;
            }
            Method declaredMethod = i4 > 22 ? cls.getDeclaredMethod("getProviderClass", new Class[0]) : cls.getDeclaredMethod("getFactoryClass", new Class[0]);
            declaredMethod.setAccessible(true);
            Class cls2 = (Class) declaredMethod.invoke(cls, new Object[0]);
            Class<?> cls3 = Class.forName("android.webkit.WebViewDelegate");
            Constructor<?> declaredConstructor = cls3.getDeclaredConstructor(new Class[0]);
            declaredConstructor.setAccessible(true);
            if (i4 < 26) {
                Constructor constructor = cls2.getConstructor(cls3);
                constructor.setAccessible(true);
                objInvoke = constructor.newInstance(declaredConstructor.newInstance(new Object[0]));
            } else {
                Field declaredField2 = cls.getDeclaredField("CHROMIUM_WEBVIEW_FACTORY_METHOD");
                declaredField2.setAccessible(true);
                String str = (String) declaredField2.get(null);
                if (str == null) {
                    str = "create";
                }
                objInvoke = cls2.getMethod(str, cls3).invoke(null, declaredConstructor.newInstance(new Object[0]));
            }
            if (objInvoke == null) {
                Log.i("WebViewUtils", "Hook failed!");
                return;
            }
            declaredField.set("sProviderInstance", objInvoke);
            Log.d("WebViewUtils", "Hook done, sProviderInstance: " + objInvoke);
        } catch (Throwable th) {
            w0.h.h(th);
        }
    }
}
