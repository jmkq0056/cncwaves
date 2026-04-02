package l;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import cn.huidu.lcd.core.entity.model.GetWeatherResult;
import java.util.Objects;
import s.f;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class o implements f.a, z.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f2365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2367c;

    public /* synthetic */ o(p pVar, int i4, String str) {
        this.f2365a = pVar;
        this.f2366b = i4;
        this.f2367c = str;
    }

    public /* synthetic */ o(z.a aVar, String str, int i4) {
        this.f2365a = aVar;
        this.f2367c = str;
        this.f2366b = i4;
    }

    public void a(GetWeatherResult getWeatherResult) {
        p pVar = (p) this.f2365a;
        int i4 = this.f2366b;
        String str = this.f2367c;
        Objects.requireNonNull(pVar);
        Log.d("WeatherManager", "result code: " + getWeatherResult.getErrorCode() + ", " + getWeatherResult.getStatus());
        getWeatherResult.setReplyTime(SystemClock.elapsedRealtime());
        if (getWeatherResult.isSuccess()) {
            getWeatherResult.setFailCount(0);
        } else {
            getWeatherResult.setFailCount(i4 + 1);
        }
        pVar.f2369a.post(new n(pVar, str, getWeatherResult));
    }

    @Override // z.c
    public void b(Bitmap bitmap) {
        z.a aVar = (z.a) this.f2365a;
        String str = this.f2367c;
        int i4 = this.f2366b;
        synchronized (aVar.f4169a) {
            if (str != null) {
                try {
                    String str2 = aVar.f4173e;
                    if (str2 != null && !str.equals(str2)) {
                        Log.d("AsyncImageProvider", "loadImageAsync:: invalid result, source id is changed!");
                        return;
                    }
                } finally {
                }
            }
            if (bitmap != null) {
                aVar.f4170b.put(Integer.valueOf(i4), bitmap);
                aVar.f4171c.put(i4, 2);
            } else {
                aVar.f4171c.put(i4, 3);
            }
        }
    }
}
