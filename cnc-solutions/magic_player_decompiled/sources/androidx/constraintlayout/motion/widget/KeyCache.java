package androidx.constraintlayout.motion.widget;

import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class KeyCache {
    public HashMap<Object, HashMap<String, float[]>> map = new HashMap<>();

    public float getFloatValue(Object obj, String str, int i4) {
        if (!this.map.containsKey(obj)) {
            return Float.NaN;
        }
        HashMap<String, float[]> map = this.map.get(obj);
        if (!map.containsKey(str)) {
            return Float.NaN;
        }
        float[] fArr = map.get(str);
        if (fArr.length > i4) {
            return fArr[i4];
        }
        return Float.NaN;
    }

    public void setFloatValue(Object obj, String str, int i4, float f4) {
        if (!this.map.containsKey(obj)) {
            HashMap<String, float[]> map = new HashMap<>();
            float[] fArr = new float[i4 + 1];
            fArr[i4] = f4;
            map.put(str, fArr);
            this.map.put(obj, map);
            return;
        }
        HashMap<String, float[]> map2 = this.map.get(obj);
        if (!map2.containsKey(str)) {
            float[] fArr2 = new float[i4 + 1];
            fArr2[i4] = f4;
            map2.put(str, fArr2);
            this.map.put(obj, map2);
            return;
        }
        float[] fArrCopyOf = map2.get(str);
        if (fArrCopyOf.length <= i4) {
            fArrCopyOf = Arrays.copyOf(fArrCopyOf, i4 + 1);
        }
        fArrCopyOf[i4] = f4;
        map2.put(str, fArrCopyOf);
    }
}
