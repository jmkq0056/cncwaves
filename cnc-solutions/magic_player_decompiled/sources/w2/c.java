package w2;

import android.content.ContentValues;
import android.database.SQLException;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.Log;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import org.eclipse.paho.android.service.MqttService;
import x2.h;
import x2.n;

/* JADX INFO: loaded from: classes2.dex */
public class c implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MqttService f3923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Map<x2.c, String> f3924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<x2.c, n> f3925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Map<x2.c, String> f3926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Map<x2.c, String> f3927g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PowerManager.WakeLock f3928h;

    @Override // x2.g
    public void a(String str, n nVar) {
        MqttService mqttService = this.f3923c;
        nVar.toString();
        Objects.requireNonNull(mqttService);
        b bVar = this.f3923c.f2890a;
        String str2 = this.f3922b;
        a aVar = (a) bVar;
        aVar.f3917a = aVar.f3918b.getWritableDatabase();
        e eVar = aVar.f3919c;
        nVar.toString();
        Objects.requireNonNull(eVar);
        byte[] bArr = nVar.f3982a;
        int i4 = nVar.f3983b;
        boolean z3 = nVar.f3984c;
        boolean z4 = nVar.f3985d;
        ContentValues contentValues = new ContentValues();
        String string = UUID.randomUUID().toString();
        contentValues.put("messageId", string);
        contentValues.put("clientHandle", str2);
        contentValues.put("destinationName", str);
        contentValues.put("payload", bArr);
        contentValues.put("qos", Integer.valueOf(i4));
        contentValues.put("retained", Boolean.valueOf(z3));
        contentValues.put("duplicate", Boolean.valueOf(z4));
        contentValues.put("mtimestamp", Long.valueOf(System.currentTimeMillis()));
        try {
            aVar.f3917a.insertOrThrow("MqttArrivedMessageTable", null, contentValues);
            aVar.a(str2);
            Objects.requireNonNull(aVar.f3919c);
            Bundle bundleE = e(string, str, nVar);
            bundleE.putString("MqttService.callbackAction", "messageArrived");
            bundleE.putString("MqttService.messageId", string);
            this.f3923c.b(this.f3922b, org.eclipse.paho.android.service.a.OK, bundleE);
        } catch (SQLException e4) {
            Objects.requireNonNull(aVar.f3919c);
            throw e4;
        }
    }

    @Override // x2.g
    public void b(Throwable th) {
        MqttService mqttService = this.f3923c;
        th.getMessage();
        Objects.requireNonNull(mqttService);
        try {
            Objects.requireNonNull(null);
            throw null;
        } catch (Exception unused) {
            Bundle bundle = new Bundle();
            bundle.putString("MqttService.callbackAction", "onConnectionLost");
            bundle.putString("MqttService.errorMessage", th.getMessage());
            bundle.putSerializable("MqttService.exception", th);
            bundle.putString("MqttService.exceptionStack", Log.getStackTraceString(th));
            this.f3923c.b(this.f3922b, org.eclipse.paho.android.service.a.OK, bundle);
            f();
        }
    }

    @Override // x2.g
    public void c(x2.c cVar) {
        org.eclipse.paho.android.service.a aVar = org.eclipse.paho.android.service.a.OK;
        MqttService mqttService = this.f3923c;
        Objects.toString(cVar);
        Objects.requireNonNull(mqttService);
        n nVarRemove = this.f3925e.remove(cVar);
        if (nVarRemove != null) {
            String strRemove = this.f3924d.remove(cVar);
            String strRemove2 = this.f3926f.remove(cVar);
            String strRemove3 = this.f3927g.remove(cVar);
            Bundle bundleE = e(null, strRemove, nVarRemove);
            if (strRemove2 != null) {
                bundleE.putString("MqttService.callbackAction", "send");
                bundleE.putString("MqttService.activityToken", strRemove2);
                bundleE.putString("MqttService.invocationContext", strRemove3);
                this.f3923c.b(this.f3922b, aVar, bundleE);
            }
            bundleE.putString("MqttService.callbackAction", "messageDelivered");
            this.f3923c.b(this.f3922b, aVar, bundleE);
        }
    }

    @Override // x2.h
    public void d(boolean z3, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "connectExtended");
        bundle.putBoolean("MqttService.reconnect", z3);
        bundle.putString("MqttService.serverURI", str);
        this.f3923c.b(this.f3922b, org.eclipse.paho.android.service.a.OK, bundle);
    }

    public final Bundle e(String str, String str2, n nVar) {
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.messageId", str);
        bundle.putString("MqttService.destinationName", str2);
        bundle.putParcelable("MqttService.PARCEL", new f(nVar));
        return bundle;
    }

    public final void f() {
        PowerManager.WakeLock wakeLock = this.f3928h;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        this.f3928h.release();
    }
}
