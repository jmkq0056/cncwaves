package cn.huidu.lcd.setting.ui;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.g;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.view.CommonSelectTypeMainActivity;
import cn.huidu.lcd.setting.ui.view.FocusIndexEditText;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import cn.huidu.lcd.setting.ui.view.SlideItemListSelectActivity;
import cn.huidu.lcd.setting.ui.view.SystemDateInputActivity;
import j.n;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import l.b;
import m.f;
import org.greenrobot.eventbus.ThreadMode;
import q.l;
import r.e;

/* JADX INFO: loaded from: classes.dex */
public class TimeSettingMainActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {
    public static final /* synthetic */ int U = 0;
    public TextView A;
    public TextView B;
    public TextView C;
    public TextView D;
    public TextView E;
    public TextView F;
    public TextView G;
    public TextView H;
    public l I;
    public n.l J;
    public boolean K;
    public int L;
    public String M;
    public a N;
    public boolean O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public boolean T;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayout f679k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public LinearLayout f680l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public LinearLayout f681m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearLayout f682n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public LinearLayout f683o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public LinearLayout f684p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public LinearLayout f685q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public LinearLayout f686r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public LinearLayout f687s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public LinearLayout f688t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public LinearLayout f689u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public TextView f690v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public TextView f691w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public TextView f692x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public TextView f693y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public FocusIndexEditText f694z;

    public static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference<TimeSettingMainActivity> f695a;

        public a(TimeSettingMainActivity timeSettingMainActivity) {
            super(Looper.getMainLooper());
            this.f695a = new WeakReference<>(timeSettingMainActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            TimeSettingMainActivity timeSettingMainActivity = this.f695a.get();
            if (timeSettingMainActivity != null && message.what == 10000) {
                if (timeSettingMainActivity.K || timeSettingMainActivity.L == 2) {
                    timeSettingMainActivity.z();
                }
                timeSettingMainActivity.N.sendEmptyMessageDelayed(10000, 3000L);
            }
        }
    }

    public final void A(boolean z3) {
        if (!z3) {
            this.f689u.setVisibility(8);
            this.f686r.setNextFocusDownId(R$id.item_rf_channel);
            this.f687s.setNextFocusUpId(R$id.item_rf_service_client);
            return;
        }
        this.f689u.setVisibility(0);
        if (!this.O) {
            this.f689u.setVisibility(8);
        }
        LinearLayout linearLayout = this.f686r;
        int i4 = R$id.item_rtt;
        linearLayout.setNextFocusDownId(i4);
        this.f687s.setNextFocusUpId(i4);
    }

    public final void B() {
        this.C.setText(getString(this.O ? R$string.open : R$string.close));
        H(this.O);
    }

    public final void C() {
        Log.d("TimeSettingMainActivity", "saveTimeConfig: ");
        if (this.K) {
            this.J.f2674e = this.f694z.getTextString();
            e.d().g(this.J.f2674e);
        }
        this.J.f2682m = y();
        n.l lVar = this.J;
        lVar.f2677h = this.O;
        lVar.f2678i = this.P;
        lVar.f2681l = this.S;
        lVar.f2679j = this.Q;
        lVar.f2680k = this.R;
        b.c().d(this.J);
    }

    public final void D(String str, String str2, String str3, int i4) {
        Intent intent = new Intent(this, (Class<?>) SystemDateInputActivity.class);
        Bundle bundle = new Bundle();
        bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i4);
        bundle.putString("first_item", str);
        bundle.putString("second_item", str2);
        bundle.putString("third_item", str3);
        intent.putExtras(bundle);
        startActivityForResult(intent, i4);
    }

    public final void E(int i4) {
        if (i4 == 0) {
            this.B.setText(getString(R$string.close));
        } else if (i4 == 1) {
            this.B.setText(getString(R$string.as_server_device));
        } else if (i4 == 2) {
            this.B.setText(getString(R$string.as_client_device));
        }
    }

    public final void F(int i4) {
        if (i4 == 1) {
            this.D.setText(getString(R$string.as_server_device));
        } else if (i4 == 2) {
            this.D.setText(getString(R$string.as_client_device));
        }
    }

    public final void G(boolean z3) {
        if (z3) {
            this.f680l.setVisibility(0);
            LinearLayout linearLayout = this.f679k;
            int i4 = R$id.ntp_item;
            linearLayout.setNextFocusDownId(i4);
            this.f681m.setNextFocusUpId(i4);
            s(this.f682n, false);
            s(this.f683o, false);
        } else {
            this.f680l.setVisibility(8);
            this.f679k.setNextFocusDownId(R$id.zone_item);
            this.f681m.setNextFocusUpId(R$id.mode_main_view);
            v(this.f682n, false);
            v(this.f683o, false);
        }
        this.f682n.setClickable(!z3);
        this.f682n.setFocusable(!z3);
        this.f683o.setClickable(!z3);
        this.f683o.setFocusable(!z3);
    }

    public final void H(boolean z3) {
        if (!z3) {
            this.f686r.setVisibility(8);
            this.f689u.setVisibility(8);
            this.f687s.setVisibility(8);
            this.f688t.setVisibility(8);
            return;
        }
        this.f686r.setVisibility(0);
        this.f689u.setVisibility(0);
        if (this.P == 2) {
            this.f689u.setVisibility(8);
        }
        this.f687s.setVisibility(0);
        this.f688t.setVisibility(0);
    }

    @Override // android.app.Activity
    public void finish() {
        Log.d("TimeSettingMainActivity", "openRFWorkMode: " + cn.huidu.lcd.core.util.a.f(1));
        if (!this.O) {
            f.a().e();
        }
        super.finish();
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void i() {
        C();
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        int i6;
        super.onActivityResult(i4, i5, intent);
        if (i5 != -1) {
            return;
        }
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras == null) {
            return;
        }
        if (i4 == 0) {
            int i7 = extras.getInt("switch");
            boolean z3 = this.K;
            if ((!z3 ? 1 : 0) != i7) {
                this.K = !z3;
                x();
                return;
            }
            return;
        }
        if (i4 == 2) {
            String string = extras.getString("first_item");
            String string2 = extras.getString("second_item");
            String string3 = extras.getString("third_item");
            if (string != null && string2 != null && string3 != null) {
                l lVar = this.I;
                int i8 = Integer.parseInt(string);
                int i9 = Integer.parseInt(string2) - 1;
                int i10 = Integer.parseInt(string3);
                Objects.requireNonNull(lVar);
                Calendar calendar = Calendar.getInstance();
                calendar.set(1, i8);
                calendar.set(2, i9);
                calendar.set(5, i10);
                l.a(calendar.getTimeInMillis(), lVar.f3098a);
                h.a.C0();
            }
            z();
            return;
        }
        if (i4 == 3) {
            String string4 = extras.getString("first_item");
            String string5 = extras.getString("second_item");
            if (string4 != null && string5 != null) {
                l lVar2 = this.I;
                int i11 = Integer.parseInt(string4);
                int i12 = Integer.parseInt(string5);
                Objects.requireNonNull(lVar2);
                Calendar calendar2 = Calendar.getInstance();
                calendar2.set(11, i11);
                calendar2.set(12, i12);
                calendar2.set(13, 0);
                calendar2.set(14, 0);
                l.a(calendar2.getTimeInMillis(), lVar2.f3098a);
                h.a.C0();
            }
            z();
            return;
        }
        if (i4 == 1) {
            o.b bVar = (o.b) extras.getSerializable("ser_info");
            if (bVar != null) {
                this.J.f2673d = bVar.f2810c;
                b.c().d(this.J);
                this.I.b(bVar.f2810c);
                this.f691w.setText(String.format("%s,%s", bVar.f2811d, bVar.f2808a));
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
            z();
            return;
        }
        if (i4 == 4) {
            int i13 = extras.getInt("switch");
            if (i13 != this.L) {
                this.L = i13;
                E(i13);
                if (this.L != 0 && this.O) {
                    this.O = false;
                    B();
                }
                this.J.f2676g = i13;
                e.d().f(y(), this.L, this.O, this.P);
                z();
                return;
            }
            return;
        }
        if (i4 == 5) {
            boolean z4 = extras.getInt("switch") == 0;
            if (z4 != this.O) {
                this.O = z4;
                B();
                if (this.O && this.L != 0) {
                    this.L = 0;
                    this.J.f2676g = 0;
                    E(0);
                }
                e.d().f(y(), this.L, this.O, this.P);
                z();
                return;
            }
            return;
        }
        if (i4 == 6) {
            int i14 = extras.getInt("switch") == 0 ? 1 : 2;
            if (i14 != this.P) {
                this.P = i14;
                F(i14);
                A(this.P == 1);
                f.a().f(new byte[]{-128, 10, 1, (byte) ((this.P == 1 ? 1 : 0) ^ 1)});
                e.d().f(y(), this.L, this.O, this.P);
                return;
            }
            return;
        }
        if (i4 == 7) {
            int i15 = Integer.parseInt(extras.getString("name"));
            if (i15 != this.S) {
                this.S = i15;
                this.G.setText(i15 + "ms");
                e.d().h(this.S);
                return;
            }
            return;
        }
        if (i4 != 8) {
            if (i4 != 9 || (i6 = Integer.parseInt(extras.getString("name"))) == this.R) {
                return;
            }
            this.R = i6;
            this.F.setText("" + i6);
            f.a().f(new byte[]{-128, 24, 1, (byte) i6});
            return;
        }
        int i16 = Integer.parseInt(extras.getString("name"));
        if (i16 != this.Q) {
            this.Q = i16;
            this.E.setText("" + i16);
            short s3 = (short) ((i16 << 5) | 26);
            f.a().f(new byte[]{-128, 6, 1, (byte) ((s3 >> 8) & 255), (byte) (s3 & 255)});
        }
    }

    @SuppressLint({"SetTextI18n"})
    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(n nVar) {
        if (nVar == null) {
            return;
        }
        int i4 = nVar.f1950b;
        if (!(i4 == 0 || i4 == 128)) {
            int i5 = nVar.f1949a;
            Toast.makeText(this, i5 != 0 ? i5 != 10 ? i5 != 6 ? i5 != 7 ? i5 != 24 ? i5 != 25 ? getString(cn.huidu.lcd.core.R$string.unknown_error) : i4 == 160 ? getString(cn.huidu.lcd.core.R$string.set_local_address_fail) : getString(cn.huidu.lcd.core.R$string.get_local_address_fail) : i4 == 160 ? getString(cn.huidu.lcd.core.R$string.set_group_num_fail) : getString(cn.huidu.lcd.core.R$string.get_group_num_fail) : i4 == 160 ? getString(cn.huidu.lcd.core.R$string.set_service_client_mode_fail) : getString(cn.huidu.lcd.core.R$string.get_work_mode_fail) : i4 == 160 ? getString(cn.huidu.lcd.core.R$string.set_channel_num_fail) : getString(cn.huidu.lcd.core.R$string.get_channel_num_fail) : i4 == 160 ? getString(cn.huidu.lcd.core.R$string.set_service_client_device_fail) : getString(cn.huidu.lcd.core.R$string.get_service_client_device_fail) : getString(cn.huidu.lcd.core.R$string.get_lora_version_info_fail), 0).show();
            return;
        }
        int i6 = nVar.f1949a;
        if (i6 == 0) {
            this.H.setText(getString(R$string.connected_lora_module) + nVar.f1952d);
            this.H.setTextColor(Color.parseColor("#3399ff"));
            return;
        }
        if (i6 == 6) {
            if (i4 == 0) {
                this.Q = nVar.f1951c;
                TextView textView = this.E;
                StringBuilder sbA = android.support.v4.media.f.a("");
                sbA.append(this.Q);
                textView.setText(sbA.toString());
                return;
            }
            return;
        }
        if (i6 == 24) {
            if (i4 != 0) {
                if (i4 == 128) {
                    e.d().i(this.R);
                    return;
                }
                return;
            } else {
                this.R = nVar.f1951c;
                TextView textView2 = this.F;
                StringBuilder sbA2 = android.support.v4.media.f.a("");
                sbA2.append(this.R);
                textView2.setText(sbA2.toString());
                return;
            }
        }
        if (i6 == 7) {
            if (i4 != 0 || nVar.f1951c == 4) {
                return;
            }
            f.a().f(new byte[]{-128, 7, 1, 0, 4});
            return;
        }
        if (i6 != 10) {
            if (i6 == 25 && i4 == 0 && nVar.f1951c != 0) {
                f.a().f(new byte[]{-128, 25, 1, (byte) 0});
                return;
            }
            return;
        }
        if (i4 == 0) {
            int i7 = nVar.f1951c == 0 ? 1 : 2;
            this.P = i7;
            F(i7);
            A(this.P == 1);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        int i4 = 0;
        if (id == R$id.mode_main_view) {
            ArrayList<String> arrayListH = h.a.H(this);
            Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("title", getString(R$string.auto_configuration));
            bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, !this.K ? 1 : 0);
            bundle.putStringArrayList("List", arrayListH);
            intent.putExtras(bundle);
            startActivityForResult(intent, 0);
            return;
        }
        if (id == R$id.item_htp_mode) {
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(getString(R$string.close));
            arrayList.add(getString(R$string.as_server_device));
            arrayList.add(getString(R$string.as_client_device));
            Intent intent2 = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
            Bundle bundle2 = new Bundle();
            bundle2.putString("title", getString(R$string.sync_time_inter_device));
            bundle2.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, this.J.f2676g);
            bundle2.putStringArrayList("List", arrayList);
            intent2.putExtras(bundle2);
            startActivityForResult(intent2, 4);
            return;
        }
        if (id == R$id.zone_item) {
            o.b bVar = new o.b();
            bVar.f2810c = TimeZone.getDefault().getID();
            bVar.f2808a = TimeZone.getDefault().getDisplayName();
            bVar.f2811d = this.M;
            Intent intent3 = new Intent(this, (Class<?>) CommonSelectTypeMainActivity.class);
            Bundle bundle3 = new Bundle();
            bundle3.putInt("list_type", 0);
            bundle3.putSerializable("ser_info", bVar);
            intent3.putExtras(bundle3);
            startActivityForResult(intent3, 1);
            return;
        }
        if (id == R$id.date_item) {
            D(h.a.t(this.f692x.getText().toString(), 0), h.a.t(this.f692x.getText().toString(), 1), h.a.t(this.f692x.getText().toString(), 2), 2);
            return;
        }
        if (id == R$id.time_item) {
            D(h.a.N(this.f693y.getText().toString(), 0), h.a.N(this.f693y.getText().toString(), 1), "", 3);
            return;
        }
        int i5 = R$id.ntp_item;
        if (id == i5 || id == R$id.edt_ntp_server) {
            if (id == i5) {
                FocusIndexEditText focusIndexEditText = this.f694z;
                focusIndexEditText.setSelection(focusIndexEditText.getTextString().length());
            }
            t(this.f680l, this.f694z);
            return;
        }
        if (id == R$id.rf_switch_view) {
            ArrayList<String> arrayListH2 = h.a.H(this);
            Intent intent4 = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
            Bundle bundle4 = new Bundle();
            bundle4.putString("title", getString(R$string.switch_lora_rf_correct_time));
            bundle4.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, !this.O ? 1 : 0);
            bundle4.putStringArrayList("List", arrayListH2);
            intent4.putExtras(bundle4);
            startActivityForResult(intent4, 5);
            return;
        }
        if (id == R$id.item_rf_service_client) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            arrayList2.add(getString(R$string.as_server_device));
            arrayList2.add(getString(R$string.as_client_device));
            Intent intent5 = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
            Bundle bundle5 = new Bundle();
            bundle5.putString("title", getString(R$string.master_slave_mode));
            bundle5.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, this.P <= 1 ? 0 : 1);
            bundle5.putStringArrayList("List", arrayList2);
            intent5.putExtras(bundle5);
            startActivityForResult(intent5, 6);
            return;
        }
        if (id == R$id.item_rf_channel) {
            ArrayList<String> arrayList3 = new ArrayList<>();
            while (i4 <= 115) {
                arrayList3.add("" + i4);
                i4++;
            }
            Intent intent6 = new Intent(this, (Class<?>) SlideItemListSelectActivity.class);
            Bundle bundle6 = new Bundle();
            bundle6.putString("title", getString(R$string.channel));
            bundle6.putString(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, this.Q + "");
            bundle6.putStringArrayList("list", arrayList3);
            intent6.putExtras(bundle6);
            startActivityForResult(intent6, 8);
            return;
        }
        if (id == R$id.item_group_num) {
            ArrayList<String> arrayList4 = new ArrayList<>();
            while (i4 <= 63) {
                arrayList4.add("" + i4);
                i4++;
            }
            Intent intent7 = new Intent(this, (Class<?>) SlideItemListSelectActivity.class);
            Bundle bundle7 = new Bundle();
            bundle7.putString("title", getString(R$string.group_num));
            bundle7.putString(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, this.R + "");
            bundle7.putStringArrayList("list", arrayList4);
            intent7.putExtras(bundle7);
            startActivityForResult(intent7, 9);
            return;
        }
        if (id == R$id.item_rtt) {
            ArrayList<String> arrayList5 = new ArrayList<>();
            while (i4 <= 30) {
                StringBuilder sbA = android.support.v4.media.f.a("");
                sbA.append(i4 * 10);
                arrayList5.add(sbA.toString());
                i4++;
            }
            Intent intent8 = new Intent(this, (Class<?>) SlideItemListSelectActivity.class);
            Bundle bundle8 = new Bundle();
            bundle8.putString("title", getString(R$string.master_slave_delay_time));
            bundle8.putString(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, this.S + "");
            bundle8.putStringArrayList("list", arrayList5);
            intent8.putExtras(bundle8);
            startActivityForResult(intent8, 7);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_time_setting_main);
            } else {
                setContentView(R$layout.activity_time_setting_main_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_time_setting_main);
            } else {
                setContentView(R$layout.activity_time_setting_main_barscreen);
            }
        }
        this.T = cn.huidu.lcd.core.a.f337c == 39;
        h.a.q0(this);
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f818a = (ViewGroup) findViewById(R$id.keyboard_layout);
        this.f819b = (ViewGroup) findViewById(R$id.relative_main);
        Point pointB2 = w0.a.b(this);
        if (w0.a.d(this)) {
            int i6 = pointB2.y;
            if (i6 < 360 || i6 >= 800) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        } else {
            int i7 = pointB2.x;
            if (i7 < 360 || i7 >= 720) {
                this.f824g = R$xml.hd_qwerty_lowcase;
            } else {
                this.f824g = R$xml.hd_qwerty_barscreen_lower;
            }
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.mode_main_view);
        this.f679k = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f679k.setOnFocusChangeListener(this);
        this.f679k.setScaleX(0.98f);
        this.f679k.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        s(this.f679k, false);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.ntp_item);
        this.f680l = linearLayout2;
        linearLayout2.setOnClickListener(this);
        this.f680l.setOnFocusChangeListener(this);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.zone_item);
        this.f681m = linearLayout3;
        linearLayout3.setOnClickListener(this);
        this.f681m.setOnFocusChangeListener(this);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R$id.date_item);
        this.f682n = linearLayout4;
        linearLayout4.setOnClickListener(this);
        this.f682n.setOnFocusChangeListener(this);
        LinearLayout linearLayout5 = (LinearLayout) findViewById(R$id.time_item);
        this.f683o = linearLayout5;
        linearLayout5.setOnClickListener(this);
        this.f683o.setOnFocusChangeListener(this);
        LinearLayout linearLayout6 = (LinearLayout) findViewById(R$id.item_htp_mode);
        this.f684p = linearLayout6;
        linearLayout6.setOnClickListener(this);
        this.f684p.setOnFocusChangeListener(this);
        LinearLayout linearLayout7 = (LinearLayout) findViewById(R$id.rf_switch_view);
        this.f685q = linearLayout7;
        linearLayout7.setOnClickListener(this);
        this.f685q.setOnFocusChangeListener(this);
        LinearLayout linearLayout8 = (LinearLayout) findViewById(R$id.item_rf_service_client);
        this.f686r = linearLayout8;
        linearLayout8.setOnClickListener(this);
        this.f686r.setOnFocusChangeListener(this);
        LinearLayout linearLayout9 = (LinearLayout) findViewById(R$id.item_rf_channel);
        this.f687s = linearLayout9;
        linearLayout9.setOnClickListener(this);
        this.f687s.setOnFocusChangeListener(this);
        LinearLayout linearLayout10 = (LinearLayout) findViewById(R$id.item_group_num);
        this.f688t = linearLayout10;
        linearLayout10.setOnClickListener(this);
        this.f688t.setOnFocusChangeListener(this);
        LinearLayout linearLayout11 = (LinearLayout) findViewById(R$id.item_rtt);
        this.f689u = linearLayout11;
        linearLayout11.setOnClickListener(this);
        this.f689u.setOnFocusChangeListener(this);
        this.f690v = (TextView) findViewById(R$id.mode_text_item);
        this.B = (TextView) findViewById(R$id.tv_htp_mode);
        this.f691w = (TextView) findViewById(R$id.zone_value_text);
        this.f692x = (TextView) findViewById(R$id.date_text_view);
        this.f693y = (TextView) findViewById(R$id.time_text_view);
        FocusIndexEditText focusIndexEditText = (FocusIndexEditText) findViewById(R$id.edt_ntp_server);
        this.f694z = focusIndexEditText;
        focusIndexEditText.setCustomClickListener(this);
        this.A = (TextView) findViewById(R$id.tv_ntp_log);
        this.C = (TextView) findViewById(R$id.tv_rf_switch);
        this.D = (TextView) findViewById(R$id.tv_rf_service_client);
        this.E = (TextView) findViewById(R$id.tv_rf_channel_value);
        this.F = (TextView) findViewById(R$id.tv_group_num_value);
        this.G = (TextView) findViewById(R$id.tv_rtt_value);
        this.H = (TextView) findViewById(R$id.tv_rf_info);
        this.f685q.setVisibility(this.T ? 0 : 8);
        this.H.setVisibility(this.T ? 0 : 8);
        this.N = new a(this);
        this.I = new l(this);
        this.J = (n.l) b.c().a(n.l.class);
        o.b bVarP = h.a.P(this, TimeZone.getDefault().getID());
        if (bVarP == null) {
            TextView textView = this.f691w;
            Objects.requireNonNull(this.I);
            TimeZone timeZone = TimeZone.getDefault();
            StringBuilder sbA = android.support.v4.media.f.a("getDefaultTimeZone: +++id");
            sbA.append(timeZone.getID());
            Log.d("TimeSetUtils", sbA.toString());
            StringBuilder sbA2 = g.a(timeZone.getDisplayName(false, 0), ",");
            sbA2.append(timeZone.getDisplayName());
            textView.setText(sbA2.toString());
        } else {
            String str = bVarP.f2811d;
            this.M = str;
            this.f691w.setText(String.format("%s,%s", str, bVarP.f2808a));
        }
        boolean z3 = this.J.f2672c;
        this.K = z3;
        this.f690v.setText(getString(z3 ? R$string.open : R$string.close));
        this.f694z.setText(this.J.f2674e);
        int i8 = this.J.f2676g;
        this.L = i8;
        E(i8);
        G(this.K);
        n.l lVar = this.J;
        this.O = lVar.f2677h;
        if (!this.T) {
            this.O = false;
        }
        this.P = lVar.f2678i;
        this.S = lVar.f2681l;
        this.Q = lVar.f2679j;
        this.R = lVar.f2680k;
        this.C.setText(getString(this.O ? R$string.open : R$string.close));
        this.G.setText(this.S + "ms");
        TextView textView2 = this.E;
        StringBuilder sbA3 = android.support.v4.media.f.a("");
        sbA3.append(this.Q);
        textView2.setText(sbA3.toString());
        TextView textView3 = this.F;
        StringBuilder sbA4 = android.support.v4.media.f.a("");
        sbA4.append(this.R);
        textView3.setText(sbA4.toString());
        this.H.setText(getString(R$string.not_detected_lora_module));
        this.H.setTextColor(Color.parseColor("#ff0000"));
        A(this.P == 1);
        F(this.P);
        H(this.O);
        z();
        if (this.T) {
            f.a().d(this.P);
            boolean zF = cn.huidu.lcd.core.util.a.f(0);
            Log.d("TimeSettingMainActivity", "openRFConfigureMode: " + zF);
            if (zF) {
                this.N.postDelayed(m.e.f2473c, 200L);
            }
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        h.a.B0(this);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        r(view, z3);
        v(view, z3);
        int id = view.getId();
        if (id == R$id.mode_main_view) {
            j(view, z3);
        } else if (id == R$id.item_group_num) {
            n(view, z3);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 21 || i4 == 22) {
            if (this.f679k.isFocused()) {
                q(this.f679k, true, i4 == 22);
                this.K = !this.K;
                x();
                return true;
            }
            if (this.f685q.isFocused()) {
                q(this.f685q, true, i4 == 22);
                this.O = !this.O;
                B();
                if (this.O && this.L != 0) {
                    this.L = 0;
                    this.J.f2676g = 0;
                    E(0);
                }
                e.d().f(y(), this.L, this.O, this.P);
                z();
                return true;
            }
        }
        if (keyEvent.getKeyCode() != 4) {
            return super.onKeyDown(i4, keyEvent);
        }
        C();
        finish();
        return true;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if (i4 == 21 || i4 == 22) {
            if (this.f679k.isFocused()) {
                q(this.f679k, false, i4 == 22);
            } else if (this.f685q.isFocused()) {
                q(this.f685q, false, i4 == 22);
            }
        }
        return super.onKeyUp(i4, keyEvent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (this.N.hasMessages(10000)) {
            this.N.removeMessages(10000);
        }
        this.N.sendEmptyMessageDelayed(10000, 3000L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.N.hasMessages(10000)) {
            this.N.removeMessages(10000);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void w() {
        C();
        finish();
    }

    public final void x() {
        this.f690v.setText(getString(this.K ? R$string.open : R$string.close));
        G(this.K);
        this.J.f2672c = this.K;
        b.c().d(this.J);
        e.d().f(y(), this.L, this.O, this.P);
        z();
    }

    public final int y() {
        if (this.K) {
            return 1;
        }
        if (this.L != 0) {
            return 3;
        }
        return this.O ? 5 : 0;
    }

    public final void z() {
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("HH:mm", locale);
        Date date = new Date();
        this.f692x.setText(simpleDateFormat.format(date));
        this.f693y.setText(simpleDateFormat2.format(date));
        if (!this.K && this.L != 2) {
            if (!(this.O & (this.P == 2))) {
                this.A.setText("");
                return;
            }
        }
        TextView textView = this.A;
        e.b bVar = e.d().f3349j;
        StringBuilder sb = new StringBuilder();
        if (bVar.f3354a != null) {
            sb.append("Host:");
            sb.append(bVar.f3354a);
        }
        if (bVar.f3355b != 0) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            CharSequence charSequence = DateFormat.format("yyyy/MM/dd HH:mm:ss", new Date(bVar.f3355b));
            sb.append("Update:");
            sb.append(charSequence);
            sb.append(", ");
            sb.append("Error: ±");
            sb.append(bVar.f3357d);
            sb.append("ms");
        }
        textView.setText(sb.toString());
    }
}
