package com.thanosfisherman.wifiutils.wifiState;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import b2.e;
import f2.a;

/* JADX INFO: loaded from: classes2.dex */
public final class WifiStateReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    public final a f1409a;

    public WifiStateReceiver(@NonNull a aVar) {
        this.f1409a = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, @NonNull Intent intent) {
        if (intent.getIntExtra("wifi_state", 0) != 3) {
            return;
        }
        ((e.a) this.f1409a).a();
    }
}
