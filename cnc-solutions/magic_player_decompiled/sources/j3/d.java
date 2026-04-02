package j3;

import android.database.SQLException;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class d extends SQLException {
    private static final long serialVersionUID = -5877937327907457779L;

    public d(String str) {
        super(str);
    }

    public d(String str, Throwable th) {
        super(str);
        try {
            initCause(th);
        } catch (Throwable th2) {
            Log.e("greenDAO", "Could not set initial cause", th2);
            Log.e("greenDAO", "Initial cause is:", th);
        }
    }

    public d(Throwable th) {
        try {
            initCause(th);
        } catch (Throwable th2) {
            Log.e("greenDAO", "Could not set initial cause", th2);
            Log.e("greenDAO", "Initial cause is:", th);
        }
    }
}
