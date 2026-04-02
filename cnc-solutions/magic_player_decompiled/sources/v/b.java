package v;

import android.content.DialogInterface;
import android.content.Intent;
import cn.huidu.lcd.player.PlayerActivity;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.SettingActivity;
import cn.huidu.lcd.setting.ui.EthNetWorkMonitorActivity;
import cn.huidu.lcd.setting.ui.network.NetWorkMainActivity;
import cn.huidu.lcd.setting.ui.network.WirelessNetworkSetActivity;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3627a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3628b;

    public /* synthetic */ b(PlayerActivity playerActivity) {
        this.f3628b = playerActivity;
    }

    public /* synthetic */ b(SettingActivity settingActivity) {
        this.f3628b = settingActivity;
    }

    public /* synthetic */ b(NetWorkMainActivity netWorkMainActivity) {
        this.f3628b = netWorkMainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        switch (this.f3627a) {
            case 0:
                PlayerActivity playerActivity = (PlayerActivity) this.f3628b;
                int i5 = PlayerActivity.f381x;
                playerActivity.finish();
                break;
            case 1:
                SettingActivity settingActivity = (SettingActivity) this.f3628b;
                int i6 = SettingActivity.f501w;
                Objects.requireNonNull(settingActivity);
                if (!q0.a.b()) {
                    settingActivity.u(settingActivity.getString(R$string.clear_program_failed));
                } else {
                    settingActivity.u(settingActivity.getString(R$string.clear_program_success));
                }
                break;
            case 2:
                EthNetWorkMonitorActivity ethNetWorkMonitorActivity = (EthNetWorkMonitorActivity) this.f3628b;
                int i7 = EthNetWorkMonitorActivity.f591u;
                ethNetWorkMonitorActivity.y();
                cn.huidu.lcd.core.util.a.b();
                break;
            default:
                NetWorkMainActivity netWorkMainActivity = (NetWorkMainActivity) this.f3628b;
                int i8 = NetWorkMainActivity.f848s;
                Objects.requireNonNull(netWorkMainActivity);
                netWorkMainActivity.startActivity(new Intent(netWorkMainActivity, (Class<?>) WirelessNetworkSetActivity.class));
                break;
        }
    }
}
