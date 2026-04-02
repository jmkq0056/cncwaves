package m1;

import android.view.View;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2492a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2493b;

    public /* synthetic */ d(StyledPlayerControlView styledPlayerControlView) {
        this.f2493b = styledPlayerControlView;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        switch (this.f2492a) {
            case 0:
                StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) this.f2493b;
                int i12 = StyledPlayerControlView.f1202w0;
                Objects.requireNonNull(styledPlayerControlView);
                int i13 = i7 - i5;
                int i14 = i11 - i9;
                if ((i6 - i4 != i10 - i8 || i13 != i14) && styledPlayerControlView.f1220i0.isShowing()) {
                    styledPlayerControlView.n();
                    styledPlayerControlView.f1220i0.update(view, (styledPlayerControlView.getWidth() - styledPlayerControlView.f1220i0.getWidth()) - styledPlayerControlView.f1232o0, (-styledPlayerControlView.f1220i0.getHeight()) - styledPlayerControlView.f1232o0, -1, -1);
                }
                break;
            default:
                j jVar = (j) this.f2493b;
                boolean z3 = (jVar.f2505a.getWidth() - jVar.f2505a.getPaddingLeft()) - jVar.f2505a.getPaddingRight() <= Math.max(j.e(jVar.f2506b), j.e(jVar.f2514j) + j.e(jVar.f2512h)) || (jVar.f2505a.getHeight() - jVar.f2505a.getPaddingBottom()) - jVar.f2505a.getPaddingTop() <= j.c(jVar.f2507c) + (j.c(jVar.f2513i) + j.c(jVar.f2506b));
                if (jVar.f2530z != z3) {
                    jVar.f2530z = z3;
                    view.post(new i(jVar, 5));
                }
                boolean z4 = i6 - i4 != i10 - i8;
                if (!jVar.f2530z && z4) {
                    view.post(new i(jVar, 6));
                    break;
                }
                break;
        }
    }
}
