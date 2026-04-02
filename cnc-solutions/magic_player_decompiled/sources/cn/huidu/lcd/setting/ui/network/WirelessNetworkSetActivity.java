package cn.huidu.lcd.setting.ui.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.c;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TextView;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.adapter.WifiListAdapter;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.base.BaseLinearLayoutManager;
import cn.huidu.lcd.setting.ui.base.LcdPlayerRecyclerView;
import cn.huidu.lcd.setting.ui.view.CommonLoadingDialog;
import cn.huidu.lcd.setting.ui.view.InputWifiPwdActivity;
import j.r;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import n.o;
import o.g;
import p.d;
import p.f;

/* JADX INFO: loaded from: classes.dex */
public class WirelessNetworkSetActivity extends BaseActivity implements WifiListAdapter.c {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f893v = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f894k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Handler f895l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public f f896m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public d f897n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public WifiManager f898o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public LcdPlayerRecyclerView f900q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CommonLoadingDialog f901r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public WifiListAdapter f902s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f903t;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AtomicBoolean f899p = new AtomicBoolean(false);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public BroadcastReceiver f904u = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            byte b4 = -1;
            switch (action.hashCode()) {
                case -1875733435:
                    if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                        b4 = 0;
                    }
                    break;
                case -343630553:
                    if (action.equals("android.net.wifi.STATE_CHANGE")) {
                        b4 = 1;
                    }
                    break;
                case 1466142886:
                    if (action.equals("android.net.wifi.LINK_CONFIGURATION_CHANGED_ACTION")) {
                        b4 = 2;
                    }
                    break;
                case 1625920338:
                    if (action.equals("android.net.wifi.CONFIGURED_NETWORKS_CHANGE")) {
                        b4 = 3;
                    }
                    break;
                case 1878357501:
                    if (action.equals("android.net.wifi.SCAN_RESULTS")) {
                        b4 = 4;
                    }
                    break;
            }
            if (b4 == 0) {
                Log.d("WirelessNetworkActivity", "onReceive: wifi state changed.");
                WifiManager wifiManager = WirelessNetworkSetActivity.this.f898o;
                if (wifiManager == null || !wifiManager.isWifiEnabled()) {
                    return;
                }
                WirelessNetworkSetActivity wirelessNetworkSetActivity = WirelessNetworkSetActivity.this;
                wirelessNetworkSetActivity.f898o.startScan();
                wirelessNetworkSetActivity.f895l.removeMessages(4);
                wirelessNetworkSetActivity.f895l.sendEmptyMessageDelayed(4, 10000L);
                return;
            }
            if (b4 == 1) {
                WirelessNetworkSetActivity.this.f899p.set(((NetworkInfo) intent.getParcelableExtra("networkInfo")).isConnected());
            } else if (b4 == 2 || b4 == 3 || b4 == 4) {
                c.a("onReceive: ", action, "WirelessNetworkActivity");
                WirelessNetworkSetActivity wirelessNetworkSetActivity2 = WirelessNetworkSetActivity.this;
                int i4 = WirelessNetworkSetActivity.f893v;
                wirelessNetworkSetActivity2.z();
            }
        }
    }

    public static class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public WeakReference<WirelessNetworkSetActivity> f906a;

        public b(WirelessNetworkSetActivity wirelessNetworkSetActivity) {
            this.f906a = new WeakReference<>(wirelessNetworkSetActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WirelessNetworkSetActivity wirelessNetworkSetActivity = this.f906a.get();
            if (wirelessNetworkSetActivity != null) {
                int i4 = message.what;
                if (i4 != 1) {
                    if (i4 == 2) {
                        WirelessNetworkSetActivity.x(wirelessNetworkSetActivity, true, message);
                        return;
                    }
                    if (i4 == 3) {
                        WirelessNetworkSetActivity.x(wirelessNetworkSetActivity, false, message);
                        return;
                    } else {
                        if (i4 != 4) {
                            return;
                        }
                        wirelessNetworkSetActivity.f898o.startScan();
                        wirelessNetworkSetActivity.f895l.removeMessages(4);
                        wirelessNetworkSetActivity.f895l.sendEmptyMessageDelayed(4, 10000L);
                        return;
                    }
                }
                f.a aVar = (f.a) message.obj;
                int i5 = WirelessNetworkSetActivity.f893v;
                List<g> list = aVar.f2940a;
                WifiListAdapter wifiListAdapter = wirelessNetworkSetActivity.f902s;
                wifiListAdapter.f791b.clear();
                if (list != null) {
                    wifiListAdapter.f791b.addAll(list);
                }
                wirelessNetworkSetActivity.f902s.f793d = false;
                if (!TextUtils.isEmpty(aVar.f2941b)) {
                    wirelessNetworkSetActivity.f902s.f793d = true;
                }
                if (list.size() != 0) {
                    wirelessNetworkSetActivity.f894k.setVisibility(8);
                    wirelessNetworkSetActivity.f894k.setText("");
                } else if (wirelessNetworkSetActivity.f898o.isWifiEnabled()) {
                    wirelessNetworkSetActivity.f894k.setVisibility(0);
                    wirelessNetworkSetActivity.f894k.setText(wirelessNetworkSetActivity.getString(R$string.no_available_net));
                }
                wirelessNetworkSetActivity.f902s.notifyDataSetChanged();
            }
        }
    }

    public static void x(WirelessNetworkSetActivity wirelessNetworkSetActivity, boolean z3, Message message) {
        wirelessNetworkSetActivity.z();
        if (z3) {
            wirelessNetworkSetActivity.u(wirelessNetworkSetActivity.getString(R$string.connection_success));
            CommonLoadingDialog commonLoadingDialog = wirelessNetworkSetActivity.f901r;
            if (commonLoadingDialog != null) {
                commonLoadingDialog.dismissAllowingStateLoss();
                wirelessNetworkSetActivity.f901r = null;
                return;
            }
            return;
        }
        Object obj = message.obj;
        if (obj instanceof String) {
            wirelessNetworkSetActivity.u((String) obj);
        } else {
            wirelessNetworkSetActivity.u(wirelessNetworkSetActivity.getString(R$string.connection_failed));
        }
        CommonLoadingDialog commonLoadingDialog2 = wirelessNetworkSetActivity.f901r;
        if (commonLoadingDialog2 != null) {
            commonLoadingDialog2.dismissAllowingStateLoss();
            wirelessNetworkSetActivity.f901r = null;
        }
        String str = wirelessNetworkSetActivity.f903t;
        if (str != null) {
            wirelessNetworkSetActivity.f898o.removeNetwork(wirelessNetworkSetActivity.f897n.h(str));
            wirelessNetworkSetActivity.f898o.saveConfiguration();
            String str2 = wirelessNetworkSetActivity.f903t;
            Intent intent = new Intent(wirelessNetworkSetActivity, (Class<?>) InputWifiPwdActivity.class);
            intent.putExtra("Ssid", str2);
            wirelessNetworkSetActivity.startActivity(intent);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_wireless_network_set);
            } else {
                setContentView(R$layout.activity_wireless_network_set_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_wireless_network_set);
            } else {
                setContentView(R$layout.activity_wireless_network_set_barscreen);
            }
        }
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        this.f894k = (TextView) findViewById(R$id.wifi_list_msg);
        BaseLinearLayoutManager baseLinearLayoutManager = new BaseLinearLayoutManager(this);
        baseLinearLayoutManager.setOrientation(1);
        LcdPlayerRecyclerView lcdPlayerRecyclerView = (LcdPlayerRecyclerView) findViewById(R$id.wireless_list_view);
        this.f900q = lcdPlayerRecyclerView;
        lcdPlayerRecyclerView.setLayoutManager(baseLinearLayoutManager);
        this.f895l = new b(this);
        this.f896m = new f(this, this.f895l, 1);
        d dVar = new d(this);
        this.f897n = dVar;
        dVar.f2928g = new p.b(this);
        WifiListAdapter wifiListAdapter = new WifiListAdapter(this);
        this.f902s = wifiListAdapter;
        wifiListAdapter.f792c = this;
        wifiListAdapter.f794e = 0;
        wifiListAdapter.setHasStableIds(true);
        this.f900q.setAdapter(this.f902s);
        WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
        this.f898o = wifiManager;
        if (wifiManager.isWifiEnabled()) {
            z();
            this.f898o.startScan();
            this.f895l.removeMessages(4);
            this.f895l.sendEmptyMessageDelayed(4, 10000L);
        } else {
            i.d dVar2 = new i.d(this);
            if (dVar2.f()) {
                dVar2.b();
                o oVar = (o) l.b.c().a(o.class);
                oVar.f2686c = false;
                oVar.f2693j = 0L;
                l.b.c().d(oVar);
                r rVar = new r();
                rVar.f1965e = true;
                g3.c.b().f(rVar);
            }
            this.f898o.setWifiEnabled(true);
            this.f894k.setVisibility(0);
            this.f894k.setText(getString(R$string.opening_wlan));
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
        intentFilter.addAction("android.net.wifi.NETWORK_IDS_CHANGED");
        intentFilter.addAction("android.net.wifi.CONFIGURED_NETWORKS_CHANGE");
        intentFilter.addAction("android.net.wifi.LINK_CONFIGURATION_CHANGED_ACTION");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.RSSI_CHANGED");
        registerReceiver(this.f904u, intentFilter);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        f fVar = this.f896m;
        if (fVar != null) {
            fVar.a();
        }
        d dVar = this.f897n;
        if (dVar != null) {
            dVar.a();
        }
        this.f895l.removeCallbacksAndMessages(null);
        unregisterReceiver(this.f904u);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (!this.f898o.isWifiEnabled() || this.f895l.hasMessages(4)) {
            return;
        }
        this.f895l.sendEmptyMessage(4);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f895l.removeMessages(4);
        this.f901r = null;
    }

    public final void y(String str) {
        this.f903t = str;
        String str2 = String.format("%s%s%s%s", getString(R$string.joining), "\"", str, "\"...");
        CommonLoadingDialog commonLoadingDialog = this.f901r;
        if (commonLoadingDialog == null) {
            this.f901r = CommonLoadingDialog.a(str2);
        } else {
            commonLoadingDialog.f914a = str2;
            TextView textView = commonLoadingDialog.f915b;
            if (textView != null) {
                textView.setText(str2);
            }
        }
        this.f901r.show(getSupportFragmentManager(), "LoadingWifiConnect");
    }

    public final void z() {
        if (this.f896m.f2964b.size() > 0) {
            return;
        }
        f fVar = this.f896m;
        Objects.requireNonNull(fVar);
        fVar.c(null);
    }
}
