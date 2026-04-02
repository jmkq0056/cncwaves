package o;

import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2821b;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f2831l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f2832m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2822c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2823d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2824e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2825f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2826g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2827h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f2828i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2829j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2830k = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2833n = false;

    public d() {
    }

    public String toString() {
        StringBuilder sbA = android.support.v4.media.f.a("SwitchPowerItemModel{startTime='");
        k.a.a(sbA, this.f2820a, '\'', ", endTime='");
        k.a.a(sbA, this.f2821b, '\'', ", isWeek=");
        sbA.append(this.f2822c);
        sbA.append(", playOnMonday=");
        sbA.append(this.f2823d);
        sbA.append(", playOnTuesday=");
        sbA.append(this.f2824e);
        sbA.append(", playOnWednesday=");
        sbA.append(this.f2825f);
        sbA.append(", playOnThursday=");
        sbA.append(this.f2826g);
        sbA.append(", playOnFriday=");
        sbA.append(this.f2827h);
        sbA.append(", playOnSaturday=");
        sbA.append(this.f2828i);
        sbA.append(", playOnSunday=");
        sbA.append(this.f2829j);
        sbA.append(", isDate=");
        sbA.append(this.f2830k);
        sbA.append(", startDate='");
        k.a.a(sbA, this.f2831l, '\'', ", endDate='");
        k.a.a(sbA, this.f2832m, '\'', ", delete=");
        sbA.append(this.f2833n);
        sbA.append(MessageFormatter.DELIM_STOP);
        return sbA.toString();
    }

    public d(String str, String str2) {
        this.f2820a = str;
        this.f2821b = str2;
    }
}
