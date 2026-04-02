package l;

import cn.huidu.lcd.core.entity.model.GetWeatherResult;
import java.lang.ref.WeakReference;
import l.p;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class n implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2361a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2364d;

    public /* synthetic */ n(p pVar, String str, GetWeatherResult getWeatherResult) {
        this.f2362b = pVar;
        this.f2363c = str;
        this.f2364d = getWeatherResult;
    }

    public /* synthetic */ n(p0.a aVar, String str, byte[] bArr) {
        this.f2362b = aVar;
        this.f2363c = str;
        this.f2364d = bArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2361a) {
            case 0:
                p pVar = (p) this.f2362b;
                String str = this.f2363c;
                GetWeatherResult getWeatherResult = (GetWeatherResult) this.f2364d;
                pVar.f2371c.remove(str);
                pVar.f2372d.put(str, getWeatherResult);
                synchronized (pVar.f2370b) {
                    int i4 = 0;
                    while (i4 < pVar.f2370b.size()) {
                        p.b bVar = pVar.f2370b.get(i4);
                        if (str.equals(bVar.f2373a)) {
                            WeakReference<p.a> weakReference = bVar.f2374b;
                            p.a aVar = weakReference != null ? weakReference.get() : null;
                            if (aVar != null) {
                                aVar.k(getWeatherResult);
                            }
                            pVar.f2370b.remove(bVar);
                            i4--;
                        }
                        i4++;
                        break;
                    }
                    break;
                }
                return;
            default:
                ((p0.a) this.f2362b).l(this.f2363c, (byte[]) this.f2364d);
                return;
        }
    }
}
