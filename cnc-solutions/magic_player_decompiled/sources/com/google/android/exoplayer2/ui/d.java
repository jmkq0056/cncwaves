package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import m1.m;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public final class d extends FrameLayout implements SubtitleView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.exoplayer2.ui.a f1339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WebView f1340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<j1.b> f1341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public j1.a f1342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1344f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f1345g;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1346a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f1346a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1346a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1346a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public d(Context context) {
        super(context, null);
        this.f1341c = Collections.emptyList();
        this.f1342d = j1.a.f1977g;
        this.f1343e = 0.0533f;
        this.f1344f = 0;
        this.f1345g = 0.08f;
        com.google.android.exoplayer2.ui.a aVar = new com.google.android.exoplayer2.ui.a(context, null);
        this.f1339a = aVar;
        m mVar = new m(this, context, null);
        this.f1340b = mVar;
        mVar.setBackgroundColor(0);
        addView(aVar);
        addView(mVar);
    }

    public static int b(int i4) {
        if (i4 != 1) {
            return i4 != 2 ? 0 : -100;
        }
        return -50;
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<j1.b> list, j1.a aVar, float f4, int i4, float f5) {
        this.f1342d = aVar;
        this.f1343e = f4;
        this.f1344f = i4;
        this.f1345g = f5;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i5 = 0; i5 < list.size(); i5++) {
            j1.b bVar = list.get(i5);
            if (bVar.f1986c != null) {
                arrayList.add(bVar);
            } else {
                arrayList2.add(bVar);
            }
        }
        if (!this.f1341c.isEmpty() || !arrayList2.isEmpty()) {
            this.f1341c = arrayList2;
            d();
        }
        this.f1339a.a(arrayList, aVar, f4, i4, f5);
        invalidate();
    }

    public final String c(int i4, float f4) {
        float fB = m1.b.b(i4, f4, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return fB == -3.4028235E38f ? "unset" : e.d("%.2fpx", Float.valueOf(fB / getContext().getResources().getDisplayMetrics().density));
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0468 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x020b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            Method dump skipped, instruction units count: 1548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.d.d():void");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i4, int i5, int i6, int i7) {
        super.onLayout(z3, i4, i5, i6, i7);
        if (!z3 || this.f1341c.isEmpty()) {
            return;
        }
        d();
    }
}
