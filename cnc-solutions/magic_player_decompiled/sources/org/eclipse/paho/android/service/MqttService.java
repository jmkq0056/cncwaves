package org.eclipse.paho.android.service;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.sqlite.SQLiteDatabase;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import w2.c;
import w2.d;
import w2.e;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"Registered"})
public class MqttService extends Service implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public w2.b f2890a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b f2891b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public d f2893d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f2892c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, c> f2894e = new ConcurrentHashMap();

    public class b extends BroadcastReceiver {
        public b(a aVar) {
        }

        @Override // android.content.BroadcastReceiver
        @SuppressLint({"Wakelock"})
        public void onReceive(Context context, Intent intent) {
            Objects.requireNonNull(MqttService.this);
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) MqttService.this.getSystemService("power")).newWakeLock(1, "MQTT");
            wakeLockNewWakeLock.acquire();
            Objects.requireNonNull(MqttService.this);
            if (MqttService.this.c()) {
                Objects.requireNonNull(MqttService.this);
                MqttService.this.d();
            } else {
                MqttService.a(MqttService.this);
            }
            wakeLockNewWakeLock.release();
        }
    }

    public static void a(MqttService mqttService) {
        Iterator<c> it = mqttService.f2894e.values().iterator();
        while (it.hasNext()) {
            Objects.requireNonNull(it.next());
        }
    }

    public void b(String str, org.eclipse.paho.android.service.a aVar, Bundle bundle) {
        Intent intent = new Intent("MqttService.callbackToActivity.v0");
        if (str != null) {
            intent.putExtra("MqttService.clientHandle", str);
        }
        intent.putExtra("MqttService.callbackStatus", aVar);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    public boolean c() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected() && this.f2892c;
    }

    public void d() {
        this.f2894e.size();
        for (c cVar : this.f2894e.values()) {
            String str = cVar.f3921a;
            if (c()) {
                synchronized (cVar) {
                    Objects.requireNonNull(cVar.f3923c);
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        intent.getStringExtra("MqttService.activityToken");
        Objects.requireNonNull(this.f2893d);
        return this.f2893d;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f2893d = new d(this);
        this.f2890a = new w2.a(this, this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        SQLiteDatabase sQLiteDatabase;
        for (c cVar : this.f2894e.values()) {
            Objects.requireNonNull(cVar.f3923c);
            Bundle bundle = new Bundle();
            bundle.putString("MqttService.activityToken", null);
            bundle.putString("MqttService.invocationContext", null);
            bundle.putString("MqttService.callbackAction", "disconnect");
            bundle.putString("MqttService.errorMessage", "not connected");
            Objects.requireNonNull(cVar.f3923c);
            cVar.f3923c.b(cVar.f3922b, org.eclipse.paho.android.service.a.ERROR, bundle);
            cVar.f();
        }
        if (this.f2893d != null) {
            this.f2893d = null;
        }
        b bVar = this.f2891b;
        if (bVar != null) {
            unregisterReceiver(bVar);
            this.f2891b = null;
        }
        w2.b bVar2 = this.f2890a;
        if (bVar2 != null && (sQLiteDatabase = ((w2.a) bVar2).f3917a) != null) {
            sQLiteDatabase.close();
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i4, int i5) {
        if (this.f2891b != null) {
            return 1;
        }
        b bVar = new b(null);
        this.f2891b = bVar;
        registerReceiver(bVar, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        return 1;
    }
}
