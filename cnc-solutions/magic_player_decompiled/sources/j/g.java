package j;

import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1944f;

    public g(int i4, int i5, int i6, int i7, int i8, int i9) {
        this.f1939a = i4;
        this.f1940b = i5;
        this.f1941c = i6;
        this.f1942d = i7;
        this.f1943e = i8;
        this.f1944f = i9;
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("FaceDetectEvent{male=");
        sbA.append(this.f1939a);
        sbA.append(", female=");
        sbA.append(this.f1940b);
        sbA.append(", child=");
        sbA.append(this.f1941c);
        sbA.append(", young=");
        sbA.append(this.f1942d);
        sbA.append(", middle=");
        sbA.append(this.f1943e);
        sbA.append(", old=");
        sbA.append(this.f1944f);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }
}
