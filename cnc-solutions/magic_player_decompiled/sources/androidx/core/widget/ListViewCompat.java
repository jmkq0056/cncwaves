package androidx.core.widget;

import android.widget.ListView;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public final class ListViewCompat {
    private ListViewCompat() {
    }

    public static boolean canScrollList(@NonNull ListView listView, int i4) {
        return listView.canScrollList(i4);
    }

    public static void scrollListBy(@NonNull ListView listView, int i4) {
        listView.scrollListBy(i4);
    }
}
