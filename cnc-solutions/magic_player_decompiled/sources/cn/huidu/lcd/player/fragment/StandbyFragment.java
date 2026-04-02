package cn.huidu.lcd.player.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import cn.huidu.lcd.player.R;
import l.b;
import n.d;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class StandbyFragment extends Fragment {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f425i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ImageView f429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ImageView f430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextView f431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ConnectivityManager f432g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final BroadcastReceiver f433h = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StandbyFragment standbyFragment = StandbyFragment.this;
            int i4 = StandbyFragment.f425i;
            standbyFragment.b();
        }
    }

    public final boolean a(int i4) {
        if (this.f432g == null) {
            this.f432g = (ConnectivityManager) getContext().getSystemService("connectivity");
        }
        NetworkInfo networkInfo = this.f432g.getNetworkInfo(i4);
        return networkInfo != null && networkInfo.isConnected();
    }

    public final void b() {
        if (a(1)) {
            this.f429d.setImageResource(R.drawable.wifi_online);
        } else {
            this.f429d.setImageResource(R.drawable.wifi_offline);
        }
        if (a(9)) {
            this.f430e.setImageResource(R.drawable.ethernet_online);
        } else {
            this.f430e.setImageResource(R.drawable.ethernet_offline);
        }
        String strY = h.a.y();
        if (TextUtils.isEmpty(strY)) {
            strY = StringUtil.ALL_INTERFACES;
        }
        this.f427b.setText(getString(R.string.ip_address) + ": " + strY);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            getContext().registerReceiver(this.f433h, intentFilter);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        Point pointB = w0.a.b(requireContext());
        Log.d("EdgeClickRecognizer", "onCreateView: windowSize-->" + pointB);
        if (w0.a.d(requireContext())) {
            int i4 = pointB.y;
            return (i4 < 360 || i4 >= 500) ? (i4 < 500 || i4 >= 650) ? (i4 < 650 || i4 >= 980) ? layoutInflater.inflate(R.layout.fragment_standby, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_standby_650, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_standby_500, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_standby_360, viewGroup, false);
        }
        int i5 = pointB.x;
        return (i5 < 360 || i5 >= 650) ? (i5 < 650 || i5 >= 980) ? layoutInflater.inflate(R.layout.fragment_standby, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_standby_650, viewGroup, false) : layoutInflater.inflate(R.layout.fragment_standby_360, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        try {
            getContext().unregisterReceiver(this.f433h);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f426a = (TextView) view.findViewById(R.id.tv_device_id);
        this.f427b = (TextView) view.findViewById(R.id.tv_ip_address);
        this.f428c = (TextView) view.findViewById(R.id.tv_cloud_notice);
        this.f429d = (ImageView) view.findViewById(R.id.iv_wifi_state);
        this.f430e = (ImageView) view.findViewById(R.id.iv_eth_state);
        this.f431f = (TextView) view.findViewById(R.id.tv_error_msg);
        d dVar = (d) b.c().a(d.class);
        StringBuilder sb = new StringBuilder();
        sb.append(getString(R.string.device_id));
        sb.append(": ");
        sb.append(dVar.f2632d);
        sb.append("（");
        this.f426a.setText(android.support.v4.media.b.a(sb, dVar.f2631c, "）"));
        this.f428c.setText(getString(R.string.cloud_update_program_notice).replace("#S1#", "http://www.led-cloud.cn").replace("#S2#", "http://www.led-cloud.com"));
        b();
        Bundle arguments = getArguments();
        switch (arguments != null ? arguments.getInt("ErrorCode", -1) : -1) {
            case 1:
                this.f431f.setText(R.string.no_program);
                break;
            case 2:
                this.f431f.setText(R.string.program_resource_lost);
                break;
            case 3:
                this.f431f.setText(R.string.media_not_found);
                break;
            case 4:
            case 5:
                this.f431f.setText(R.string.storage_not_found);
                break;
            case 6:
                this.f431f.setText(R.string.permission_denied);
                break;
            case 7:
                this.f431f.setText(R.string.device_is_locked);
                break;
            case 8:
            default:
                this.f431f.setText("");
                break;
            case 9:
                this.f431f.setText(R.string.copy_program_failed);
                break;
        }
    }
}
