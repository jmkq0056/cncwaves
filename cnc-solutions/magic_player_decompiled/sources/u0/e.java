package u0;

import android.util.Log;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class e implements o0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f3558a;

    public e(f fVar) {
        this.f3558a = fVar;
    }

    @Override // o0.a
    public void a(boolean z3) {
        if (z3) {
            return;
        }
        Log.d("UpdateProgramTask", "Transfer file failed!");
        this.f3558a.a();
    }

    @Override // o0.a
    public void b(String str, float f4) {
        this.f3558a.e(101, Math.round(f4));
    }

    @Override // o0.a
    public void c(String str, boolean z3, Map<String, String> map) {
        if (!z3) {
            this.f3558a.a();
        } else {
            f fVar = this.f3558a;
            fVar.g(fVar.f3559i, map);
        }
    }
}
