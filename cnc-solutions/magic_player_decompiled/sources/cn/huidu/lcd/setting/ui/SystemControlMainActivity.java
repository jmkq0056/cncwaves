package cn.huidu.lcd.setting.ui;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import w0.a;

/* JADX INFO: loaded from: classes.dex */
public class SystemControlMainActivity extends BaseActivity implements View.OnFocusChangeListener, View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ int f663o = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayout f664k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f665l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f666m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f667n;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.brightness_set) {
            startActivity(new Intent(this, (Class<?>) BrightnessSettingMainActivity.class));
            return;
        }
        if (id == R$id.close_set) {
            startActivity(new Intent(this, (Class<?>) SwitchScreenSetMainActivity.class));
        } else if (id == R$id.close_machine_set) {
            startActivity(new Intent(this, (Class<?>) SwitchMachineSetMainActivity.class));
        } else if (id == R$id.audio_set) {
            startActivity(new Intent(this, (Class<?>) AudioSettingMainActivity.class));
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = a.b(this);
        if (a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                setContentView(R$layout.activity_system_control_main_barscreen);
            } else if (i4 < 360 || i4 >= 800) {
                setContentView(R$layout.activity_system_control_main);
            } else {
                setContentView(R$layout.activity_system_control_main_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 < 360) {
                setContentView(R$layout.activity_system_control_main_barscreen);
            } else if (i5 < 360 || i5 >= 800) {
                setContentView(R$layout.activity_system_control_main);
            } else {
                setContentView(R$layout.activity_system_control_main_barscreen);
            }
        }
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.brightness_set);
        this.f664k = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f664k.setOnFocusChangeListener(this);
        s(this.f664k, false);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.close_set);
        this.f665l = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f665l.setOnFocusChangeListener(this);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.close_machine_set);
        this.f666m = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f666m.setOnFocusChangeListener(this);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.audio_set);
        this.f667n = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.f667n.setOnFocusChangeListener(this);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        r(view, z3);
        s(view, z3);
        int id = view.getId();
        if (id == R$id.brightness_set) {
            j(view, z3);
        } else if (id == R$id.audio_set) {
            n(view, z3);
        }
    }
}
