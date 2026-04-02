package p;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Handler;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f extends e<Integer, a> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f2938g = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public WifiManager f2939f;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List<o.g> f2940a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f2941b;
    }

    public f(Context context, Handler handler, int i4) {
        super(handler, i4);
        this.f2939f = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }
}
