package i0;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1892c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<a> f1890a = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public cn.huidu.lcd.setting.keyboard.a f1893d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1894e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1895f = 0;

    public boolean a(cn.huidu.lcd.setting.keyboard.a aVar) {
        if (this.f1890a.isEmpty()) {
            return false;
        }
        List<a> list = this.f1890a;
        a aVar2 = list.get(list.size() - 1);
        if (aVar2 == null) {
            return false;
        }
        aVar2.f1883a.add(aVar);
        return true;
    }

    public a b(int i4) {
        return this.f1890a.get(i4);
    }

    public cn.huidu.lcd.setting.keyboard.a c(int i4, int i5) {
        cn.huidu.lcd.setting.keyboard.a aVar = this.f1893d;
        while (i4 < i5) {
            List<cn.huidu.lcd.setting.keyboard.a> list = b(i4).f1883a;
            for (int i6 = 0; i6 < list.size(); i6++) {
                cn.huidu.lcd.setting.keyboard.a aVar2 = list.get(i6);
                if (((int) aVar2.f542e) >= ((int) aVar.f542e) || ((int) aVar2.f543f) >= ((int) aVar.f543f)) {
                    this.f1895f = i6;
                    this.f1894e = i4;
                    return aVar2;
                }
            }
            i4++;
        }
        return null;
    }

    public cn.huidu.lcd.setting.keyboard.a d(int i4, int i5) {
        cn.huidu.lcd.setting.keyboard.a aVar = this.f1893d;
        while (i4 >= i5) {
            List<cn.huidu.lcd.setting.keyboard.a> list = b(i4).f1883a;
            for (int i6 = 0; i6 < list.size(); i6++) {
                cn.huidu.lcd.setting.keyboard.a aVar2 = list.get(i6);
                if (((int) aVar2.f542e) >= ((int) aVar.f542e) || ((int) aVar2.f543f) >= ((int) aVar.f543f)) {
                    this.f1895f = i6;
                    this.f1894e = i4;
                    return aVar2;
                }
            }
            i4--;
        }
        return null;
    }

    public int e() {
        List<a> list = this.f1890a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public boolean f(cn.huidu.lcd.setting.keyboard.a aVar) {
        cn.huidu.lcd.setting.keyboard.a aVar2;
        if (aVar == null && (aVar2 = this.f1893d) != null) {
            aVar2.f548k = false;
            return false;
        }
        aVar.f548k = true;
        this.f1893d = aVar;
        return true;
    }
}
