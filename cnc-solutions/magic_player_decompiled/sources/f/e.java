package f;

import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class e {
    @NonNull
    public static f a(Context context) {
        int i4 = Build.VERSION.SDK_INT;
        return i4 >= 28 ? new d(context) : i4 >= 24 ? new c(context) : i4 >= 21 ? new b(context) : new a(context);
    }
}
