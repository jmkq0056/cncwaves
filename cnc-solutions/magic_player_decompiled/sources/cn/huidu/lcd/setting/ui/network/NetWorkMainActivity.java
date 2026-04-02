package cn.huidu.lcd.setting.ui.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.f;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import d.d;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Objects;
import n0.c;
import org.eclipse.jetty.util.StringUtil;
import q.h;
import v.b;

/* JADX INFO: loaded from: classes.dex */
public class NetWorkMainActivity extends BaseActivity implements View.OnClickListener, View.OnFocusChangeListener {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final /* synthetic */ int f848s = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f849k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextView f850l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f851m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public WifiManager f852n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f853o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList<String> f854p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f855q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public BroadcastReceiver f856r = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i4;
            String action = intent.getAction();
            Log.d("NetWorkMainActivity", "onReceive: " + action);
            Objects.requireNonNull(action);
            action.hashCode();
            i4 = 0;
            switch (action) {
                case "android.net.conn.CONNECTIVITY_CHANGE":
                    NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                    if (networkInfo != null) {
                        StringBuilder sbA = f.a("onReceive: networkInfo.getDetailedState() ");
                        sbA.append(networkInfo.getDetailedState());
                        Log.d("NetWorkMainActivity", sbA.toString());
                        if (networkInfo.getDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
                            i4 = 2;
                        }
                    }
                    NetWorkMainActivity netWorkMainActivity = NetWorkMainActivity.this;
                    int i5 = NetWorkMainActivity.f848s;
                    Objects.requireNonNull(netWorkMainActivity);
                    Log.d("NetWorkMainActivity", "ethernetStateChange: state = " + i4);
                    if (i4 == 0) {
                        netWorkMainActivity.f853o = StringUtil.ALL_INTERFACES;
                    } else if (i4 == 2) {
                        netWorkMainActivity.f853o = h.a.v(StringUtil.ALL_INTERFACES);
                    }
                    netWorkMainActivity.f850l.setText(netWorkMainActivity.f853o);
                    break;
                case "android.net.wifi.STATE_CHANGE":
                case "android.net.wifi.LINK_CONFIGURATION_CHANGED_ACTION":
                    NetWorkMainActivity netWorkMainActivity2 = NetWorkMainActivity.this;
                    int i6 = NetWorkMainActivity.f848s;
                    netWorkMainActivity2.x();
                    NetWorkMainActivity.this.y();
                    break;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        super.onActivityResult(i4, i5, intent);
        if (i5 != -1 || intent == null || intent.getExtras() == null) {
            return;
        }
        int i6 = intent.getExtras().getInt("switch");
        if (i4 == 2) {
            boolean z3 = i6 == 0;
            this.f855q = z3;
            this.f851m.setText(getString(z3 ? R$string.open : R$string.close));
            boolean z4 = this.f855q;
            if (Build.VERSION.SDK_INT < 21) {
                try {
                    ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
                    connectivityManager.getClass().getMethod("setMobileDataEnabled", Boolean.TYPE).invoke(connectivityManager, Boolean.valueOf(z4));
                    Log.d("MobileDataUtils", "setMobileDataStatus: enabled = " + z4);
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            try {
                TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
                telephonyManager.getClass().getDeclaredMethod("setDataEnabled", Boolean.TYPE).invoke(telephonyManager, Boolean.valueOf(z4));
                Log.d("MobileDataUtils", "setMobileDataStatus: enabled = " + z4);
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R$id.wireless_set) {
            if (this.f852n.isWifiEnabled()) {
                startActivity(new Intent(this, (Class<?>) WirelessNetworkSetActivity.class));
                return;
            }
            WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
            boolean zBooleanValue = false;
            try {
                Method method = wifiManager.getClass().getMethod("isWifiApEnabled", new Class[0]);
                method.setAccessible(true);
                zBooleanValue = ((Boolean) method.invoke(wifiManager, new Object[0])).booleanValue();
            } catch (Exception unused) {
            }
            if (zBooleanValue) {
                c.a(new AlertDialog.Builder(this).setTitle(getString(R$string.tips)).setMessage(getString(R$string.should_close_ap)).setPositiveButton(getString(R$string.confirm), new b(this)).setNegativeButton(getString(R$string.cancel), v.c.f3634g).create());
                return;
            } else {
                startActivity(new Intent(this, (Class<?>) WirelessNetworkSetActivity.class));
                return;
            }
        }
        if (id == R$id.wired_set) {
            startActivity(new Intent(this, (Class<?>) WiredNetworkSetActivity.class));
            return;
        }
        if (id == R$id.move_set) {
            ArrayList<String> arrayList = this.f854p;
            String string = getString(R$string.move_network);
            int i4 = !this.f855q ? 1 : 0;
            Intent intent = new Intent(this, (Class<?>) ItemsListSelectActivity.class);
            Bundle bundle = new Bundle();
            bundle.putString("title", string);
            bundle.putInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE, i4);
            bundle.putStringArrayList("List", arrayList);
            intent.putExtras(bundle);
            startActivityForResult(intent, 2);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = w0.a.b(this);
        if (w0.a.d(this)) {
            androidx.media.b.a(f.a("onCreate: windowSize.y"), pointB.y, "NetWorkMainActivity");
            int i4 = pointB.y;
            if (i4 >= 360 && i4 >= 800) {
                setContentView(R$layout.activity_net_work_main);
            } else {
                setContentView(R$layout.activity_net_work_main_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 >= 360 && i5 >= 800) {
                setContentView(R$layout.activity_net_work_main);
            } else {
                setContentView(R$layout.activity_net_work_main_barscreen);
            }
        }
        findViewById(R$id.btn_back).setOnClickListener(new w.a(this));
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.wireless_set);
        linearLayout.setOnClickListener(this);
        linearLayout.setOnFocusChangeListener(this);
        linearLayout.setScaleX(0.98f);
        linearLayout.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        s(linearLayout, false);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R$id.wired_set);
        linearLayout2.setOnClickListener(this);
        linearLayout2.setOnFocusChangeListener(this);
        linearLayout2.setScaleX(0.98f);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R$id.move_set);
        linearLayout3.setOnClickListener(this);
        linearLayout3.setOnFocusChangeListener(this);
        linearLayout3.setScaleX(0.98f);
        linearLayout3.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
        this.f849k = (TextView) findViewById(R$id.wireless_name_text);
        this.f850l = (TextView) findViewById(R$id.wired_name_text);
        this.f851m = (TextView) findViewById(R$id.move_name_text);
        this.f854p = h.a.H(this);
        boolean zA = h.a(this);
        this.f855q = zA;
        this.f851m.setText(zA ? R$string.open : R$string.close);
        y();
        x();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.net.wifi.LINK_CONFIGURATION_CHANGED_ACTION");
        registerReceiver(this.f856r, intentFilter);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.f856r);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        r(view, z3);
        s(view, z3);
        if (view.getId() == R$id.wireless_set) {
            j(view, z3);
        } else {
            n(view, z3);
        }
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f849k.getText().equals(getString(R$string.not_connected))) {
            y();
        }
    }

    public final void x() {
        if (this.f852n == null) {
            this.f852n = (WifiManager) getApplicationContext().getSystemService("wifi");
        }
        WifiInfo connectionInfo = this.f852n.getConnectionInfo();
        if (connectionInfo.getSSID().equals("<unknown ssid>") || connectionInfo.getSSID().equals("0x")) {
            this.f849k.setText(getString(R$string.not_connected));
            this.f850l.setText(this.f853o);
        } else if (connectionInfo.getSupplicantState() == SupplicantState.INACTIVE) {
            this.f849k.setText(getString(R$string.not_connected));
            this.f850l.setText(this.f853o);
        } else {
            this.f849k.setText(connectionInfo.getSSID().replace("\"", ""));
            this.f850l.setText(StringUtil.ALL_INTERFACES);
        }
    }

    public final void y() {
        this.f853o = h.a.v(StringUtil.ALL_INTERFACES);
        androidx.media.a.a(f.a("refreshEthIp: ->"), this.f853o, "NetWorkMainActivity");
        if (this.f853o.equals(StringUtil.ALL_INTERFACES)) {
            new Handler().postDelayed(new d(this), 2500L);
        } else {
            this.f850l.setText(this.f853o);
        }
        androidx.media.a.a(f.a("refreshEthIp: "), this.f853o, "NetWorkMainActivity");
    }
}
