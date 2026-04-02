package f;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f1624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f1627f;

    public void a() {
        if (TextUtils.isEmpty(this.f1623b)) {
            this.f1623b = StringUtil.ALL_INTERFACES;
        }
        if (TextUtils.isEmpty(this.f1624c)) {
            this.f1624c = StringUtil.ALL_INTERFACES;
        }
        if (TextUtils.isEmpty(this.f1625d)) {
            this.f1625d = StringUtil.ALL_INTERFACES;
        }
        if (TextUtils.isEmpty(this.f1626e)) {
            this.f1626e = StringUtil.ALL_INTERFACES;
        }
        if (TextUtils.isEmpty(this.f1627f)) {
            this.f1627f = StringUtil.ALL_INTERFACES;
        }
    }

    @NonNull
    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("dhcp = ");
        sbA.append(this.f1622a);
        sbA.append(", ip = ");
        sbA.append(this.f1623b);
        sbA.append(", netmask = ");
        sbA.append(this.f1624c);
        sbA.append(", gateway = ");
        sbA.append(this.f1625d);
        sbA.append(", dns1 = ");
        sbA.append(this.f1626e);
        sbA.append(", dns2 = ");
        sbA.append(this.f1627f);
        return sbA.toString();
    }
}
