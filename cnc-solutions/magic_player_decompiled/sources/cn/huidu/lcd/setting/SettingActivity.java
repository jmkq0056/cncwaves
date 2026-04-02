package cn.huidu.lcd.setting;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.f;
import android.support.v4.media.g;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.setting.ui.adapter.HomeAdapter;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import j.j;
import java.lang.ref.WeakReference;
import n.c;
import n.k;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class SettingActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final /* synthetic */ int f501w = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ImageView f502k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f503l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f504m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f505n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ImageView f506o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public c0.a f507p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public RecyclerView f508q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public HomeAdapter f509r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Handler f512u;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[] f510s = new int[0];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String[] f511t = new String[0];

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public BroadcastReceiver f513v = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            if (action.equals("android.net.conn.CONNECTIVITY_CHANGE") || action.equals("android.net.wifi.STATE_CHANGE")) {
                SettingActivity.this.f512u.removeMessages(1);
                SettingActivity.this.f512u.sendEmptyMessageDelayed(1, 1000L);
            }
        }
    }

    public static final class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public WeakReference<SettingActivity> f515a;

        public b(SettingActivity settingActivity) {
            this.f515a = new WeakReference<>(settingActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            SettingActivity settingActivity = this.f515a.get();
            if (settingActivity != null) {
                int i4 = SettingActivity.f501w;
                if (message.what == 1) {
                    settingActivity.x();
                }
            }
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void handleEvent(j jVar) {
        Log.d("SettingActivity", "handleEvent: MqttConnectStateChangedEvent");
        this.f512u.removeMessages(1);
        this.f512u.sendEmptyMessageDelayed(1, 500L);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity
    public void i() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            setContentView(R$layout.activity_lcd_portrait_home);
        } else {
            int i4 = pointB.x;
            if (i4 < 360 || i4 > 720) {
                setContentView(R$layout.activity_lcd_portrait_barscreen);
            } else {
                setContentView(R$layout.activity_lcd_portrait_home);
            }
        }
        int i5 = R$id.img_signal;
        this.f502k = (ImageView) findViewById(i5);
        this.f503l = (TextView) findViewById(R$id.tv_network_type);
        this.f504m = (TextView) findViewById(R$id.tv_network_state);
        this.f505n = (TextView) findViewById(R$id.tv_cloud_state);
        this.f506o = (ImageView) findViewById(i5);
        int i6 = R$id.rectangles;
        this.f508q = (RecyclerView) findViewById(i6);
        this.f510s = new int[]{R$drawable.hd_network_set, R$drawable.hd_systerm_control, R$drawable.hd_options_icon, R$drawable.hd_server_stand, R$drawable.hd_wifi_set, R$drawable.hd_language_set, R$drawable.hd_play_now, R$drawable.clear_program, R$drawable.hd_restart_icon, R$drawable.network_diagnosis, R$drawable.hd_about_us};
        this.f511t = new String[]{getResources().getString(R$string.network_set), getResources().getString(R$string.system_control), getResources().getString(R$string.advanced_options), getResources().getString(R$string.system_mode), getResources().getString(R$string.wifi_hotspot), getResources().getString(R$string.system_language), getResources().getString(R$string.play_now), getResources().getString(R$string.clear_program), getResources().getString(R$string.reboot), getResources().getString(R$string.network_diagnosis), getResources().getString(R$string.about_us)};
        this.f508q = (RecyclerView) findViewById(i6);
        HomeAdapter homeAdapter = new HomeAdapter(this.f510s, this.f511t);
        this.f509r = homeAdapter;
        this.f508q.setAdapter(homeAdapter);
        if (w0.a.d(this)) {
            int i7 = pointB.y;
            if (i7 <= 360) {
                this.f508q.setLayoutManager(new GridLayoutManager(this, 11));
            } else if (i7 <= 720) {
                this.f508q.setLayoutManager(new GridLayoutManager(this, 6));
            } else {
                this.f508q.setLayoutManager(new GridLayoutManager(this, 4));
            }
        } else {
            int i8 = pointB.x;
            if (i8 >= 360 && i8 >= 720) {
                this.f508q.setLayoutManager(new GridLayoutManager(this, 4));
            } else {
                this.f508q.setLayoutManager(new GridLayoutManager(this, 2));
            }
        }
        this.f509r.f743c = new p.b(this);
        this.f512u = new b(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        registerReceiver(this.f513v, intentFilter);
        h.a.q0(this);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.f513v);
        h.a.B0(this);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 != 4) {
            return super.onKeyDown(i4, keyEvent);
        }
        finish();
        return true;
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f506o.setImageResource(((k) l.b.c().a(k.class)).f2663c == 1 ? R$drawable.hd_server_set : R$drawable.hd_server_stand);
        x();
    }

    public final void x() {
        String string;
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            this.f503l.setVisibility(0);
            int type = activeNetworkInfo.getType();
            if (type == 0) {
                l.k kVarA = l.k.a();
                TextView textView = this.f503l;
                int iB = kVarA.b();
                String string2 = getString(R$string.move_network);
                switch (iB) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        string2 = "2G";
                        break;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        string2 = "3G";
                        break;
                    case 13:
                        string2 = "4G";
                        break;
                }
                textView.setText(string2);
                this.f502k.setVisibility(0);
                int i4 = kVarA.f2354b;
                if (i4 >= 4) {
                    this.f502k.setImageResource(R$drawable.mobile_signal_level4);
                } else if (i4 >= 3) {
                    this.f502k.setImageResource(R$drawable.mobile_signal_level3);
                } else if (i4 >= 2) {
                    this.f502k.setImageResource(R$drawable.mobile_signal_level2);
                } else if (i4 >= 1) {
                    this.f502k.setImageResource(R$drawable.mobile_signal_level1);
                } else {
                    this.f502k.setImageResource(R$drawable.mobile_signal_level0);
                }
            } else if (type == 1) {
                WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
                this.f503l.setText("Wi-Fi");
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                if (connectionInfo != null) {
                    int iCalculateSignalLevel = WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 5);
                    this.f502k.setVisibility(0);
                    if (iCalculateSignalLevel >= 4) {
                        this.f502k.setImageResource(R$drawable.wifi_white_level4);
                    } else if (iCalculateSignalLevel >= 3) {
                        this.f502k.setImageResource(R$drawable.wifi_white_level3);
                    } else if (iCalculateSignalLevel >= 2) {
                        this.f502k.setImageResource(R$drawable.wifi_white_level2);
                    } else {
                        this.f502k.setImageResource(R$drawable.wifi_white_level1);
                    }
                } else {
                    this.f502k.setVisibility(8);
                }
            } else if (type == 9) {
                this.f502k.setVisibility(8);
                this.f503l.setText(R$string.wired_network);
            } else {
                this.f502k.setVisibility(8);
                this.f503l.setText("Network" + type);
            }
            if (activeNetworkInfo.isConnected()) {
                this.f504m.setText(R$string.connected);
            } else {
                this.f504m.setText(R$string.not_connected);
            }
        } else {
            this.f502k.setVisibility(8);
            this.f503l.setVisibility(8);
            this.f504m.setText(R$string.network_not_available);
        }
        TextView textView2 = this.f505n;
        k kVar = (k) l.b.c().a(k.class);
        androidx.media.b.a(f.a("initData: getNetworkMode->"), kVar.f2663c, "SettingActivity");
        int i5 = kVar.f2663c;
        if (i5 == 0) {
            string = getString(R$string.stand_alone_mode);
        } else if (i5 == 1) {
            c cVar = (c) l.b.c().a(c.class);
            if (cVar.f2627c) {
                StringBuilder sbA = g.a(getString(l.c.a().G ? R$string.server_connected : R$string.server_not_connected), ": ");
                sbA.append(cVar.f2628d);
                sbA.append(" ");
                sbA.append(getString(R$string.user_name));
                sbA.append(": ");
                sbA.append(cVar.f2629e);
                string = sbA.toString();
            } else {
                string = getString(R$string.server_not_registered) + ": " + s.k.b(this, cVar.f2630f);
            }
        } else {
            n.g gVar = (n.g) l.b.c().a(n.g.class);
            StringBuilder sbA2 = g.a(getString(l.c.a().H ? R$string.lan_connect : R$string.lan_not_connect), "  ");
            sbA2.append(getString(R$string.lock_state));
            sbA2.append(": ");
            sbA2.append(getString(gVar.f2647c ? R$string.is_locked : R$string.not_locked));
            sbA2.append("  ");
            sbA2.append(getString(R$string.uuid));
            sbA2.append(": ");
            sbA2.append(gVar.f2649e);
            string = sbA2.toString();
        }
        textView2.setText(string);
    }
}
