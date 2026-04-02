package s;

import cn.huidu.lcd.core.entity.model.CloudRegisterResult;
import s.k;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k.b f3414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CloudRegisterResult f3415c;

    public /* synthetic */ j(k.b bVar, CloudRegisterResult cloudRegisterResult, int i4) {
        this.f3413a = i4;
        this.f3414b = bVar;
        this.f3415c = cloudRegisterResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3413a) {
            case 0:
                this.f3414b.a(this.f3415c);
                break;
            default:
                this.f3414b.a(this.f3415c);
                break;
        }
    }
}
