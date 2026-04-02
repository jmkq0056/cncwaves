package v;

import android.content.DialogInterface;
import cn.huidu.lcd.player.PlayerActivity;
import cn.huidu.lcd.setting.SettingActivity;
import cn.huidu.lcd.setting.ui.EthNetWorkMonitorActivity;
import cn.huidu.lcd.setting.ui.OptionSettingMainActivity;
import cn.huidu.lcd.setting.ui.network.NetWorkMainActivity;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ c f3629b = new c(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ c f3630c = new c(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ c f3631d = new c(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ c f3632e = new c(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ c f3633f = new c(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ c f3634g = new c(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3635a;

    public /* synthetic */ c(int i4) {
        this.f3635a = i4;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        switch (this.f3635a) {
            case 0:
                int i5 = PlayerActivity.f381x;
                break;
            case 1:
                int i6 = SettingActivity.f501w;
                break;
            case 2:
                int i7 = EthNetWorkMonitorActivity.f591u;
                break;
            case 3:
                int i8 = OptionSettingMainActivity.f617l0;
                break;
            case 4:
                int i9 = OptionSettingMainActivity.f617l0;
                cn.huidu.lcd.core.util.a.b();
                break;
            default:
                int i10 = NetWorkMainActivity.f848s;
                break;
        }
    }
}
