package h0;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class i {
    public static boolean a(List<String> list, List<String> list2) {
        if (list != null && list2 != null) {
            for (int i4 = 0; i4 < list.size(); i4++) {
                if (list2.contains(list.get(i4))) {
                    return true;
                }
            }
        }
        return false;
    }
}
