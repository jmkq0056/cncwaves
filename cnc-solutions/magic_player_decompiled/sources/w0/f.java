package w0;

import android.view.Window;
import androidx.annotation.NonNull;
import androidx.core.view.InputDeviceCompat;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static void a(@NonNull Window window) {
        window.getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
    }
}
