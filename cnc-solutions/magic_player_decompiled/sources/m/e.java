package m;

import android.os.Process;
import cn.huidu.lcd.setting.ui.TimeSettingMainActivity;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ e f2472b = new e(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ e f2473c = new e(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2474a;

    public /* synthetic */ e(int i4) {
        this.f2474a = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2474a) {
            case 0:
                Process.setThreadPriority(10);
                break;
            default:
                int i4 = TimeSettingMainActivity.U;
                f.a().f(new byte[]{0, 0, 1});
                f.a().f(new byte[]{0, 10, 1});
                f.a().f(new byte[]{0, 6, 1});
                f.a().f(new byte[]{0, 24, 1});
                f.a().f(new byte[]{0, 7, 1});
                f.a().f(new byte[]{0, 25, 1});
                break;
        }
    }
}
