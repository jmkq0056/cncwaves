package b2;

import android.net.ConnectivityManager;
import android.net.Network;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends ConnectivityManager.NetworkCallback {
    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(@NonNull Network network) {
        super.onAvailable(network);
        int i4 = e.f243n;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onUnavailable() {
        super.onUnavailable();
        int i4 = e.f243n;
    }
}
