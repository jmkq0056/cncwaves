package cn.huidu.lcd.setting.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;

/* JADX INFO: loaded from: classes.dex */
public class BaseLinearLayoutManager extends LinearLayoutManager {
    public BaseLinearLayoutManager(Context context) {
        super(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r9, int r10, androidx.recyclerview.widget.RecyclerView.Recycler r11, androidx.recyclerview.widget.RecyclerView.State r12) {
        /*
            r8 = this;
            android.view.View r9 = super.onFocusSearchFailed(r9, r10, r11, r12)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r0 = "onFocusSearchFailed: +++"
            r11.append(r0)
            r11.append(r10)
            java.lang.String r1 = "////"
            r11.append(r1)
            r11.append(r12)
            r11.append(r9)
            java.lang.String r11 = r11.toString()
            java.lang.String r12 = "BaseLinearLayoutManager"
            android.util.Log.d(r12, r11)
            if (r9 != 0) goto L29
            r9 = 0
            return r9
        L29:
            android.view.View r9 = r8.getFocusedChild()
            int r9 = r8.getPosition(r9)
            int r11 = r8.getOrientation()
            r1 = 130(0x82, float:1.82E-43)
            r2 = 66
            r3 = 33
            r4 = 17
            r5 = -1
            r6 = 0
            r7 = 1
            if (r11 != r7) goto L4b
            if (r10 == r4) goto L59
            if (r10 == r3) goto L59
            if (r10 == r2) goto L56
            if (r10 == r1) goto L56
            goto L58
        L4b:
            if (r11 != 0) goto L58
            if (r10 == r4) goto L59
            if (r10 == r3) goto L59
            if (r10 == r2) goto L56
            if (r10 == r1) goto L56
            goto L58
        L56:
            r5 = 1
            goto L59
        L58:
            r5 = 0
        L59:
            int r10 = java.lang.Math.abs(r5)
            if (r10 != r7) goto L67
            int r10 = r9 % 1
            int r10 = r10 + r5
            if (r10 < 0) goto L6d
            if (r10 < r7) goto L6e
            goto L6d
        L67:
            int r10 = r9 + r5
            if (r10 >= 0) goto L6e
            if (r10 < r7) goto L6e
        L6d:
            r6 = 1
        L6e:
            if (r6 == 0) goto L72
            r5 = r9
            goto L73
        L72:
            int r5 = r5 + r9
        L73:
            java.lang.String r10 = "///"
            a.b.a(r0, r9, r10, r5, r12)
            android.view.View r9 = r8.findViewByPosition(r5)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.setting.ui.base.BaseLinearLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    public BaseLinearLayoutManager(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
    }
}
