package u0;

import android.util.Log;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class g implements o0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f3561a;

    public g(h hVar) {
        this.f3561a = hVar;
    }

    @Override // o0.a
    public void a(boolean z3) {
        if (z3) {
            return;
        }
        Log.d("UpdateScreenParamsTask", "Transfer file failed!");
        this.f3561a.a();
    }

    @Override // o0.a
    public void b(String str, float f4) {
        this.f3561a.e(101, Math.round(f4));
    }

    @Override // o0.a
    public void c(String str, boolean z3, Map<String, String> map) {
        if (!z3) {
            this.f3561a.a();
            return;
        }
        String str2 = map.get(this.f3561a.f3562i.name);
        if (l.e.u(str2)) {
            s.a.b().a(new m.b(this, str2));
            return;
        }
        h hVar = this.f3561a;
        StringBuilder sbA = android.support.v4.media.f.a("file not found: ");
        sbA.append(this.f3561a.f3562i.name);
        hVar.d("kFileReceiveFailed", sbA.toString());
    }
}
