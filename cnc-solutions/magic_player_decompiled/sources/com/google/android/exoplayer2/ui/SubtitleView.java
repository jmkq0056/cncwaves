package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import j1.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public final class SubtitleView extends FrameLayout implements j1.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<j1.b> f1303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j1.a f1304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1306d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1308f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1309g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f1311i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f1312j;

    public interface a {
        void a(List<j1.b> list, j1.a aVar, float f4, int i4, float f5);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    private List<j1.b> getCuesWithStylingPreferencesApplied() {
        if (this.f1308f && this.f1309g) {
            return this.f1303a;
        }
        ArrayList arrayList = new ArrayList(this.f1303a.size());
        for (int i4 = 0; i4 < this.f1303a.size(); i4++) {
            j1.b bVarA = this.f1303a.get(i4);
            CharSequence charSequence = bVarA.f1984a;
            if (!this.f1308f) {
                b.C0027b c0027bA = bVarA.a();
                c0027bA.f2008j = -3.4028235E38f;
                c0027bA.f2007i = Integer.MIN_VALUE;
                c0027bA.f2011m = false;
                if (charSequence != null) {
                    c0027bA.f1999a = charSequence.toString();
                }
                bVarA = c0027bA.a();
            } else if (!this.f1309g && charSequence != null) {
                b.C0027b c0027bA2 = bVarA.a();
                c0027bA2.f2008j = -3.4028235E38f;
                c0027bA2.f2007i = Integer.MIN_VALUE;
                if (charSequence instanceof Spanned) {
                    SpannableString spannableStringValueOf = SpannableString.valueOf(charSequence);
                    for (AbsoluteSizeSpan absoluteSizeSpan : (AbsoluteSizeSpan[]) spannableStringValueOf.getSpans(0, spannableStringValueOf.length(), AbsoluteSizeSpan.class)) {
                        spannableStringValueOf.removeSpan(absoluteSizeSpan);
                    }
                    for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) spannableStringValueOf.getSpans(0, spannableStringValueOf.length(), RelativeSizeSpan.class)) {
                        spannableStringValueOf.removeSpan(relativeSizeSpan);
                    }
                    c0027bA2.f1999a = spannableStringValueOf;
                }
                bVarA = c0027bA2.a();
            }
            arrayList.add(bVarA);
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (e.f2847a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private j1.a getUserCaptionStyle() {
        int i4 = e.f2847a;
        if (i4 < 19 || isInEditMode()) {
            return j1.a.f1977g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        if (captioningManager == null || !captioningManager.isEnabled()) {
            return j1.a.f1977g;
        }
        CaptioningManager.CaptionStyle userStyle = captioningManager.getUserStyle();
        if (i4 < 21) {
            return new j1.a(userStyle.foregroundColor, userStyle.backgroundColor, 0, userStyle.edgeType, userStyle.edgeColor, userStyle.getTypeface());
        }
        return new j1.a(userStyle.hasForegroundColor() ? userStyle.foregroundColor : -1, userStyle.hasBackgroundColor() ? userStyle.backgroundColor : ViewCompat.MEASURED_STATE_MASK, userStyle.hasWindowColor() ? userStyle.windowColor : 0, userStyle.hasEdgeType() ? userStyle.edgeType : 0, userStyle.hasEdgeColor() ? userStyle.edgeColor : -1, userStyle.getTypeface());
    }

    private <T extends View & a> void setView(T t3) {
        removeView(this.f1312j);
        View view = this.f1312j;
        if (view instanceof d) {
            ((d) view).f1340b.destroy();
        }
        this.f1312j = t3;
        this.f1311i = t3;
        addView(t3);
    }

    public void a() {
        setStyle(getUserCaptionStyle());
    }

    public void b() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public final void c() {
        this.f1311i.a(getCuesWithStylingPreferencesApplied(), this.f1304b, this.f1306d, this.f1305c, this.f1307e);
    }

    public void setApplyEmbeddedFontSizes(boolean z3) {
        this.f1309g = z3;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z3) {
        this.f1308f = z3;
        c();
    }

    public void setBottomPaddingFraction(float f4) {
        this.f1307e = f4;
        c();
    }

    public void setCues(@Nullable List<j1.b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f1303a = list;
        c();
    }

    public void setFractionalTextSize(float f4) {
        this.f1305c = 0;
        this.f1306d = f4;
        c();
    }

    public void setStyle(j1.a aVar) {
        this.f1304b = aVar;
        c();
    }

    public void setViewType(int i4) {
        if (this.f1310h == i4) {
            return;
        }
        if (i4 == 1) {
            setView(new com.google.android.exoplayer2.ui.a(getContext(), null));
        } else {
            if (i4 != 2) {
                throw new IllegalArgumentException();
            }
            setView(new d(getContext()));
        }
        this.f1310h = i4;
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1303a = Collections.emptyList();
        this.f1304b = j1.a.f1977g;
        this.f1305c = 0;
        this.f1306d = 0.0533f;
        this.f1307e = 0.08f;
        this.f1308f = true;
        this.f1309g = true;
        com.google.android.exoplayer2.ui.a aVar = new com.google.android.exoplayer2.ui.a(context, attributeSet);
        this.f1311i = aVar;
        this.f1312j = aVar;
        addView(aVar);
        this.f1310h = 1;
    }
}
