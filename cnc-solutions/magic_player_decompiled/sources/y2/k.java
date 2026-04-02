package y2;

import java.lang.reflect.Field;
import java.net.URI;
import java.util.ServiceLoader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static c3.b f4138a = c3.c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", k.class.getSimpleName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ServiceLoader<e3.a> f4139b = ServiceLoader.load(e3.a.class, k.class.getClassLoader());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f4140c = Pattern.compile("((.+)@)?([^:]*)(:(\\d+))?");

    public static void a(URI uri) {
        if (uri.getHost() != null || uri.getAuthority() == null || uri.getAuthority().isEmpty()) {
            return;
        }
        Matcher matcher = f4140c.matcher(uri.getAuthority());
        if (matcher.find()) {
            b(uri, "userInfo", matcher.group(2));
            b(uri, "host", matcher.group(3));
            String strGroup = matcher.group(5);
            b(uri, "port", Integer.valueOf(strGroup != null ? Integer.parseInt(strGroup) : -1));
        }
    }

    public static void b(URI uri, String str, Object obj) {
        try {
            Field declaredField = URI.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(uri, obj);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException | SecurityException e4) {
            f4138a.g(k.class.getName(), "setURIField", "115", new Object[]{uri.toString()}, e4);
        }
    }
}
