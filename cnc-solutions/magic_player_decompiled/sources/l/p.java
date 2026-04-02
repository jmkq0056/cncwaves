package l;

import android.os.Handler;
import android.os.Looper;
import cn.huidu.lcd.core.entity.model.GetWeatherResult;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile p f2368e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f2369a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<b> f2370b = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<String> f2371c = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, GetWeatherResult> f2372d = Collections.synchronizedMap(new HashMap());

    public interface a {
        void k(GetWeatherResult getWeatherResult);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2373a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public WeakReference<a> f2374b;

        public b(String str, a aVar) {
            this.f2373a = str;
            this.f2374b = new WeakReference<>(aVar);
        }
    }
}
