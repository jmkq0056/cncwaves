package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import m1.k;

/* JADX INFO: loaded from: classes.dex */
public final class a extends View implements SubtitleView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<k> f1323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<j1.b> f1324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1325c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1326d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j1.a f1327e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f1328f;

    public a(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1323a = new ArrayList();
        this.f1324b = Collections.emptyList();
        this.f1325c = 0;
        this.f1326d = 0.0533f;
        this.f1327e = j1.a.f1977g;
        this.f1328f = 0.08f;
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<j1.b> list, j1.a aVar, float f4, int i4, float f5) {
        this.f1324b = list;
        this.f1327e = aVar;
        this.f1326d = f4;
        this.f1325c = i4;
        this.f1328f = f5;
        while (this.f1323a.size() < list.size()) {
            this.f1323a.add(new k(getContext()));
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:172:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04a9  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dispatchDraw(android.graphics.Canvas r40) {
        /*
            Method dump skipped, instruction units count: 1247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.a.dispatchDraw(android.graphics.Canvas):void");
    }
}
