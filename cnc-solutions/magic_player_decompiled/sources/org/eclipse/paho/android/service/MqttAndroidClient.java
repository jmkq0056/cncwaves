package org.eclipse.paho.android.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.Executors;
import x2.b;
import x2.e;

/* JADX INFO: loaded from: classes2.dex */
public class MqttAndroidClient extends BroadcastReceiver implements b {
    static {
        Executors.newCachedThreadPool();
    }

    public final synchronized e B(Bundle bundle) {
        String string = bundle.getString("MqttService.activityToken");
        if (string != null) {
            Integer.parseInt(string);
            throw null;
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
    }

    @Override // x2.b
    public String k() {
        return null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("MqttService.clientHandle");
        if (string == null || !string.equals(null)) {
            return;
        }
        String string2 = extras.getString("MqttService.callbackAction");
        if ("connect".equals(string2)) {
            B(extras);
            Objects.requireNonNull(null);
            throw null;
        }
        if ("connectExtended".equals(string2) || "messageArrived".equals(string2)) {
            return;
        }
        if ("subscribe".equals(string2)) {
            B(extras);
            Objects.requireNonNull(null);
            throw null;
        }
        if ("unsubscribe".equals(string2)) {
            B(extras);
            Objects.requireNonNull(null);
            throw null;
        }
        if ("send".equals(string2)) {
            synchronized (this) {
                Integer.parseInt(extras.getString("MqttService.activityToken"));
                throw null;
            }
        }
        if ("messageDelivered".equals(string2)) {
            B(extras);
            return;
        }
        if ("onConnectionLost".equals(string2)) {
            return;
        }
        if ("disconnect".equals(string2)) {
            B(extras);
        } else {
            if ("trace".equals(string2)) {
                return;
            }
            Objects.requireNonNull(null);
            throw null;
        }
    }
}
