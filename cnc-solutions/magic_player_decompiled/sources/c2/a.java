package c2;

import android.support.v4.media.h;
import android.text.TextUtils;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    @NonNull
    public static String a(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int length = str.length() - 1;
        return length >= 0 ? (str.charAt(0) == '\"' && str.charAt(length) == '\"') ? str : h.a("\"", str, "\"") : str;
    }
}
