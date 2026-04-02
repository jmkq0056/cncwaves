package cn.huidu.lcd.setting.ui.adapter;

import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.SettingActivity;
import cn.huidu.lcd.setting.ui.AboutUsMainActivity;
import cn.huidu.lcd.setting.ui.NetworkDiagnosisActivity;
import cn.huidu.lcd.setting.ui.OptionSettingMainActivity;
import cn.huidu.lcd.setting.ui.SystemControlMainActivity;
import cn.huidu.lcd.setting.ui.SystemLanguageSettingMainActivity;
import cn.huidu.lcd.setting.ui.SystemModeSettingMainActivity;
import cn.huidu.lcd.setting.ui.adapter.HomeAdapter;
import cn.huidu.lcd.setting.ui.network.NetWorkMainActivity;
import cn.huidu.lcd.setting.ui.network.WifiHotspotSetActivity;
import java.util.Objects;
import l.e;
import n.k;
import s.h;

/* JADX INFO: loaded from: classes.dex */
public class c implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HomeAdapter.b f815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HomeAdapter f816b;

    public c(HomeAdapter homeAdapter, HomeAdapter.b bVar) {
        this.f816b = homeAdapter;
        this.f815a = bVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        HomeAdapter.a aVar = this.f816b.f743c;
        int adapterPosition = this.f815a.getAdapterPosition();
        SettingActivity settingActivity = (SettingActivity) ((p.b) aVar).f2923b;
        int i4 = SettingActivity.f501w;
        Objects.requireNonNull(settingActivity);
        Log.d("SettingActivity", "onCreate: index->" + adapterPosition);
        if (adapterPosition == 0) {
            p.c.a(settingActivity, NetWorkMainActivity.class);
        } else {
            if (adapterPosition == 1) {
                p.c.a(settingActivity, SystemControlMainActivity.class);
            } else if (adapterPosition == 2) {
                p.c.a(settingActivity, OptionSettingMainActivity.class);
            } else if (adapterPosition == 3) {
                p.c.a(settingActivity, SystemModeSettingMainActivity.class);
            } else if (adapterPosition == 4) {
                p.c.a(settingActivity, WifiHotspotSetActivity.class);
            } else if (adapterPosition == 5) {
                p.c.a(settingActivity, SystemLanguageSettingMainActivity.class);
            } else if (adapterPosition == 6) {
                e.C(settingActivity);
            } else if (adapterPosition == 7) {
                k kVar = (k) l.b.c().a(k.class);
                if (kVar.f2663c != 0 || kVar.f2664d) {
                    n0.c.a(new AlertDialog.Builder(settingActivity).setMessage(R$string.confirm_clear_program).setNegativeButton(R$string.cancel, v.c.f3630c).setPositiveButton(R$string.confirm, new v.b(settingActivity)).create());
                } else {
                    Toast.makeText(settingActivity, settingActivity.getString(R$string.expansion_mode_can_not_clear_program), 0).show();
                }
            } else if (adapterPosition == 8) {
                if (settingActivity.f507p == null) {
                    settingActivity.f507p = new c0.a(1);
                }
                c0.a aVar2 = settingActivity.f507p;
                Objects.requireNonNull(aVar2);
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                boolean z3 = jElapsedRealtime - aVar2.f315b < ((long) RecyclerView.MAX_SCROLL_DURATION);
                aVar2.f315b = jElapsedRealtime;
                if (z3) {
                    h.a("reboot button click.");
                    cn.huidu.lcd.core.util.a.b();
                } else {
                    settingActivity.u(settingActivity.getString(R$string.press_again_to_reboot));
                }
            } else if (adapterPosition == 9) {
                p.c.a(settingActivity, NetworkDiagnosisActivity.class);
            } else if (adapterPosition == 10) {
                p.c.a(settingActivity, AboutUsMainActivity.class);
            }
        }
        a.a.a("onCreate: index--->", adapterPosition, "SettingActivity");
    }
}
