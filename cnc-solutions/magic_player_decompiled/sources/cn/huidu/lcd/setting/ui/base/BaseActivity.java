package cn.huidu.lcd.setting.ui.base;

import android.annotation.TargetApi;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import cn.huidu.lcd.setting.R$color;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$string;
import g3.c;
import i0.d;
import i0.e;
import j.x;
import java.lang.ref.WeakReference;
import java.util.Objects;
import n0.a;
import q.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f817j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewGroup f818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewGroup f819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewGroup f820c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f821d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextView f822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f823f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f824g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Handler f825h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public n0.a f826i;

    public class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TextView f827a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f828b;

        public a(TextView textView, View view) {
            this.f827a = textView;
            this.f828b = view;
        }

        @Override // i0.e
        public void a(cn.huidu.lcd.setting.keyboard.a aVar) {
            int i4 = aVar.f541d;
            String str = aVar.f540c;
            if (i4 == 0) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                h.a.V(this.f827a, str);
            } else if (i4 == 67) {
                h.a.g(this.f827a);
            } else if (i4 == 4) {
                BaseActivity.this.m();
                this.f827a.setCursorVisible(false);
                this.f828b.requestFocus();
                this.f828b.setFocusable(true);
            }
        }

        @Override // i0.e
        public void b(cn.huidu.lcd.setting.keyboard.a aVar) {
            String str = aVar.f540c;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            h.a.V(this.f827a, str);
        }

        @Override // i0.e
        public void c(cn.huidu.lcd.setting.keyboard.a aVar) {
            BaseActivity.this.m();
            this.f827a.setCursorVisible(false);
            this.f828b.requestFocus();
            this.f828b.setFocusable(true);
        }

        @Override // i0.e
        public void d(cn.huidu.lcd.setting.keyboard.a aVar) {
            h.a.g(this.f827a);
        }
    }

    public static class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public WeakReference<BaseActivity> f830a;

        public b(BaseActivity baseActivity) {
            this.f830a = new WeakReference<>(baseActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            BaseActivity baseActivity = this.f830a.get();
            if (baseActivity != null) {
                int i4 = BaseActivity.f817j;
                if (message.what == 1001) {
                    Log.d("BaseActivity", "onHandleMessage: start player >>");
                    baseActivity.w();
                    l.e.C(baseActivity);
                }
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            o();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 164) {
                c.b().f(new x(keyCode));
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 1) {
            o();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void i() {
        finish();
    }

    public void j(View view, boolean z3) {
        if (z3) {
            return;
        }
        view.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
    }

    public void k(View view, TextView textView) {
        if (this.f823f == null) {
            d dVar = new d();
            this.f823f = dVar;
            dVar.f1889d = true;
        }
        this.f823f.a(this, this.f824g);
        textView.setCursorVisible(true);
        this.f822e = textView;
        this.f823f.f1886a.setOnSoftKeyBoardListener(new a(textView, view));
    }

    public boolean l() {
        return false;
    }

    public void m() {
        ViewGroup viewGroup;
        TextView textView = this.f822e;
        if (textView != null) {
            textView.setCursorVisible(false);
        }
        d dVar = this.f823f;
        if (dVar != null && (viewGroup = this.f818a) != null) {
            dVar.b(viewGroup);
            this.f822e = null;
        }
        ViewGroup viewGroup2 = this.f819b;
        if (viewGroup2 == null || viewGroup2.getScrollY() <= 0) {
            return;
        }
        this.f819b.scrollTo(0, 0);
    }

    public void n(View view, boolean z3) {
        if (z3) {
            return;
        }
        view.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
    }

    public void o() {
        Log.d("BaseActivity", "postMsgStartPlayer: ");
        this.f825h.removeMessages(PointerIconCompat.TYPE_CONTEXT_MENU);
        this.f825h.sendEmptyMessageDelayed(PointerIconCompat.TYPE_CONTEXT_MENU, 300000L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Point pointB = w0.a.b(this);
        n0.a aVar = this.f826i;
        int i4 = pointB.x;
        int i5 = pointB.y;
        aVar.f2703a = i4;
        aVar.f2704b = i5;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getWindow().getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
        f.c(this);
        this.f825h = new b(this);
        Point pointB = w0.a.b(this);
        n0.a aVar = new n0.a(pointB.x, pointB.y);
        this.f826i = aVar;
        aVar.f2709g = new p.b(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        n0.e.a();
        p();
        super.onDestroy();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x03e0, code lost:
    
        if (r0.d(r6) == false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00ef, code lost:
    
        r8 = r8 - 1;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0035. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x008b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0222 A[PHI: r9
      0x0222: PHI (r9v15 int) = (r9v14 int), (r9v19 int), (r9v19 int) binds: [B:116:0x01dc, B:125:0x01fd, B:127:0x0203] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02a4 A[PHI: r6 r8 r9
      0x02a4: PHI (r6v14 cn.huidu.lcd.setting.keyboard.a) = 
      (r6v13 cn.huidu.lcd.setting.keyboard.a)
      (r6v13 cn.huidu.lcd.setting.keyboard.a)
      (r6v18 cn.huidu.lcd.setting.keyboard.a)
      (r6v18 cn.huidu.lcd.setting.keyboard.a)
      (r6v18 cn.huidu.lcd.setting.keyboard.a)
     binds: [B:136:0x024f, B:137:0x0251, B:139:0x0267, B:148:0x027f, B:150:0x0285] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r8v3 int) = (r8v2 int), (r8v2 int), (r8v9 int), (r8v9 int), (r8v9 int) binds: [B:136:0x024f, B:137:0x0251, B:139:0x0267, B:148:0x027f, B:150:0x0285] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r9v2 int) = (r9v1 int), (r9v1 int), (r9v5 int), (r9v7 int), (r9v7 int) binds: [B:136:0x024f, B:137:0x0251, B:139:0x0267, B:148:0x027f, B:150:0x0285] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0188  */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instruction units count: 1098
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.setting.ui.base.BaseActivity.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0031  */
    @Override // android.app.Activity, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyUp(int r6, android.view.KeyEvent r7) {
        /*
            r5 = this;
            i0.d r0 = r5.f823f
            if (r0 == 0) goto L35
            cn.huidu.lcd.setting.keyboard.SkbContainer r0 = r0.f1886a
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L32
            boolean r3 = r0.isFocused()
            if (r3 != 0) goto L11
            goto L2c
        L11:
            java.lang.String r3 = "onSoftKeyUp: keyCode"
            java.lang.String r4 = "SkbContainer"
            a.a.a(r3, r6, r4)
            cn.huidu.lcd.setting.keyboard.SoftKeyboardView r0 = r0.f520a
            if (r0 == 0) goto L1f
            r0.setSoftKeyPress(r1)
        L1f:
            r0 = 4
            if (r6 == r0) goto L2e
            r0 = 66
            if (r6 == r0) goto L2e
            switch(r6) {
                case 19: goto L2e;
                case 20: goto L2e;
                case 21: goto L2e;
                case 22: goto L2e;
                case 23: goto L2e;
                default: goto L29;
            }
        L29:
            a.a.a(r3, r6, r4)
        L2c:
            r0 = 0
            goto L2f
        L2e:
            r0 = 1
        L2f:
            if (r0 == 0) goto L32
            r1 = 1
        L32:
            if (r1 == 0) goto L35
            return r2
        L35:
            boolean r6 = super.onKeyDown(r6, r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.setting.ui.base.BaseActivity.onKeyUp(int, android.view.KeyEvent):boolean");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        p();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        o();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        a.InterfaceC0032a interfaceC0032a;
        n0.a aVar = this.f826i;
        Objects.requireNonNull(aVar);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            aVar.f2705c = rawX;
            aVar.f2706d = rawY;
        } else if (actionMasked == 1) {
            float f4 = aVar.f2705c;
            float f5 = aVar.f2706d;
            float f6 = 100;
            if ((f4 < f6 || f4 > ((float) (aVar.f2703a - 100))) && (f5 < f6 || f5 > ((float) (aVar.f2704b - 100)))) {
                float f7 = rawX - f4;
                float f8 = rawY - f5;
                if (Math.sqrt((double) ((f8 * f8) + (f7 * f7))) < 30.0d) {
                    Log.d("EdgeClickRecognizer", "onClickInEdge::");
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (jElapsedRealtime - aVar.f2707e > 2000) {
                        aVar.f2708f = 1;
                    } else {
                        aVar.f2708f++;
                    }
                    if (aVar.f2708f >= 3 && (interfaceC0032a = aVar.f2709g) != null) {
                        ((p.b) interfaceC0032a).c();
                    }
                    aVar.f2707e = jElapsedRealtime;
                }
            }
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    @TargetApi(19)
    public void onWindowFocusChanged(boolean z3) {
        super.onWindowFocusChanged(z3);
        getWindow().getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
    }

    public void p() {
        this.f825h.removeMessages(PointerIconCompat.TYPE_CONTEXT_MENU);
    }

    public void q(View view, boolean z3, boolean z4) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                View childAt = viewGroup.getChildAt(i4);
                if (childAt instanceof ImageView) {
                    ImageView imageView = (ImageView) childAt;
                    if (imageView.getTag() == null) {
                        return;
                    }
                    Object tag = imageView.getTag();
                    int i5 = R$string.left_triangle_tag;
                    if (!tag.equals(getString(i5)) && !imageView.getTag().equals(getString(R$string.right_triangle_tag))) {
                        return;
                    }
                    if (imageView.getTag().equals(getString(i5))) {
                        if (!z4) {
                            imageView.setImageResource(z3 ? R$drawable.hd_left_white : R$drawable.hd_left_triangle);
                        }
                    } else if (z4) {
                        imageView.setImageResource(z3 ? R$drawable.hd_left_white : R$drawable.hd_left_triangle);
                    }
                }
            }
        }
    }

    public void r(View view, boolean z3) {
        if (z3) {
            view.setBackgroundResource(R$drawable.bg_radius_3399ff);
            view.animate().scaleX(1.0f).setDuration(300L).start();
        } else {
            view.setBackgroundColor(getResources().getColor(R$color.no_focus_bg_color));
            view.animate().scaleX(0.98f).setDuration(300L).start();
        }
    }

    public void s(View view, boolean z3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                View childAt = viewGroup.getChildAt(i4);
                if (childAt instanceof TextView) {
                    TextView textView = (TextView) childAt;
                    if (z3) {
                        textView.setTextColor(-1);
                    } else if (textView.getTag() == null || !textView.getTag().equals(getString(R$string.left_title_tag))) {
                        textView.setTextColor(getResources().getColor(R$color.no_focus_right_text_color));
                    } else {
                        textView.setTextColor(getResources().getColor(R$color.no_focus_left_text_color));
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void t(android.view.View r13, android.widget.TextView r14) {
        /*
            Method dump skipped, instruction units count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.setting.ui.base.BaseActivity.t(android.view.View, android.widget.TextView):void");
    }

    public void u(String str) {
        Toast.makeText(this, str, 0).show();
    }

    public void v(View view, boolean z3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                View childAt = viewGroup.getChildAt(i4);
                if (childAt instanceof TextView) {
                    TextView textView = (TextView) childAt;
                    if (z3) {
                        textView.setTextColor(-1);
                    } else if (textView.getTag() == null || !textView.getTag().equals(getString(R$string.left_title_tag))) {
                        textView.setTextColor(getResources().getColor(R$color.no_focus_right_text_color));
                    } else {
                        textView.setTextColor(-1);
                    }
                }
            }
        }
    }

    public void w() {
    }
}
