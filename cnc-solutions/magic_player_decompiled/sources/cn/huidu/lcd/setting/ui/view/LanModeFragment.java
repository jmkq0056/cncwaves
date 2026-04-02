package cn.huidu.lcd.setting.ui.view;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.media.f;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.SystemModeSettingMainActivity;
import cn.huidu.lcd.setting.ui.base.BaseFragment;
import h.a;
import java.util.ArrayList;
import l.b;
import l.c;
import n.g;
import n.k;

/* JADX INFO: loaded from: classes.dex */
public class LanModeFragment extends BaseFragment implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f986m = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SystemModeSettingMainActivity f987c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LinearLayout f988d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinearLayout f989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LinearLayout f990f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LinearLayout f991g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f992h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f993i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f994j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f995k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ArrayList<String> f996l;

    @Override // cn.huidu.lcd.setting.ui.base.BaseFragment
    public void b() {
        SystemModeSettingMainActivity systemModeSettingMainActivity = (SystemModeSettingMainActivity) this.f831a;
        this.f987c = systemModeSettingMainActivity;
        this.f996l = a.H(systemModeSettingMainActivity);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseFragment
    public void c(@Nullable Bundle bundle, @NonNull View view) {
        this.f987c.f820c = (ViewGroup) a(R$id.item_center_view);
        this.f987c.f821d = 80;
        this.f988d = (LinearLayout) a(R$id.content_main_view);
        LinearLayout linearLayout = (LinearLayout) a(R$id.system_mode_view);
        this.f989e = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f989e.setOnFocusChangeListener(this);
        this.f989e.setScaleX(0.98f);
        this.f989e.setBackgroundResource(R$drawable.bg_radius_434343);
        this.f987c.s(this.f989e, false);
        LinearLayout linearLayout2 = (LinearLayout) a(R$id.item_lock_mode);
        this.f990f = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f990f.setOnFocusChangeListener(this);
        this.f990f.setScaleX(0.98f);
        this.f992h = (TextView) a(R$id.tv_lock_mode);
        LinearLayout linearLayout3 = (LinearLayout) a(R$id.uuid_item);
        int i4 = R$drawable.bg_stroke_radius_bottom_434343;
        linearLayout3.setBackgroundResource(i4);
        this.f993i = (TextView) a(R$id.tv_uuid);
        LinearLayout linearLayout4 = (LinearLayout) a(R$id.connect_state_item);
        this.f991g = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.f991g.setOnFocusChangeListener(this);
        this.f991g.setBackgroundResource(i4);
        this.f994j = (TextView) a(R$id.tv_connect_state);
        Button button = (Button) a(R$id.set_query_btn);
        button.setOnClickListener(this);
        button.setOnFocusChangeListener(this);
        Button button2 = (Button) a(R$id.set_cancel_btn);
        button2.setOnClickListener(this);
        button2.setOnFocusChangeListener(this);
        g gVar = (g) b.c().a(g.class);
        boolean z3 = gVar.f2647c;
        this.f995k = z3;
        this.f992h.setText(getString(z3 ? R$string.open : R$string.close));
        this.f993i.setText(gVar.f2649e);
        e();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseFragment
    public Object d() {
        Point pointB = w0.a.b(requireContext());
        if (w0.a.d(requireContext())) {
            int i4 = pointB.y;
            return i4 < 360 ? Integer.valueOf(R$layout.lan_mode_fragment_layout_batscreen) : (i4 < 360 || i4 >= 800) ? Integer.valueOf(R$layout.lan_mode_fragment_layout) : Integer.valueOf(R$layout.lan_mode_fragment_layout_batscreen);
        }
        if (pointB.y < 360) {
            return Integer.valueOf(R$layout.lan_mode_fragment_layout_batscreen);
        }
        int i5 = pointB.x;
        return (i5 < 360 || i5 >= 800) ? Integer.valueOf(R$layout.lan_mode_fragment_layout) : Integer.valueOf(R$layout.lan_mode_fragment_layout_batscreen);
    }

    public final void e() {
        if (c.a().H) {
            this.f994j.setText(getString(R$string.connected));
        } else {
            this.f994j.setText(getString(R$string.not_connected));
        }
    }

    public final void f(boolean z3) {
        TextView textView = this.f987c.f822e;
        if (textView != null) {
            if (z3) {
                textView.setTextColor(-1);
            } else {
                textView.setTextColor(Color.parseColor("#999999"));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        super.onActivityResult(i4, i5, intent);
        if (i5 == 0) {
            return;
        }
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras == null) {
            return;
        }
        int i6 = extras.getInt("switch");
        if (i4 == 2) {
            if ((!this.f995k ? 1 : 0) != i6) {
                boolean z3 = i6 == 0;
                this.f995k = z3;
                this.f992h.setText(getString(z3 ? R$string.open : R$string.close));
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R$id.set_query_btn) {
            if (id == R$id.set_cancel_btn) {
                this.f987c.finish();
                return;
            }
            if (id == R$id.system_mode_view) {
                this.f987c.x();
                return;
            }
            if (id != R$id.item_lock_mode) {
                if (id == R$id.connect_state_item) {
                    e();
                    return;
                }
                return;
            }
            String string = getString(R$string.lock_mode);
            ArrayList<String> arrayList = this.f996l;
            int i4 = 1 ^ (this.f995k ? 1 : 0);
            Intent intent = new Intent(this.f987c, (Class<?>) ItemsListSelectActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("title", string);
            bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i4);
            bundle.putStringArrayList("List", arrayList);
            intent.putExtras(bundle);
            startActivityForResult(intent, 2);
            return;
        }
        g gVar = (g) b.c().a(g.class);
        k kVar = this.f987c.f677n;
        StringBuilder sbA = f.a("getStatusCode->");
        sbA.append(gVar.f2652h);
        sbA.append(" isLocking-->");
        sbA.append(gVar.f2647c);
        sbA.append(" mShowLock->");
        sbA.append(this.f995k);
        sbA.append(" config.getNetworkMode()->");
        androidx.media.b.a(sbA, kVar.f2663c, "LanModeFragment");
        if (gVar.f2652h == 0) {
            Toast.makeText(requireContext(), getString(R$string.server_not_connected), 0).show();
        }
        if (gVar.f2652h == 1 && gVar.f2647c == this.f995k && kVar.f2663c == 2) {
            this.f987c.finish();
            return;
        }
        if (c.a().H || c.a().G) {
            Log.d("LanModeFragment", "closeMqttMsgClient: +++ ");
            p0.a.j().g();
        }
        p0.a.j().f2981l = 1;
        p0.a.j().k();
        kVar.f2663c = 2;
        kVar.f2664d = true;
        gVar.f2647c = this.f995k;
        gVar.f2652h = c.a().H ? 1 : 0;
        b.c().d(kVar);
        b.c().d(gVar);
        this.f987c.finish();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        int id = view.getId();
        if (id == R$id.set_query_btn || id == R$id.set_cancel_btn) {
            view.setBackgroundResource(z3 ? R$drawable.bg_btn_radius_3399ff : R$drawable.bg_btn_radius_434343);
            if (z3) {
                this.f987c.m();
                f(false);
                return;
            }
            return;
        }
        this.f987c.r(view, z3);
        this.f987c.s(view, z3);
        int i4 = R$id.ip_serve_item;
        if (id == i4) {
            this.f987c.j(view, z3);
        } else if (id == R$id.connect_state_item) {
            this.f987c.n(view, z3);
        }
        if (id == R$id.system_mode_view) {
            if (!z3) {
                f(true);
                return;
            } else {
                this.f987c.m();
                f(false);
                return;
            }
        }
        if (id != i4 && id != R$id.user_name_item) {
            if (z3) {
                this.f987c.m();
                f(false);
                return;
            }
            return;
        }
        if (z3) {
            return;
        }
        if (this.f988d.findFocus() == null) {
            f(true);
        }
    }
}
