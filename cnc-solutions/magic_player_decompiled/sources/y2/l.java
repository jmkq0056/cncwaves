package y2;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* JADX INFO: loaded from: classes2.dex */
public class l extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ResourceBundle f4141b = ResourceBundle.getBundle("org.eclipse.paho.client.mqttv3.internal.nls.messages");

    @Override // y2.h
    public String a(int i4) {
        try {
            return this.f4141b.getString(Integer.toString(i4));
        } catch (MissingResourceException unused) {
            return "MqttException";
        }
    }
}
