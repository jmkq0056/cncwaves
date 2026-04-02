package cn.huidu.lcd.setting.ui.network;

import android.os.Bundle;
import cn.huidu.lcd.setting.R$string;
import f.e;
import f.f;
import f.g;
import h.a;
import java.util.Objects;
import l.c;

/* JADX INFO: loaded from: classes.dex */
public class WiredNetworkSetActivity extends NetworkInfoSetBaseActivity {
    public f J;

    @Override // cn.huidu.lcd.setting.ui.network.NetworkInfoSetBaseActivity
    public void B() {
        if (this.f872y) {
            String string = this.f865r.getText().toString();
            String string2 = this.f866s.getText().toString();
            String string3 = this.f867t.getText().toString();
            String string4 = this.f868u.getText().toString();
            if (!a.d0(string)) {
                u(getString(R$string.input_right_ip));
                return;
            }
            if (!a.d0(string2)) {
                u(getString(R$string.input_right_mask));
                return;
            }
            if (!a.d0(string3)) {
                u(getString(R$string.input_right_gateway));
                return;
            }
            if (!a.d0(string4)) {
                u(getString(R$string.input_right_dns));
                return;
            }
            f fVar = this.J;
            Objects.requireNonNull(fVar);
            g gVar = new g();
            gVar.f1622a = false;
            gVar.f1623b = string;
            gVar.f1624c = string2;
            gVar.f1625d = string3;
            gVar.f1626e = string4;
            fVar.f(gVar);
        } else {
            f fVar2 = this.J;
            Objects.requireNonNull(fVar2);
            g gVar2 = new g();
            gVar2.f1622a = true;
            fVar2.f(gVar2);
        }
        c.a().f(getApplicationContext());
        finish();
    }

    @Override // cn.huidu.lcd.setting.ui.network.NetworkInfoSetBaseActivity, cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // cn.huidu.lcd.setting.ui.network.NetworkInfoSetBaseActivity
    public void z() {
        this.f873z = true;
        f fVarA = e.a(this);
        this.J = fVarA;
        this.f872y = fVarA.d();
        g gVarB = this.J.b();
        this.E = gVarB.f1623b;
        this.F = gVarB.f1624c;
        this.G = gVarB.f1625d;
        this.H = gVarB.f1626e;
        g gVarC = this.J.c();
        this.A = gVarC.f1623b;
        this.B = gVarC.f1624c;
        this.C = gVarC.f1625d;
        this.D = gVarC.f1626e;
    }
}
