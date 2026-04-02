package q0;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f3100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f3102d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public FileOutputStream f3104f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3105g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f3106h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f3107i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f3108j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f3109k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Map<String, String> f3110l = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f3111m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3112n;

    public void a() {
        FileOutputStream fileOutputStream = this.f3104f;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
                this.f3104f = null;
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
    }

    public long b(File file, String str, String str2, long j4) {
        a();
        long length = file.exists() ? file.length() : 0L;
        if (length < j4) {
            this.f3105g = false;
            this.f3104f = new FileOutputStream(file, true);
        } else {
            this.f3105g = true;
        }
        this.f3106h = str;
        this.f3107i = file.getAbsolutePath();
        this.f3108j = str2;
        this.f3109k = j4;
        this.f3103e = true;
        this.f3111m += length;
        return length;
    }
}
