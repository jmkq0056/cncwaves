package com.google.android.exoplayer2.ui;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import l1.a;
import m1.l;

/* JADX INFO: loaded from: classes.dex */
public class TrackSelectionView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CheckedTextView f1313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CheckedTextView f1314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<a.d> f1315c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1316d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public l f1318f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public h1.b f1319g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1320h;

    public class b implements View.OnClickListener {
        public b(a aVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView trackSelectionView = TrackSelectionView.this;
            if (view == trackSelectionView.f1313a) {
                trackSelectionView.f1320h = true;
                trackSelectionView.f1315c.clear();
            } else {
                if (view != trackSelectionView.f1314b) {
                    trackSelectionView.f1320h = false;
                    Object tag = view.getTag();
                    Objects.requireNonNull(tag);
                    trackSelectionView.f1315c.get(((c) tag).f1322a);
                    Objects.requireNonNull(null);
                    throw null;
                }
                trackSelectionView.f1320h = false;
                trackSelectionView.f1315c.clear();
            }
            trackSelectionView.a();
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1322a;
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public final void a() {
        this.f1313a.setChecked(this.f1320h);
        this.f1314b.setChecked(!this.f1320h && this.f1315c.size() == 0);
        throw null;
    }

    public final void b() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 3) {
                this.f1313a.setEnabled(false);
                this.f1314b.setEnabled(false);
                return;
            }
            removeViewAt(childCount);
        }
    }

    public boolean getIsDisabled() {
        return this.f1320h;
    }

    public List<a.d> getOverrides() {
        ArrayList arrayList = new ArrayList(this.f1315c.size());
        for (int i4 = 0; i4 < this.f1315c.size(); i4++) {
            arrayList.add(this.f1315c.valueAt(i4));
        }
        return arrayList;
    }

    public void setAllowAdaptiveSelections(boolean z3) {
        if (this.f1316d != z3) {
            this.f1316d = z3;
            b();
        }
    }

    public void setAllowMultipleOverrides(boolean z3) {
        if (this.f1317e != z3) {
            this.f1317e = z3;
            if (!z3 && this.f1315c.size() > 1) {
                for (int size = this.f1315c.size() - 1; size > 0; size--) {
                    this.f1315c.remove(size);
                }
            }
            b();
        }
    }

    public void setShowDisableOption(boolean z3) {
        this.f1313a.setVisibility(z3 ? 0 : 8);
    }

    public void setTrackNameProvider(l lVar) {
        Objects.requireNonNull(lVar);
        this.f1318f = lVar;
        b();
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet, @AttrRes int i4) {
        super(context, attributeSet, i4);
        setOrientation(1);
        this.f1315c = new SparseArray<>();
        setSaveFromParentEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        b bVar = new b(null);
        this.f1318f = new m1.a(getResources());
        this.f1319g = h1.b.f1857d;
        CheckedTextView checkedTextView = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f1313a = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(R$string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(bVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(layoutInflaterFrom.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f1314b = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(R$string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(bVar);
        addView(checkedTextView2);
    }
}
