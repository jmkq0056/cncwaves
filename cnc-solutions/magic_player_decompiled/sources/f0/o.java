package f0;

import android.os.Message;
import cn.huidu.lcd.core.entity.model.GetWeatherResult;
import cn.huidu.lcd.render.model.WeatherNode;
import l.p;

/* JADX INFO: loaded from: classes.dex */
public abstract class o extends d0.h<WeatherNode> implements p.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public GetWeatherResult f1693p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1694q;

    public o(a0.g gVar) {
        super(gVar);
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        I();
    }

    @Override // d0.e
    public void G() {
        super.G();
        this.f1694q = true;
        this.f1489d.removeMessages(5);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void I() {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.o.I():void");
    }

    public abstract void J(GetWeatherResult getWeatherResult);

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        I();
    }

    @Override // l.p.a
    public void k(GetWeatherResult getWeatherResult) {
        if (this.f1694q) {
            return;
        }
        if (getWeatherResult.isWeatherChanged(this.f1693p)) {
            this.f1693p = getWeatherResult;
            J(getWeatherResult);
        }
        this.f1489d.removeMessages(5);
        this.f1489d.sendEmptyMessageDelayed(5, 5000L);
    }

    @Override // d0.d
    public void m() {
    }

    @Override // d0.e
    public void x() {
        D();
    }

    @Override // d0.e
    public void y(Message message) {
        if (message.what == 5) {
            I();
        } else {
            super.y(message);
        }
    }
}
