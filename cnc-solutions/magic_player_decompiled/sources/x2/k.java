package x2;

import java.util.Enumeration;
import java.util.Properties;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public char[] f3976c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3974a = 60;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3977d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3978e = 30;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3979f = 0;

    public void a(int i4) {
        if (i4 == 0 || i4 == 3 || i4 == 4) {
            this.f3979f = i4;
            return;
        }
        throw new IllegalArgumentException("An incorrect version was used \"" + i4 + "\". Acceptable version options are 0, 3 and 4.");
    }

    public String toString() {
        String string;
        Properties properties = new Properties();
        properties.put("MqttVersion", Integer.valueOf(this.f3979f));
        properties.put("CleanSession", Boolean.valueOf(this.f3977d));
        properties.put("ConTimeout", Integer.valueOf(this.f3978e));
        properties.put("KeepAliveInterval", Integer.valueOf(this.f3974a));
        String str = this.f3975b;
        if (str == null) {
            str = "null";
        }
        properties.put("UserName", str);
        properties.put("WillDestination", "null");
        properties.put("SocketFactory", "null");
        properties.put("SSLProperties", "null");
        String str2 = f3.a.f1707a;
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        String str3 = f3.a.f1707a;
        StringBuilder sb = new StringBuilder(String.valueOf(str3));
        d.f.a(sb, "==============", " ", "Connection options", " ");
        sb.append("==============");
        sb.append(str3);
        stringBuffer.append(sb.toString());
        while (enumerationPropertyNames.hasMoreElements()) {
            String str4 = (String) enumerationPropertyNames.nextElement();
            if (str4.length() >= 28) {
                string = str4;
            } else {
                StringBuffer stringBuffer2 = new StringBuffer(28);
                stringBuffer2.append(str4);
                int length = 28 - str4.length();
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    stringBuffer2.append(' ');
                }
                string = stringBuffer2.toString();
            }
            stringBuffer.append(String.valueOf(string) + ":  " + properties.get(str4) + f3.a.f1707a);
        }
        stringBuffer.append("==========================================" + f3.a.f1707a);
        return stringBuffer.toString();
    }
}
