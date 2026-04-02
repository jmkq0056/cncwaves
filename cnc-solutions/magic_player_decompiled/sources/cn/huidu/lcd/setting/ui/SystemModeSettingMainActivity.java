package cn.huidu.lcd.setting.ui;

import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.media.f;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentTransaction;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import cn.huidu.lcd.setting.ui.view.LanModeFragment;
import cn.huidu.lcd.setting.ui.view.NetworkingModeFragment;
import cn.huidu.lcd.setting.ui.view.StandAloneModeFragment;
import i0.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import m0.b;
import m0.c;
import n.k;
import w0.a;

/* JADX INFO: loaded from: classes.dex */
public class SystemModeSettingMainActivity extends BaseActivity {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f673p = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public StandAloneModeFragment f674k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public NetworkingModeFragment f675l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LanModeFragment f676m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public k f677n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f678o;

    public final void A() {
        Point pointB = a.b(this);
        if (a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                this.f824g = R$xml.hd_qwerty_barscreen_250;
            } else if (i4 < 360 || i4 >= 800) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        } else {
            int i5 = pointB.x;
            if (i5 < 360) {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            } else if (i5 < 360 || i5 >= 720) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        if (this.f675l == null) {
            this.f675l = new NetworkingModeFragment();
        }
        if (!this.f675l.isAdded()) {
            fragmentTransactionBeginTransaction.add(R$id.main_set_view, this.f675l);
        }
        fragmentTransactionBeginTransaction.show(this.f675l);
        StandAloneModeFragment standAloneModeFragment = this.f674k;
        if (standAloneModeFragment != null && standAloneModeFragment.isAdded()) {
            fragmentTransactionBeginTransaction.hide(this.f674k);
        }
        LanModeFragment lanModeFragment = this.f676m;
        if (lanModeFragment != null && lanModeFragment.isAdded()) {
            fragmentTransactionBeginTransaction.hide(this.f676m);
        }
        fragmentTransactionBeginTransaction.commit();
    }

    public final void B() {
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        if (this.f674k == null) {
            this.f674k = new StandAloneModeFragment();
        }
        if (!this.f674k.isAdded()) {
            fragmentTransactionBeginTransaction.add(R$id.main_set_view, this.f674k);
        }
        fragmentTransactionBeginTransaction.show(this.f674k);
        NetworkingModeFragment networkingModeFragment = this.f675l;
        if (networkingModeFragment != null && networkingModeFragment.isAdded()) {
            fragmentTransactionBeginTransaction.hide(this.f675l);
        }
        LanModeFragment lanModeFragment = this.f676m;
        if (lanModeFragment != null && lanModeFragment.isAdded()) {
            fragmentTransactionBeginTransaction.hide(this.f676m);
        }
        fragmentTransactionBeginTransaction.commit();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void k(View view, TextView textView) {
        textView.setTextColor(-1);
        textView.setCursorVisible(true);
        this.f822e = textView;
        if (this.f823f == null) {
            this.f823f = new d();
        }
        this.f823f.a(this, this.f824g);
        int i4 = this.f678o;
        if (i4 == 0) {
            StandAloneModeFragment standAloneModeFragment = this.f674k;
            standAloneModeFragment.f1014c.f823f.f1886a.setOnSoftKeyBoardListener(new c(standAloneModeFragment, textView, view));
        } else if (i4 == 1) {
            NetworkingModeFragment networkingModeFragment = this.f675l;
            networkingModeFragment.f998c.f823f.f1886a.setOnSoftKeyBoardListener(new b(networkingModeFragment, textView, view));
        } else {
            LanModeFragment lanModeFragment = this.f676m;
            lanModeFragment.f987c.f823f.f1886a.setOnSoftKeyBoardListener(new m0.a(lanModeFragment, textView, view));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        super.onActivityResult(i4, i5, intent);
        if (i5 == 0) {
            return;
        }
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras != null && i4 == 0) {
            y(extras.getInt("switch"));
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = a.b(this);
        if (a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                setContentView(R$layout.activity_system_mode_setting_main_barscreen);
            } else if (i4 < 360 || i4 >= 800) {
                setContentView(R$layout.activity_system_mode_setting_main);
            } else {
                setContentView(R$layout.activity_system_mode_setting_main_barscreen);
            }
        } else {
            if (pointB.x < 360) {
                setContentView(R$layout.activity_system_mode_setting_main_barscreen);
            }
            int i5 = pointB.x;
            if (i5 < 360 || i5 >= 800) {
                setContentView(R$layout.activity_system_mode_setting_main);
            } else {
                setContentView(R$layout.activity_system_mode_setting_main_barscreen);
            }
        }
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        this.f820c = (ViewGroup) findViewById(R$id.main_set_view);
        k kVar = (k) l.b.c().a(k.class);
        this.f677n = kVar;
        this.f678o = kVar.f2663c;
        StringBuilder sbA = f.a("initData: useSystemMode->");
        sbA.append(this.f678o);
        Log.d("SystemModeActivity", sbA.toString());
        Point pointB2 = a.b(this);
        if (a.d(this)) {
            int i6 = pointB2.y;
            if (i6 < 360) {
                this.f824g = R$xml.hd_number_250;
            } else if (i6 < 360 || i6 >= 800) {
                this.f824g = R$xml.hd_nine_number;
            }
        } else {
            int i7 = pointB2.x;
            if (i7 < 360) {
                this.f824g = R$xml.hd_nine_number_barscreen;
            } else if (i7 < 360 || i7 >= 720) {
                this.f824g = R$xml.hd_nine_number;
            } else {
                this.f824g = R$xml.hd_nine_number_barscreen;
            }
        }
        int i8 = this.f678o;
        if (i8 == 0) {
            B();
        } else if (i8 == 1) {
            A();
        } else {
            z();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        int i5 = this.f678o;
        char c4 = 0;
        c = 0;
        char c5 = 0;
        c = 0;
        char c6 = 0;
        c4 = 0;
        if (i5 == 0) {
            StandAloneModeFragment standAloneModeFragment = this.f674k;
            Objects.requireNonNull(standAloneModeFragment);
            if (i4 == 21 || i4 == 22) {
                if (standAloneModeFragment.f1015d.isFocused()) {
                    SystemModeSettingMainActivity systemModeSettingMainActivity = standAloneModeFragment.f1014c;
                    systemModeSettingMainActivity.y(systemModeSettingMainActivity.f678o);
                } else if (standAloneModeFragment.f1016e.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1016e, true, i4 == 22);
                    if (standAloneModeFragment.A == 0) {
                        standAloneModeFragment.A = 1;
                    } else {
                        standAloneModeFragment.A = 0;
                    }
                    k kVar = standAloneModeFragment.f1014c.f677n;
                    int i6 = standAloneModeFragment.A;
                    kVar.f2664d = i6 == 0;
                    standAloneModeFragment.f1024m.setText(standAloneModeFragment.f1032u.get(i6));
                    standAloneModeFragment.h(standAloneModeFragment.A == 0);
                } else if (standAloneModeFragment.f1017f.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1017f, true, i4 == 22);
                    if (i4 == 22) {
                        int i7 = standAloneModeFragment.B + 1;
                        standAloneModeFragment.B = i7;
                        standAloneModeFragment.B = i7 != standAloneModeFragment.f1033v.size() ? standAloneModeFragment.B : 0;
                    } else {
                        int size = standAloneModeFragment.B - 1;
                        standAloneModeFragment.B = size;
                        if (size < 0) {
                            size = standAloneModeFragment.f1033v.size() - 1;
                        }
                        standAloneModeFragment.B = size;
                    }
                    standAloneModeFragment.f1014c.f677n.f2665e = standAloneModeFragment.f(standAloneModeFragment.B);
                    standAloneModeFragment.f1025n.setText(standAloneModeFragment.f1033v.get(standAloneModeFragment.B));
                } else if (standAloneModeFragment.f1018g.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1018g, true, i4 == 22);
                    standAloneModeFragment.e();
                } else if (standAloneModeFragment.f1019h.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1019h, true, i4 == 22);
                    if (i4 == 22) {
                        int i8 = standAloneModeFragment.D + 1;
                        standAloneModeFragment.D = i8;
                        if (i8 == standAloneModeFragment.f1035x.size()) {
                            standAloneModeFragment.D = 0;
                        }
                    } else {
                        int i9 = standAloneModeFragment.D - 1;
                        standAloneModeFragment.D = i9;
                        if (i9 < 0) {
                            standAloneModeFragment.D = standAloneModeFragment.f1035x.size() - 1;
                        }
                    }
                    k kVar2 = standAloneModeFragment.f1014c.f677n;
                    int i10 = standAloneModeFragment.D;
                    kVar2.f2666f = i10;
                    standAloneModeFragment.f1027p.setText(standAloneModeFragment.f1035x.get(i10));
                } else if (standAloneModeFragment.f1020i.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1020i, true, i4 == 22);
                    if (i4 == 22) {
                        int i11 = standAloneModeFragment.E + 1;
                        standAloneModeFragment.E = i11;
                        if (i11 == standAloneModeFragment.f1036y.size()) {
                            standAloneModeFragment.E = 0;
                        }
                    } else {
                        int i12 = standAloneModeFragment.E - 1;
                        standAloneModeFragment.E = i12;
                        if (i12 < 0) {
                            standAloneModeFragment.E = standAloneModeFragment.f1036y.size() - 1;
                        }
                    }
                    int i13 = standAloneModeFragment.E;
                    standAloneModeFragment.f1014c.f677n.f2667g = i13 == 0 ? 100 : i13 - 1;
                    standAloneModeFragment.f1028q.setText(standAloneModeFragment.f1036y.get(i13));
                } else if (standAloneModeFragment.f1023l.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1023l, true, i4 == 22);
                    standAloneModeFragment.i(!standAloneModeFragment.H);
                }
                c5 = 1;
            }
            if (c5 != 0) {
                return true;
            }
        } else if (i5 == 1) {
            NetworkingModeFragment networkingModeFragment = this.f675l;
            Objects.requireNonNull(networkingModeFragment);
            if ((i4 == 21 || i4 == 22) && networkingModeFragment.f1000e.isFocused()) {
                SystemModeSettingMainActivity systemModeSettingMainActivity2 = networkingModeFragment.f998c;
                systemModeSettingMainActivity2.y(systemModeSettingMainActivity2.f678o);
                c6 = 1;
            }
            if (c6 != 0) {
                return true;
            }
        } else {
            LanModeFragment lanModeFragment = this.f676m;
            Objects.requireNonNull(lanModeFragment);
            if (i4 == 21 || i4 == 22) {
                if (lanModeFragment.f989e.isFocused()) {
                    SystemModeSettingMainActivity systemModeSettingMainActivity3 = lanModeFragment.f987c;
                    systemModeSettingMainActivity3.y(systemModeSettingMainActivity3.f678o);
                } else if (lanModeFragment.f990f.isFocused()) {
                    lanModeFragment.f987c.q(lanModeFragment.f990f, true, i4 == 22);
                    boolean z3 = !lanModeFragment.f995k;
                    lanModeFragment.f995k = z3;
                    lanModeFragment.f992h.setText(lanModeFragment.getString(z3 ? R$string.open : R$string.close));
                }
                c4 = 1;
            }
            if (c4 != 0) {
                return true;
            }
        }
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        int i5 = this.f678o;
        boolean z3 = false;
        if (i5 == 0) {
            StandAloneModeFragment standAloneModeFragment = this.f674k;
            Objects.requireNonNull(standAloneModeFragment);
            if (i4 == 21 || i4 == 22) {
                if (standAloneModeFragment.f1016e.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1016e, false, i4 == 22);
                } else if (standAloneModeFragment.f1017f.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1017f, false, i4 == 22);
                } else if (standAloneModeFragment.f1019h.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1019h, false, i4 == 22);
                } else if (standAloneModeFragment.f1020i.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1020i, false, i4 == 22);
                } else if (standAloneModeFragment.f1018g.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1018g, false, i4 == 22);
                } else if (standAloneModeFragment.f1023l.isFocused()) {
                    standAloneModeFragment.f1014c.q(standAloneModeFragment.f1023l, false, i4 == 22);
                }
                z3 = true;
            }
            if (z3) {
                return true;
            }
        } else if (i5 == 1) {
            Objects.requireNonNull(this.f675l);
        } else {
            LanModeFragment lanModeFragment = this.f676m;
            Objects.requireNonNull(lanModeFragment);
            if ((i4 == 21 || i4 == 22) && lanModeFragment.f990f.isFocused()) {
                lanModeFragment.f987c.q(lanModeFragment.f990f, false, i4 == 22);
                z3 = true;
            }
            if (z3) {
                return true;
            }
        }
        return super.onKeyUp(i4, keyEvent);
    }

    public void x() {
        ArrayList<String> arrayList = new ArrayList<>(Arrays.asList(getResources().getString(R$string.stand_alone), getResources().getString(R$string.network), getResources().getString(R$string.lan_mode)));
        Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("title", getString(R$string.system_mode));
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, this.f678o);
        bundle.putStringArrayList("List", arrayList);
        intent.putExtras(bundle);
        startActivityForResult(intent, 0);
    }

    public void y(int i4) {
        this.f678o = i4;
        if (i4 == 0) {
            B();
        } else if (i4 == 1) {
            A();
        } else {
            z();
        }
    }

    public final void z() {
        Point pointB = a.b(this);
        if (a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                this.f824g = R$xml.hd_qwerty_barscreen_250;
            } else if (i4 < 360 || i4 >= 800) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        } else {
            int i5 = pointB.x;
            if (i5 < 360) {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            } else if (i5 < 360 || i5 >= 720) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        if (this.f676m == null) {
            this.f676m = new LanModeFragment();
        }
        if (!this.f676m.isAdded()) {
            fragmentTransactionBeginTransaction.add(R$id.main_set_view, this.f676m);
        }
        fragmentTransactionBeginTransaction.show(this.f676m);
        StandAloneModeFragment standAloneModeFragment = this.f674k;
        if (standAloneModeFragment != null && standAloneModeFragment.isAdded()) {
            fragmentTransactionBeginTransaction.hide(this.f674k);
        }
        NetworkingModeFragment networkingModeFragment = this.f675l;
        if (networkingModeFragment != null && networkingModeFragment.isAdded()) {
            fragmentTransactionBeginTransaction.hide(this.f675l);
        }
        fragmentTransactionBeginTransaction.commit();
    }
}
