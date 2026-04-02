package u0;

import android.util.Log;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a implements o0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f3552a;

    public a(b bVar) {
        this.f3552a = bVar;
    }

    @Override // o0.a
    public void a(boolean z3) {
        if (z3) {
            return;
        }
        Log.d("AppUpgradeTask", "Transfer file failed!");
        this.f3552a.a();
    }

    @Override // o0.a
    public void b(String str, float f4) {
        this.f3552a.e(101, Math.round(f4));
    }

    @Override // o0.a
    public void c(String str, boolean z3, Map<String, String> map) {
        if (!z3) {
            this.f3552a.a();
            return;
        }
        String str2 = map.get(this.f3552a.f3554j.name);
        if (str2 != null) {
            s.a.b().a(new m.b(this, str2));
            return;
        }
        b bVar = this.f3552a;
        StringBuilder sbA = android.support.v4.media.f.a("file not found: ");
        sbA.append(this.f3552a.f3554j.name);
        bVar.d("kFileReceiveFailed", sbA.toString());
    }
}
