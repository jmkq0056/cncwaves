package d;

import android.hardware.Camera;
import android.util.Log;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import cn.huidu.lcd.arcface.FaceRectView;
import d.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b implements l.i, a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f1420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Camera.Size f1421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public List<c> f1423d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ViewGroup f1425f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextureView f1426g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FaceRectView f1427h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f1428i;

    public b() {
        a aVar = new a();
        this.f1420a = aVar;
        aVar.f1414e = this;
    }

    @Override // l.i
    public void a(ViewGroup viewGroup) {
        this.f1425f = viewGroup;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014d  */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.view.TextureView] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    @Override // l.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(n.f r14) {
        /*
            Method dump skipped, instruction units count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.b(n.f):void");
    }

    @Override // l.i
    public void c() {
        if (this.f1424e) {
            Log.d("FaceDetectController", "restart camera");
            this.f1420a.d();
            this.f1420a.c();
        }
    }

    public final void d() {
        TextureView textureView = this.f1426g;
        if (textureView != null) {
            f(textureView);
            this.f1426g = null;
        }
        FaceRectView faceRectView = this.f1427h;
        if (faceRectView != null) {
            f(faceRectView);
            this.f1427h = null;
        }
        TextView textView = this.f1428i;
        if (textView != null) {
            f(textView);
            this.f1428i = null;
        }
    }

    public void e(Camera camera, int i4, int i5) {
        this.f1422c = i5;
        this.f1421b = camera.getParameters().getPreviewSize();
        StringBuilder sbA = android.support.v4.media.a.a("onCameraOpened: ", i4, ", width: ");
        sbA.append(this.f1421b.width);
        sbA.append(", height: ");
        sbA.append(this.f1421b.height);
        sbA.append(", orientation: ");
        sbA.append(i5);
        Log.d("FaceDetectController", sbA.toString());
    }

    public final void f(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    @Override // l.i
    public void onStart() {
        Log.d("FaceDetectController", "onStart: ");
        b((n.f) l.b.c().a(n.f.class));
    }

    @Override // l.i
    public void onStop() {
        Log.d("FaceDetectController", "onStop: ");
        b(null);
    }
}
