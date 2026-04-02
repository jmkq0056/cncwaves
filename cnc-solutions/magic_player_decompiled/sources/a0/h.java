package a0;

import android.app.Presentation;
import android.content.Context;
import android.os.Bundle;
import android.view.Display;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f39a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<Integer, a> f40b = new HashMap();

    public static class a extends Presentation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ViewGroup f41a;

        public a(Context context, Display display) {
            super(context, display);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            this.f41a = frameLayout;
        }

        @Override // android.app.Dialog
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setContentView(this.f41a, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    public h(Context context) {
        this.f39a = context;
    }

    public final void a(int i4) {
        a aVar = this.f40b.get(Integer.valueOf(i4));
        if (aVar != null) {
            a.a.a("removePresentation: ", i4, "Presentations");
            try {
                aVar.dismiss();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.f40b.put(Integer.valueOf(i4), null);
        }
    }
}
