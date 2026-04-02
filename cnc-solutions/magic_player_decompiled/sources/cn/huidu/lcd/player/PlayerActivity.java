package cn.huidu.lcd.player;

import a0.f;
import a0.j;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import cn.huidu.lcd.player.fragment.ErrorFragment;
import cn.huidu.lcd.player.fragment.ListMenuDialog;
import cn.huidu.lcd.player.fragment.LoadingFragment;
import cn.huidu.lcd.player.fragment.StandbyFragment;
import cn.huidu.lcd.player.receiver.ScreenStateReceiver;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.setting.SettingActivity;
import cn.huidu.lcd.setting.TelePhoneMonitorService;
import cn.huidu.lcd.setting.ui.view.InputControlPwdActivity;
import g3.c;
import j.g;
import j.k;
import j.m;
import j.p;
import j.q;
import j.t;
import j.u;
import j.w;
import j.x;
import j.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import l.i;
import n.e;
import n.o;
import org.greenrobot.eventbus.ThreadMode;
import s.h;
import s.n;
import v.d;
import w.b;
import x.a;

/* JADX INFO: loaded from: classes.dex */
public class PlayerActivity extends AppCompatActivity implements Handler.Callback {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final /* synthetic */ int f381x = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f384c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TextView f385d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextView f386e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b f387f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public f f388g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Handler f389h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public x.a f390i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CountDownTimer f391j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public i f392k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f393l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f394m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f395n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f396o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f397p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ScreenStateReceiver f398q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Fragment f399r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ListMenuDialog f400s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public WindowManager f401t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f402u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f403v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final BroadcastReceiver f404w = new a();

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            b bVar;
            String stringExtra = intent.getStringExtra("command");
            Log.d("PlayerActivity", "onReceive: (wfd) " + stringExtra);
            if ("pause".equals(stringExtra)) {
                b bVar2 = PlayerActivity.this.f387f;
                if (bVar2 != null) {
                    bVar2.pause();
                    return;
                }
                return;
            }
            if (!"play".equals(stringExtra) || (bVar = PlayerActivity.this.f387f) == null) {
                return;
            }
            bVar.resume();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        List<ProgramNode> list;
        int action = keyEvent.getAction();
        int keyCode = keyEvent.getKeyCode();
        if (action == 0) {
            a.a.a("dispatchKeyEvent::", keyCode, "PlayerActivity");
            if (keyCode == 122) {
                k();
                return true;
            }
            if (keyCode == 21) {
                this.f387f.previous();
                return true;
            }
            if (keyCode == 22) {
                this.f387f.next();
                return true;
            }
            if (keyCode == 209) {
                f fVar = this.f388g;
                int i4 = fVar.f14f;
                if (i4 != 1 && i4 != 2 && (list = fVar.f25q) != null) {
                    String string = getString(R.string.program_list);
                    ArrayList<String> arrayList = new ArrayList<>();
                    int size = this.f388g.f25q.size();
                    Iterator<ProgramNode> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().getName());
                    }
                    if (arrayList.size() > 0) {
                        ListMenuDialog listMenuDialog = new ListMenuDialog();
                        Bundle bundle = new Bundle();
                        bundle.putString("title", string);
                        bundle.putStringArrayList("items", arrayList);
                        listMenuDialog.setArguments(bundle);
                        this.f400s = listMenuDialog;
                        listMenuDialog.f418d = new d(this, size);
                        listMenuDialog.show(getSupportFragmentManager(), "ListMenuDialog");
                    }
                }
                return true;
            }
            if (keyCode == 172) {
                int i5 = this.f388g.f14f;
                if (i5 != 1 && i5 != 2) {
                    int i6 = 3;
                    if (i5 == 3) {
                        i6 = 0;
                        m(R.string.switch_to_list_cycle_mode);
                    } else {
                        m(R.string.switch_to_single_cycle_mode);
                    }
                    this.f388g.f14f = i6;
                    l.b bVarC = l.b.c();
                    n.a aVar = (n.a) bVarC.a(n.a.class);
                    aVar.f2608e = i6;
                    bVarC.d(aVar);
                    this.f387f.f3775d.b(i6);
                }
                return true;
            }
            if (keyCode == 66 || keyCode == 23 || keyCode == 82) {
                this.f387f.f();
                return true;
            }
        } else if (action == 1 && keyCode == 164) {
            c.b().f(new x(keyCode));
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        a.InterfaceC0054a interfaceC0054a;
        x.a aVar = this.f390i;
        Objects.requireNonNull(aVar);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            aVar.f3932c = rawX;
            aVar.f3933d = rawY;
        } else if (actionMasked == 1) {
            float f4 = aVar.f3932c;
            float f5 = aVar.f3933d;
            float f6 = 100;
            if ((f4 < f6 || f4 > ((float) (aVar.f3930a - 100))) && (f5 < f6 || f5 > ((float) (aVar.f3931b - 100)))) {
                float f7 = rawX - f4;
                float f8 = rawY - f5;
                if (Math.sqrt((double) ((f8 * f8) + (f7 * f7))) < 30.0d) {
                    Log.d("EdgeClickRecognizer", "onClickInEdge::");
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (jElapsedRealtime - aVar.f3934e > 500) {
                        aVar.f3935f = 1;
                    } else {
                        aVar.f3935f++;
                    }
                    if (aVar.f3935f >= 3 && (interfaceC0054a = aVar.f3936g) != null) {
                        ((p.b) interfaceC0054a).c();
                    }
                    aVar.f3934e = jElapsedRealtime;
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void handleMessage(q qVar) {
        Objects.requireNonNull(qVar);
        Log.d("PlayerActivity", "handleMessage: SensorDetectEvent false");
        cn.huidu.lcd.core.util.a.j();
        b bVar = this.f387f;
        if (bVar.j()) {
            bVar.f3775d.e(qVar);
        }
    }

    public final void i() {
        if (this.f399r != null) {
            getSupportFragmentManager().beginTransaction().remove(this.f399r).commit();
            this.f399r = null;
        }
        ListMenuDialog listMenuDialog = this.f400s;
        if (listMenuDialog == null || listMenuDialog.getDialog() == null || !this.f400s.getDialog().isShowing()) {
            return;
        }
        this.f400s.dismissAllowingStateLoss();
    }

    public final void j(int i4) {
        Intent intent = new Intent(this, (Class<?>) InputControlPwdActivity.class);
        if (i4 == 2) {
            e eVar = (e) l.b.c().a(e.class);
            intent.putExtra("title", getString(R.string.input_device_lock_password));
            intent.putExtra("lockMode", 0);
            intent.putExtra("password", eVar.f2635d);
        } else {
            n.a aVar = (n.a) l.b.c().a(n.a.class);
            intent.putExtra("title", getString(R.string.control_pwd));
            intent.putExtra("password", aVar.f2622s);
        }
        startActivityForResult(intent, i4);
    }

    public final void k() {
        boolean z3;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f397p;
        if (jElapsedRealtime <= 0 || jElapsedRealtime >= 1000) {
            this.f397p = SystemClock.elapsedRealtime();
            z3 = false;
        } else {
            z3 = true;
        }
        if (z3) {
            return;
        }
        h.a("PlayerActivity: enterSettingPage");
        if (((n.a) l.b.c().a(n.a.class)).f2621r) {
            j(1);
        } else {
            startActivity(new Intent(this, (Class<?>) SettingActivity.class));
        }
    }

    public final void l(Fragment fragment) {
        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, fragment).commit();
        this.f399r = fragment;
    }

    public final void m(@StringRes int i4) {
        Toast.makeText(this, i4, 0).show();
    }

    public final void n() {
        o oVar = (o) l.b.c().a(o.class);
        boolean z3 = oVar.f2686c;
        if (z3) {
            if (z3 && oVar.f2692i != 0) {
                this.f384c.setVisibility(0);
                this.f385d.setText(oVar.f2687d);
                if (oVar.f2688e == 0) {
                    this.f386e.setText(oVar.f2691h);
                } else {
                    this.f386e.setText(oVar.f2690g);
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f384c.getLayoutParams();
                int i4 = oVar.f2692i;
                if (i4 == 1) {
                    layoutParams.gravity = 51;
                } else if (i4 == 2) {
                    layoutParams.gravity = 83;
                } else if (i4 == 3) {
                    layoutParams.gravity = 53;
                } else if (i4 == 4) {
                    layoutParams.gravity = 85;
                }
                this.f384c.setLayoutParams(layoutParams);
                return;
            }
        }
        this.f384c.setVisibility(8);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i4, int i5, @Nullable Intent intent) {
        super.onActivityResult(i4, i5, intent);
        a.b.a("onActivityResult: ", i4, ", ", i5, "PlayerActivity");
        if (i4 == 1) {
            if (i5 == -1) {
                startActivity(new Intent(this, (Class<?>) SettingActivity.class));
            }
        } else if (i4 == 2) {
            this.f394m = true;
            this.f395n = i5 == -1;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        n0.c.a(new AlertDialog.Builder(this).setMessage(R.string.confirm_to_exit).setNegativeButton(R.string.cancel, v.c.f3629b).setPositiveButton(R.string.confirm, new v.b(this)).create());
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(j.h hVar) {
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(m mVar) {
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(w wVar) {
        if (wVar.f1972a == 1) {
            this.f392k.c();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Log.d("PlayerActivity", "onConfigurationChanged::");
        q.f.c(this);
        this.f388g.f();
        this.f387f.i();
        Point pointB = w0.a.b(this);
        x.a aVar = this.f390i;
        int i4 = pointB.x;
        int i5 = pointB.y;
        aVar.f3930a = i4;
        aVar.f3931b = i5;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @RequiresApi(api = 19)
    public void onCreate(Bundle bundle) {
        Object objNewInstance;
        i dVar;
        super.onCreate(bundle);
        setContentView(R.layout.activity_player);
        h.a("PlayerActivity: onCreate");
        q.f.c(this);
        w0.f.a(getWindow());
        startService(new Intent(this, (Class<?>) PlayerService.class));
        new Thread(new d.d(this)).start();
        l.a.a().b(true);
        h.a.q0(this);
        this.f398q = new ScreenStateReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        registerReceiver(this.f398q, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.android.wfd.AppCommand");
        registerReceiver(this.f404w, intentFilter2);
        this.f384c = findViewById(R.id.layout_wifi_hotspot);
        this.f385d = (TextView) findViewById(R.id.txt_wifi_name);
        this.f386e = (TextView) findViewById(R.id.txt_wifi_pwd);
        this.f382a = findViewById(R.id.count_down_time_view);
        this.f383b = (TextView) findViewById(R.id.count_down_time_txt);
        Point pointB = w0.a.b(this);
        x.a aVar = new x.a(pointB.x, pointB.y);
        this.f390i = aVar;
        aVar.f3936g = new p.b(this);
        this.f389h = new n(this);
        f fVarE = f.e();
        this.f388g = fVarE;
        fVarE.f9a = this.f389h;
        j jVar = new j(this);
        this.f387f = new b(jVar);
        jVar.i(this.f388g);
        b bVar = this.f387f;
        bVar.f3775d.a(x.b.f3937g);
        this.f387f.d((ViewGroup) findViewById(R.id.player_view));
        try {
            objNewInstance = d.b.class.newInstance();
        } catch (Exception unused) {
            objNewInstance = null;
        }
        if (objNewInstance instanceof i) {
            dVar = (i) objNewInstance;
        } else {
            Log.d("FaceDetectFactory", "face detect module not install!");
            dVar = new l.d();
        }
        this.f392k = dVar;
        dVar.a((ViewGroup) findViewById(R.id.v_face_detect));
        if (cn.huidu.lcd.core.a.f340f) {
            startActivity(new Intent(this, (Class<?>) NotSupportActivity.class));
            finish();
        }
        this.f401t = getWindow().getWindowManager();
        Point point = new Point();
        this.f401t.getDefaultDisplay().getRealSize(point);
        this.f402u = point.x;
        this.f403v = point.y;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Log.d("PlayerActivity", "onDestroy: ");
        h.a("PlayerActivity: onDestroy");
        l.c.a().j(-4);
        l.a.a().b(false);
        h.a.B0(this);
        try {
            unregisterReceiver(this.f398q);
        } catch (Exception unused) {
        }
        Objects.requireNonNull(l.m.a());
        Log.d("SensorEventReader", "stop: ");
        n0.e.a();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        h.a("PlayerActivity: onPause");
        if (this.f402u == 3840 && this.f403v == 2160) {
            b bVar = this.f387f;
            if (bVar.f3772a.getChildCount() > 0) {
                bVar.stop();
            }
        }
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        Log.d("PlayerActivity", "onRestart: ");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        h.a("PlayerActivity: onResume");
        q.f.c(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f393l = true;
        h.a("PlayerActivity: onStart");
        f fVar = this.f388g;
        fVar.f27s = true;
        fVar.f();
        if (this.f388g.f19k) {
            l.h.d().p();
        }
        if (this.f394m) {
            this.f394m = false;
            final f fVar2 = this.f388g;
            final boolean z3 = this.f395n;
            final PlayTaskNode playTaskNode = fVar2.f26r;
            synchronized (fVar2) {
                fVar2.f26r = null;
            }
            fVar2.d(new Runnable() { // from class: a0.d
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    f fVar3 = fVar2;
                    PlayTaskNode playTaskNode2 = playTaskNode;
                    boolean z4 = z3;
                    Objects.requireNonNull(fVar3);
                    if (h.a.d(playTaskNode2) <= 0) {
                        fVar3.h();
                        return;
                    }
                    if (!z4) {
                        fVar3.j(6);
                        return;
                    }
                    if (!fVar3.f13e) {
                        fVar3.l(playTaskNode2);
                        return;
                    }
                    int iC = fVar3.c(playTaskNode2);
                    if (iC != 0) {
                        fVar3.j(iC);
                    }
                }
            });
        } else {
            this.f387f.i();
            if (l.c.a().K) {
                n.a aVar = (n.a) l.b.c().a(n.a.class);
                b bVar = this.f387f;
                int i4 = aVar.f2611h;
                long j4 = aVar.f2612i;
                if (bVar.j()) {
                    bVar.f3775d.h(i4, j4);
                    bVar.m(false);
                }
            }
        }
        if (f.e().f19k && l.h.d().e()) {
            i();
        }
        this.f389h.removeMessages(102);
        this.f389h.sendEmptyMessageDelayed(102, 3000L);
        Objects.requireNonNull(l.m.a());
        Log.d("SensorEventReader", "init: IrSensorDelayTime=" + ((n.a) l.b.c().a(n.a.class)).f2623t);
        n();
        if (((n.i) l.b.c().a(n.i.class)).f2656c) {
            startService(new Intent(this, (Class<?>) TelePhoneMonitorService.class));
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f393l = false;
        h.a("PlayerActivity: onStop");
        this.f388g.f27s = false;
        l.h.d().r();
        this.f387f.stop();
        this.f389h.removeMessages(102);
        this.f392k.onStop();
        CountDownTimer countDownTimer = this.f391j;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        if (this.f396o) {
            this.f396o = false;
            this.f382a.setVisibility(8);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z3) {
        super.onWindowFocusChanged(z3);
        w0.f.a(getWindow());
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(t tVar) {
        Log.d("PlayerActivity", "onBusEvent: TimeChangedEvent");
        b bVar = this.f387f;
        if (bVar.j()) {
            bVar.f3775d.e(tVar);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i4;
        if ((this.f393l && this.f387f.f3776e == 0) || ((i4 = message.what) != 1 && i4 != 6 && i4 != 2 && i4 != 3)) {
            int i5 = message.what;
            if (i5 == 101) {
                n();
            } else if (i5 != 102) {
                switch (i5) {
                    case 1:
                        this.f387f.stop();
                        int i6 = message.arg1;
                        LoadingFragment loadingFragment = new LoadingFragment();
                        loadingFragment.f424b = i6;
                        if (loadingFragment.f423a != null && loadingFragment.isAdded()) {
                            loadingFragment.a(i6);
                        }
                        l(loadingFragment);
                        break;
                    case 2:
                        i();
                        b bVar = this.f387f;
                        PlayTaskNode playTaskNode = (PlayTaskNode) message.obj;
                        if (bVar.j()) {
                            bVar.f3775d.g(playTaskNode);
                            bVar.m(false);
                        }
                        break;
                    case 3:
                        this.f387f.stop();
                        int i7 = message.arg1;
                        if (((n.a) l.b.c().a(n.a.class)).f2620q && i7 != 7) {
                            Fragment standbyFragment = new StandbyFragment();
                            Bundle bundle = new Bundle();
                            bundle.putInt("ErrorCode", i7);
                            standbyFragment.setArguments(bundle);
                            l(standbyFragment);
                        } else {
                            Fragment errorFragment = new ErrorFragment();
                            Bundle bundle2 = new Bundle();
                            bundle2.putInt("ErrorCode", i7);
                            errorFragment.setArguments(bundle2);
                            l(errorFragment);
                        }
                        break;
                    case 4:
                        j(2);
                        break;
                    case 5:
                        c.b().f(new j.b());
                        break;
                    case 6:
                        int i8 = message.arg1;
                        Fragment fragment = this.f399r;
                        if (fragment instanceof LoadingFragment) {
                            LoadingFragment loadingFragment2 = (LoadingFragment) fragment;
                            loadingFragment2.f424b = i8;
                            if (loadingFragment2.f423a != null && loadingFragment2.isAdded()) {
                                loadingFragment2.a(i8);
                            }
                        }
                        break;
                }
            } else {
                this.f392k.onStart();
            }
            return true;
        }
        androidx.media.b.a(android.support.v4.media.f.a("Not display program, ignore message: "), message.what, "PlayerActivity");
        return true;
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(g gVar) {
        Log.d("PlayerActivity", "onBusEvent: FaceDetectEvent");
        b bVar = this.f387f;
        if (bVar.j()) {
            bVar.f3775d.e(gVar);
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(j.o oVar) {
        Log.d("PlayerActivity", "onBusEvent: ReloadPlayTaskEvent");
        if (this.f393l) {
            this.f388g.f();
            if (oVar.f1956d) {
                if (this.f388g.f19k) {
                    l.h.d().p();
                } else {
                    l.h.d().r();
                }
            }
            this.f387f.i();
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(k kVar) {
        if (this.f393l) {
            Objects.requireNonNull(kVar);
            throw null;
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(j.i iVar) {
        if (this.f393l) {
            b bVar = this.f387f;
            if (bVar.f3776e != 2) {
                if (this.f388g.f19k) {
                    int i4 = iVar.f1945a;
                    if (i4 == 1) {
                        Log.d("PlayerActivity", "onBusEvent: HDMI IN ON.");
                        i();
                        this.f387f.l(1, false);
                        if (cn.huidu.lcd.core.a.f()) {
                            return;
                        }
                        this.f387f.k(1, iVar.f1946b, iVar.f1947c);
                        return;
                    }
                    if (i4 == 2) {
                        Log.d("PlayerActivity", "onBusEvent: HDMI IN OFF.");
                        this.f387f.l(0, false);
                        return;
                    } else {
                        if (i4 != 3) {
                            return;
                        }
                        bVar.k(1, iVar.f1946b, iVar.f1947c);
                        return;
                    }
                }
                if (bVar.j()) {
                    bVar.f3775d.e(iVar);
                    return;
                }
                return;
            }
        }
        Log.d("PlayerActivity", "onBusEvent: ignore HDMI IN event.");
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(j.f fVar) {
        androidx.media.b.a(android.support.v4.media.f.a("onBusEvent: DlnaPlayEvent: "), fVar.f1936a, "PlayerActivity");
        if (this.f393l) {
            int i4 = fVar.f1936a;
            if (i4 == 1) {
                i();
                this.f387f.m(false);
                this.f387f.l(2, false);
                this.f387f.k(2, fVar.f1937b, fVar.f1938c);
                return;
            }
            if (i4 == 2) {
                this.f387f.m(true);
            } else if (i4 == 3) {
                this.f387f.i();
            } else {
                if (i4 != 4) {
                    return;
                }
                this.f387f.k(2, fVar.f1937b, fVar.f1938c);
            }
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(j.a aVar) {
        androidx.media.b.a(android.support.v4.media.f.a("onBusEvent: AirPlayEvent: "), aVar.f1929a, "PlayerActivity");
        if (this.f393l) {
            int i4 = aVar.f1929a;
            if (i4 == 1) {
                i();
                this.f387f.m(false);
                this.f387f.l(3, false);
                this.f387f.k(3, aVar.f1930b, aVar.f1931c);
                return;
            }
            if (i4 == 2) {
                this.f387f.i();
            } else {
                if (i4 != 3) {
                    return;
                }
                this.f387f.k(3, aVar.f1930b, aVar.f1931c);
            }
        }
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(p pVar) {
        Log.d("PlayerActivity", "onBusEvent: ResetFaceDetectEvent");
        this.f392k.b(pVar.f1960a);
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(y yVar) {
        Log.d("PlayerActivity", "onBusEvent: WifiHotspotChangedEvent");
        this.f389h.sendEmptyMessageDelayed(101, 5000L);
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void onBusEvent(u uVar) {
        Log.d("PlayerActivity", "onBusEvent: TurnOffScreenEvent");
        if (!this.f393l || this.f396o) {
            return;
        }
        this.f396o = true;
        this.f382a.setVisibility(0);
        if (this.f391j == null) {
            this.f391j = new v.e(this, 11000L, 1000L);
        }
        this.f391j.start();
    }
}
