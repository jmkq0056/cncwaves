package cn.huidu.lcd.setting.ui.view;

import android.graphics.Color;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.media.f;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.huidu.lcd.setting.R$color;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.SystemModeSettingMainActivity;
import cn.huidu.lcd.setting.ui.base.BaseFragment;
import l.b;
import n.c;
import n.d;
import n.k;
import w0.a;

/* JADX INFO: loaded from: classes.dex */
public class NetworkingModeFragment extends BaseFragment implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f997n = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SystemModeSettingMainActivity f998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public LinearLayout f999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinearLayout f1000e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LinearLayout f1001f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public LinearLayout f1002g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f1003h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FocusIndexEditText f1004i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public FocusIndexEditText f1005j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f1006k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CommonLoadingDialog f1007l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c f1008m;

    @Override // cn.huidu.lcd.setting.ui.base.BaseFragment
    public void b() {
        this.f998c = (SystemModeSettingMainActivity) this.f831a;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseFragment
    public void c(@Nullable Bundle bundle, @NonNull View view) {
        this.f998c.f820c = (ViewGroup) a(R$id.item_center_view);
        this.f998c.f821d = 80;
        this.f999d = (LinearLayout) a(R$id.content_main_view);
        LinearLayout linearLayout = (LinearLayout) a(R$id.system_mode_view);
        this.f1000e = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f1000e.setOnFocusChangeListener(this);
        this.f1000e.setScaleX(0.98f);
        this.f1000e.setBackgroundResource(R$drawable.bg_radius_434343);
        this.f998c.s(this.f1000e, false);
        LinearLayout linearLayout2 = (LinearLayout) a(R$id.ip_serve_item);
        this.f1001f = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f1001f.setOnFocusChangeListener(this);
        this.f1001f.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        FocusIndexEditText focusIndexEditText = (FocusIndexEditText) a(R$id.edt_server_path);
        this.f1004i = focusIndexEditText;
        focusIndexEditText.setCustomClickListener(this);
        LinearLayout linearLayout3 = (LinearLayout) a(R$id.user_name_item);
        this.f1002g = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f1002g.setOnFocusChangeListener(this);
        this.f1002g.setBackgroundColor(getResources().getColor(R$color.no_focus_bg_color));
        FocusIndexEditText focusIndexEditText2 = (FocusIndexEditText) a(R$id.edt_user_name);
        this.f1005j = focusIndexEditText2;
        focusIndexEditText2.setCustomClickListener(this);
        LinearLayout linearLayout4 = (LinearLayout) a(R$id.connect_state_item);
        this.f1003h = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.f1003h.setOnFocusChangeListener(this);
        this.f1003h.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
        this.f1006k = (TextView) a(R$id.tv_connect_state);
        Button button = (Button) a(R$id.set_query_btn);
        button.setOnClickListener(this);
        button.setOnFocusChangeListener(this);
        Button button2 = (Button) a(R$id.set_cancel_btn);
        button2.setOnClickListener(this);
        button2.setOnFocusChangeListener(this);
        c cVar = (c) b.c().a(c.class);
        this.f1008m = cVar;
        this.f1004i.setText(cVar.f2628d);
        this.f1005j.setText(this.f1008m.f2629e);
        e();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseFragment
    public Object d() {
        Point pointB = a.b(requireContext());
        if (a.d(requireContext())) {
            int i4 = pointB.y;
            return i4 < 360 ? Integer.valueOf(R$layout.networking_mode_fragment_layout_barscreen) : (i4 < 360 || i4 >= 800) ? Integer.valueOf(R$layout.networking_mode_fragment_layout) : Integer.valueOf(R$layout.networking_mode_fragment_layout_barscreen);
        }
        int i5 = pointB.x;
        return i5 < 360 ? Integer.valueOf(R$layout.networking_mode_fragment_layout_barscreen) : (i5 < 360 || i5 >= 800) ? Integer.valueOf(R$layout.networking_mode_fragment_layout) : Integer.valueOf(R$layout.networking_mode_fragment_layout_barscreen);
    }

    public final void e() {
        if (!this.f1008m.f2627c) {
            this.f1006k.setText(getString(R$string.not_register));
        } else if (l.c.a().G) {
            this.f1006k.setText(getString(R$string.connected));
        } else {
            this.f1006k.setText(getString(R$string.not_connected));
        }
    }

    public final void f(boolean z3) {
        TextView textView = this.f998c.f822e;
        if (textView != null) {
            if (z3) {
                textView.setTextColor(-1);
            } else {
                textView.setTextColor(Color.parseColor("#999999"));
            }
        }
    }

    public final void g(boolean z3) {
        if (z3) {
            CommonLoadingDialog commonLoadingDialogA = CommonLoadingDialog.a(getString(R$string.loading));
            this.f1007l = commonLoadingDialogA;
            commonLoadingDialogA.show(getFragmentManager(), "LoadingDialog");
        } else {
            CommonLoadingDialog commonLoadingDialog = this.f1007l;
            if (commonLoadingDialog != null) {
                commonLoadingDialog.dismissAllowingStateLoss();
                this.f1007l = null;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R$id.set_query_btn) {
            if (id == R$id.set_cancel_btn) {
                this.f998c.finish();
                return;
            }
            if (id == R$id.system_mode_view) {
                this.f998c.x();
                return;
            }
            int i4 = R$id.ip_serve_item;
            if (id == i4 || id == R$id.edt_server_path) {
                if (id == i4) {
                    FocusIndexEditText focusIndexEditText = this.f1004i;
                    focusIndexEditText.setSelection(focusIndexEditText.getTextString().length());
                }
                FocusIndexEditText focusIndexEditText2 = this.f1005j;
                focusIndexEditText2.setTextColor(Color.parseColor("#999999"));
                focusIndexEditText2.setCursorVisible(false);
                this.f998c.t(this.f1001f, this.f1004i);
                return;
            }
            int i5 = R$id.user_name_item;
            if (id != i5 && id != R$id.edt_user_name) {
                if (id == R$id.connect_state_item) {
                    e();
                    return;
                }
                return;
            }
            if (id == i5) {
                FocusIndexEditText focusIndexEditText3 = this.f1005j;
                focusIndexEditText3.setSelection(focusIndexEditText3.getTextString().length());
            }
            FocusIndexEditText focusIndexEditText4 = this.f1004i;
            focusIndexEditText4.setTextColor(Color.parseColor("#999999"));
            focusIndexEditText4.setCursorVisible(false);
            this.f998c.t(this.f1002g, this.f1005j);
            return;
        }
        String textString = this.f1004i.getTextString();
        String textString2 = this.f1005j.getTextString();
        if (TextUtils.isEmpty(textString)) {
            Toast.makeText(getContext(), R$string.error_empty_server_path, 0).show();
            return;
        }
        if (TextUtils.isEmpty(textString2)) {
            Toast.makeText(getContext(), R$string.error_empty_user_name, 0).show();
            return;
        }
        k kVar = this.f998c.f677n;
        StringBuilder sbA = f.a("onConfirmClick: mCloudConfig->");
        sbA.append(this.f1008m.toString());
        Log.d("NetworkingModeFragment", sbA.toString());
        if (textString.equals(this.f1008m.f2628d) && textString2.equals(this.f1008m.f2629e) && this.f1008m.f2627c && kVar.f2663c == 1) {
            StringBuilder sbA2 = f.a("onConfirmClick: 服务器配置无变化 返回 ");
            sbA2.append(this.f1008m.toString());
            Log.d("NetworkingModeFragment", sbA2.toString());
            this.f998c.finish();
            return;
        }
        kVar.f2663c = 1;
        b.c().d(kVar);
        c cVar = this.f1008m;
        cVar.f2628d = textString;
        cVar.f2629e = textString2;
        String str = ((d) b.c().a(d.class)).f2632d;
        g(true);
        Log.d("NetworkingModeFragment", "register: " + textString);
        s.k.g(textString, textString2, str, new p.b(this));
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
                this.f998c.m();
                f(false);
                return;
            }
            return;
        }
        this.f998c.r(view, z3);
        this.f998c.s(view, z3);
        int i4 = R$id.ip_serve_item;
        if (id == i4) {
            this.f998c.j(view, z3);
        } else if (id == R$id.connect_state_item) {
            this.f998c.n(view, z3);
        }
        if (id == R$id.system_mode_view) {
            if (!z3) {
                f(true);
                return;
            } else {
                this.f998c.m();
                f(false);
                return;
            }
        }
        if (id != i4 && id != R$id.user_name_item) {
            if (z3) {
                this.f998c.m();
                f(false);
                return;
            }
            return;
        }
        if (z3) {
            return;
        }
        if (this.f999d.findFocus() == null) {
            f(true);
        }
    }
}
