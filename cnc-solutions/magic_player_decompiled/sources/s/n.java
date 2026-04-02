package s;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class n extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakReference<Handler.Callback> f3424a;

    public n(Handler.Callback callback) {
        this.f3424a = new WeakReference<>(callback);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Handler.Callback callback = this.f3424a.get();
        if (callback != null) {
            callback.handleMessage(message);
        }
    }
}
