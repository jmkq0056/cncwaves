package i;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

/* JADX INFO: loaded from: classes.dex */
public class c extends ResultReceiver {
    public c(d dVar, Handler handler) {
        super(handler);
    }

    @Override // android.os.ResultReceiver
    public void onReceiveResult(int i4, Bundle bundle) {
        a.a.a("onReceiveResult: resultCode=", i4, "WifiApUtils");
    }
}
