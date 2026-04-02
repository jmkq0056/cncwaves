package androidx.core.graphics;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public final class PathUtils {
    private PathUtils() {
    }

    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path) {
        return flatten(path, 0.5f);
    }

    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path, @FloatRange(from = 0.0d) float f4) {
        float[] fArrApproximate = path.approximate(f4);
        int length = fArrApproximate.length / 3;
        ArrayList arrayList = new ArrayList(length);
        for (int i4 = 1; i4 < length; i4++) {
            int i5 = i4 * 3;
            int i6 = (i4 - 1) * 3;
            float f5 = fArrApproximate[i5];
            float f6 = fArrApproximate[i5 + 1];
            float f7 = fArrApproximate[i5 + 2];
            float f8 = fArrApproximate[i6];
            float f9 = fArrApproximate[i6 + 1];
            float f10 = fArrApproximate[i6 + 2];
            if (f5 != f8 && (f6 != f9 || f7 != f10)) {
                arrayList.add(new PathSegment(new PointF(f9, f10), f8, new PointF(f6, f7), f5));
            }
        }
        return arrayList;
    }
}
