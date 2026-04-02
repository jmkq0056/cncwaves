package cn.huidu.lcd.render.media;

import android.content.Context;
import android.os.Looper;
import android.view.TextureView;
import d.d;

/* JADX INFO: loaded from: classes.dex */
public class AspectTextureView extends TextureView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f445c;

    public AspectTextureView(Context context) {
        super(context);
    }

    public void a(boolean z3, int i4, int i5) {
        this.f445c = z3;
        this.f443a = i4;
        this.f444b = i5;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            post(new d(this));
        } else {
            requestLayout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005e A[PHI: r1 r7
      0x005e: PHI (r1v5 int) = (r1v2 int), (r1v2 int), (r1v8 int), (r1v8 int) binds: [B:36:0x006e, B:37:0x0070, B:27:0x0059, B:28:0x005b] A[DONT_GENERATE, DONT_INLINE]
      0x005e: PHI (r7v5 int) = (r7v3 int), (r7v3 int), (r7v1 int), (r7v1 int) binds: [B:36:0x006e, B:37:0x0070, B:27:0x0059, B:28:0x005b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.f443a
            if (r0 <= 0) goto L7a
            int r0 = r5.f444b
            if (r0 <= 0) goto L7a
            boolean r0 = r5.f445c
            if (r0 != 0) goto Le
            goto L7a
        Le:
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L3e
            if (r1 != r2) goto L3e
            int r0 = r5.f443a
            int r1 = r0 * r7
            int r2 = r5.f444b
            int r3 = r6 * r2
            if (r1 >= r3) goto L33
            int r0 = r0 * r7
            int r6 = r0 / r2
            goto L76
        L33:
            int r1 = r0 * r7
            int r3 = r6 * r2
            if (r1 <= r3) goto L76
            int r2 = r2 * r6
            int r7 = r2 / r0
            goto L76
        L3e:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L50
            int r0 = r5.f444b
            int r0 = r0 * r6
            int r2 = r5.f443a
            int r0 = r0 / r2
            if (r1 != r3) goto L4e
            if (r0 <= r7) goto L4e
            goto L76
        L4e:
            r7 = r0
            goto L76
        L50:
            if (r1 != r2) goto L60
            int r1 = r5.f443a
            int r1 = r1 * r7
            int r2 = r5.f444b
            int r1 = r1 / r2
            if (r0 != r3) goto L5e
            if (r1 <= r6) goto L5e
            goto L76
        L5e:
            r6 = r1
            goto L76
        L60:
            int r2 = r5.f443a
            int r4 = r5.f444b
            if (r1 != r3) goto L6c
            if (r4 <= r7) goto L6c
            int r1 = r7 * r2
            int r1 = r1 / r4
            goto L6e
        L6c:
            r1 = r2
            r7 = r4
        L6e:
            if (r0 != r3) goto L5e
            if (r1 <= r6) goto L5e
            int r4 = r4 * r6
            int r7 = r4 / r2
        L76:
            r5.setMeasuredDimension(r6, r7)
            return
        L7a:
            super.onMeasure(r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.render.media.AspectTextureView.onMeasure(int, int):void");
    }
}
