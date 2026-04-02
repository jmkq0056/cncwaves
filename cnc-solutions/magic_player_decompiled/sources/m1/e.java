package m1;

import android.view.View;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import java.util.Objects;
import l1.a;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2494a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2495b;

    public /* synthetic */ e(StyledPlayerControlView.h hVar) {
        this.f2495b = hVar;
    }

    public /* synthetic */ e(StyledPlayerControlView.j jVar) {
        this.f2495b = jVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2494a) {
            case 0:
                StyledPlayerControlView.j jVar = (StyledPlayerControlView.j) this.f2495b;
                l1.a aVar = StyledPlayerControlView.this.f1234p0;
                if (aVar != null) {
                    a.c cVarA = aVar.a().a();
                    for (int i4 = 0; i4 < jVar.f1270a.size(); i4++) {
                        int iIntValue = jVar.f1270a.get(i4).intValue();
                        cVarA.b(iIntValue);
                        cVarA.c(iIntValue, true);
                    }
                    l1.a aVar2 = StyledPlayerControlView.this.f1234p0;
                    Objects.requireNonNull(aVar2);
                    aVar2.b(cVarA);
                    StyledPlayerControlView.this.f1220i0.dismiss();
                }
                break;
            default:
                StyledPlayerControlView.h hVar = (StyledPlayerControlView.h) this.f2495b;
                StyledPlayerControlView.a(StyledPlayerControlView.this, hVar.getAdapterPosition());
                break;
        }
    }
}
