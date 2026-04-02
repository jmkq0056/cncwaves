package p3;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class g extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference<d> f3051a;

    public g(d dVar) {
        super(Looper.getMainLooper());
        this.f3051a = new WeakReference<>(dVar);
    }

    @Override // android.os.Handler
    public void handleMessage(@NonNull Message message) {
        d dVar = this.f3051a.get();
        if (dVar == null) {
            return;
        }
        if (message.what == -1) {
            dVar.invalidateSelf();
            return;
        }
        Iterator<a> it = dVar.f3035h.iterator();
        while (it.hasNext()) {
            it.next().b(message.what);
        }
    }
}
