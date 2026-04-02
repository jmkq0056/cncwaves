package j0;

import cn.huidu.lcd.setting.ui.OptionSettingMainActivity;
import java.util.Objects;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OptionSettingMainActivity f1976b;

    public /* synthetic */ b(OptionSettingMainActivity optionSettingMainActivity, int i4) {
        this.f1975a = i4;
        this.f1976b = optionSettingMainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1975a) {
            case 0:
                this.f1976b.f628k.fullScroll(WKSRecord.Service.CISCO_FNA);
                break;
            case 1:
                OptionSettingMainActivity optionSettingMainActivity = this.f1976b;
                int childCount = optionSettingMainActivity.f628k.getChildCount();
                if (childCount > 0) {
                    optionSettingMainActivity.f628k.smoothScrollBy(0, optionSettingMainActivity.f628k.getChildAt(childCount - 1).getBottom());
                }
                break;
            default:
                OptionSettingMainActivity optionSettingMainActivity2 = this.f1976b;
                int i4 = OptionSettingMainActivity.f617l0;
                Objects.requireNonNull(optionSettingMainActivity2);
                l.b.c().d(optionSettingMainActivity2.V);
                break;
        }
    }
}
