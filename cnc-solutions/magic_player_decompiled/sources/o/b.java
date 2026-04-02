package o;

import java.io.Serializable;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class b implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2808a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2811d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2809b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2812e = false;

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("CommonSelectTypeModel{typeName='");
        k.a.a(sbA, this.f2808a, '\'', ", typeId=");
        sbA.append(this.f2809b);
        sbA.append(", typeIdName='");
        k.a.a(sbA, this.f2810c, '\'', ", extraInfoStr='");
        k.a.a(sbA, this.f2811d, '\'', ", isSelected=");
        sbA.append(this.f2812e);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }
}
