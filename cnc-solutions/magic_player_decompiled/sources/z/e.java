package z;

import java.util.ArrayList;
import java.util.List;
import z.d;

/* JADX INFO: loaded from: classes.dex */
public class e implements d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<String> f4193a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4194b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4195c = 0;

    public void a(List<String> list) {
        this.f4193a.clear();
        if (list != null) {
            this.f4193a.addAll(list);
        }
    }
}
