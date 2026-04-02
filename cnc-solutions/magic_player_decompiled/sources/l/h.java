package l;

import android.annotation.SuppressLint;
import android.database.ContentObserver;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.camera2.CameraManager;
import android.media.CameraProfile;
import android.media.tv.TvContract;
import android.media.tv.TvInputInfo;
import android.media.tv.TvInputManager;
import android.media.tv.TvView;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.huidu.lcd.core.compat.hdmiin.JniCameraCall;
import com.droidlogic.app.tv.DroidLogicTvUtils;
import com.droidlogic.app.tv.TvControlManager;
import java.io.IOException;
import java.util.Objects;
import org.xbill.DNS.SimpleResolver;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static volatile h f2327u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Thread f2328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2329b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Camera f2332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2333f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2334g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2335h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SurfaceHolder f2336i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public SurfaceTexture f2337j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile boolean f2338k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public g.a f2341n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TvInputManager f2342o;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2330c = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2343p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final SurfaceHolder.Callback f2344q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final TextureView.SurfaceTextureListener f2345r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @RequiresApi(api = 21)
    public final ContentObserver f2346s = new c(new Handler());

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @RequiresApi(api = 21)
    public final TvInputManager.TvInputCallback f2347t = new d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final cn.huidu.lcd.core.compat.hdmiin.a f2340m = new cn.huidu.lcd.core.compat.hdmiin.a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Handler f2339l = new Handler(Looper.getMainLooper());

    public class a implements SurfaceHolder.Callback {
        public a() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i5, int i6) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            Log.d("HdmiInMonitor", "surfaceCreated: ");
            h hVar = h.this;
            hVar.f2336i = surfaceHolder;
            hVar.f2337j = null;
            hVar.f2338k = true;
            h.this.c(true);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            Log.d("HdmiInMonitor", "surfaceDestroyed: ");
            h hVar = h.this;
            if (hVar.f2336i == surfaceHolder) {
                hVar.f2336i = null;
                hVar.f2338k = true;
                h.this.c(false);
            }
        }
    }

    public class b implements TextureView.SurfaceTextureListener {
        public b() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i5) {
            Log.d("HdmiInMonitor", "onSurfaceTextureAvailable: ");
            h hVar = h.this;
            hVar.f2337j = surfaceTexture;
            hVar.f2336i = null;
            hVar.f2338k = true;
            h.this.c(true);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            Log.d("HdmiInMonitor", "onSurfaceTextureDestroyed: ");
            h hVar = h.this;
            if (hVar.f2337j == surfaceTexture) {
                hVar.f2337j = null;
                hVar.f2338k = true;
                h.this.c(false);
            }
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i5) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public class c extends ContentObserver {
        public c(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3, @Nullable Uri uri) {
            int i4 = Settings.System.getInt(w0.c.f3777a.getContentResolver(), "tv_current_device_id", 0);
            h hVar = h.this;
            hVar.f2343p = hVar.f(i4) ? 1 : 0;
            h.a(h.this);
        }
    }

    public class d extends TvInputManager.TvInputCallback {
        public d() {
        }

        @Override // android.media.tv.TvInputManager.TvInputCallback
        public void onInputStateChanged(String str, int i4) {
            int i5 = Settings.System.getInt(w0.c.f3777a.getContentResolver(), "tv_current_device_id", 0);
            if (DroidLogicTvUtils.getDeviceIdFromInputId(str) == i5) {
                StringBuilder sb = new StringBuilder();
                sb.append("==== onInputStateChanged, inputId=");
                sb.append(str);
                sb.append(" current state=");
                sb.append(i4);
                sb.append(" current device=");
                androidx.media.b.a(sb, i5, "HdmiInMonitor");
                h hVar = h.this;
                hVar.f2343p = i4 == 0 ? 1 : 0;
                h.a(hVar);
            }
        }
    }

    public h() {
        if (!cn.huidu.lcd.core.a.f() || Build.VERSION.SDK_INT < 21) {
            return;
        }
        this.f2342o = (TvInputManager) w0.c.f3777a.getSystemService("tv_input");
    }

    public static void a(h hVar) {
        Objects.requireNonNull(hVar);
        StringBuilder sb = new StringBuilder();
        sb.append("notifyTvDisplayChanged: ");
        androidx.media.b.a(sb, hVar.f2343p, "HdmiInMonitor");
        if (hVar.f2343p == 1) {
            g3.c.b().f(new j.i(1));
        } else {
            g3.c.b().f(new j.i(2));
        }
    }

    public static h d() {
        if (f2327u == null) {
            synchronized (h.class) {
                if (f2327u == null) {
                    f2327u = new h();
                }
            }
        }
        return f2327u;
    }

    public final void b() {
        if (this.f2332e == null) {
            return;
        }
        Log.d("HdmiInMonitor", "closeCamera: ");
        try {
            this.f2332e.stopPreview();
            this.f2332e.release();
            this.f2332e = null;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void c(boolean z3) {
        Log.d("HdmiInMonitor", "enableAudio: " + z3);
        if (z3) {
            this.f2340m.c();
        } else {
            this.f2340m.d();
        }
    }

    public boolean e() {
        return cn.huidu.lcd.core.a.f() ? this.f2343p == 1 : this.f2330c == 1;
    }

    @RequiresApi(api = 21)
    public final boolean f(int i4) {
        TvInputInfo tvInputInfo = null;
        for (TvInputInfo tvInputInfo2 : this.f2342o.getTvInputList()) {
            if (DroidLogicTvUtils.getDeviceIdFromInputId(tvInputInfo2.getId()) == i4) {
                tvInputInfo = tvInputInfo2;
            }
        }
        if (tvInputInfo == null) {
            return false;
        }
        TvControlManager.SourceInput tvSourceInputFromDeviceId = DroidLogicTvUtils.parseTvSourceInputFromDeviceId(i4);
        return !tvInputInfo.isPassthroughInput() || 1 == (tvSourceInputFromDeviceId != null ? TvControlManager.getInstance().GetSourceConnectStatus(tvSourceInputFromDeviceId) : -1) || i4 == 15;
    }

    @SuppressLint({"NewApi"})
    public final void g() {
        int i4 = Settings.System.getInt(w0.c.f3777a.getContentResolver(), "tv_current_device_id", 0);
        this.f2343p = f(i4) ? 1 : 0;
        androidx.media.b.a(android.support.v4.media.a.a("loadTvInputState: +++device_id+", i4, "+++"), this.f2343p, "HdmiInMonitor");
    }

    public final void h() {
        StringBuilder sbA = android.support.v4.media.f.a("notifyDisplayChanged: ");
        sbA.append(this.f2330c);
        sbA.append(", ");
        sbA.append(this.f2333f);
        sbA.append("x");
        androidx.media.b.a(sbA, this.f2334g, "HdmiInMonitor");
        if (this.f2330c == 1) {
            g3.c.b().f(new j.i(1, this.f2333f, this.f2334g));
        } else {
            g3.c.b().f(new j.i(2));
        }
    }

    public final void i() {
        StringBuilder sbA = android.support.v4.media.f.a("notifyResolutionChanged: ");
        sbA.append(this.f2333f);
        sbA.append("x");
        sbA.append(this.f2334g);
        Log.d("HdmiInMonitor", sbA.toString());
        g3.c.b().f(new j.i(3, this.f2333f, this.f2334g));
    }

    public final void j() {
        b();
        try {
            int i4 = cn.huidu.lcd.core.a.f337c;
            int numberOfCameras = (i4 == 101 || i4 == 39) ? Camera.getNumberOfCameras() : 0;
            Log.d("HdmiInMonitor", "openCamera: " + numberOfCameras);
            this.f2332e = Camera.open(numberOfCameras);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void k() {
        int i4;
        Log.d("HdmiInMonitor", "HDMI IN monitor thread start.");
        j();
        q();
        SystemClock.sleep(2000L);
        loop0: while (true) {
            int i5 = 0;
            while (this.f2329b) {
                try {
                    i4 = Integer.parseInt(SystemProperties.get("sys.hdmiin.display"));
                } catch (Exception unused) {
                    i4 = 0;
                }
                try {
                    if (i4 != this.f2330c) {
                        this.f2330c = i4;
                        h();
                    }
                    if (i4 != 1) {
                        i5++;
                        if (i5 > 5) {
                            try {
                                j();
                                q();
                                SystemClock.sleep(2000L);
                                break;
                            } catch (Exception e4) {
                                e = e4;
                                i5 = 0;
                                e.printStackTrace();
                                SystemClock.sleep(1000L);
                            }
                        } else {
                            SystemClock.sleep(500L);
                        }
                    } else {
                        String str = SystemProperties.get("sys.hdmiin.resolution");
                        if (!Objects.equals(this.f2331d, str)) {
                            int i6 = SimpleResolver.DEFAULT_EDNS_PAYLOADSIZE;
                            int i7 = 720;
                            try {
                                String[] strArrSplit = str.split("[xpiPXI]");
                                if (strArrSplit.length == 3) {
                                    i6 = Integer.parseInt(strArrSplit[0]);
                                    i7 = Integer.parseInt(strArrSplit[1]);
                                }
                            } catch (Exception e5) {
                                e5.printStackTrace();
                            }
                            this.f2333f = i6;
                            this.f2334g = i7;
                            this.f2331d = str;
                            i();
                            this.f2338k = true;
                        }
                        if (this.f2338k) {
                            this.f2338k = false;
                            Log.d("HdmiInMonitor", "restart preview.");
                            Log.d("HdmiInMonitor", "stopPreview: ");
                            Camera camera = this.f2332e;
                            if (camera != null) {
                                try {
                                    camera.stopPreview();
                                } catch (Exception e6) {
                                    e6.printStackTrace();
                                }
                            }
                            q();
                            SystemClock.sleep(1000L);
                        } else {
                            SystemClock.sleep(100L);
                        }
                    }
                } catch (Exception e7) {
                    e = e7;
                }
            }
        }
        b();
        this.f2330c = 0;
        Log.d("HdmiInMonitor", "HDMI IN monitor thread finish.");
        if (this.f2329b) {
            l();
        }
    }

    public void l() {
        SurfaceHolder surfaceHolder;
        Surface surface;
        if (Build.VERSION.SDK_INT < 29) {
            k();
            return;
        }
        Log.d("HdmiInMonitor", "rkCamera2Monitor: start.");
        JniCameraCall.openDevice();
        if (this.f2341n == null) {
            this.f2341n = new g.a();
        }
        g.a aVar = this.f2341n;
        Objects.requireNonNull(aVar);
        HandlerThread handlerThread = new HandlerThread("Camera Background");
        aVar.f1710c = handlerThread;
        handlerThread.start();
        aVar.f1709b = new Handler(aVar.f1710c.getLooper());
        while (this.f2329b) {
            if (JniCameraCall.getState() != 0) {
                int[] format = JniCameraCall.getFormat();
                boolean z3 = format != null && format.length >= 2 && format[0] > 0 && format[1] > 0;
                if (this.f2330c == 0) {
                    Log.i("HdmiInMonitor", "hdmi is plug");
                    this.f2330c = 1;
                    if (z3) {
                        this.f2333f = format[0];
                        this.f2334g = format[1];
                    } else {
                        this.f2333f = 1920;
                        this.f2334g = 1080;
                    }
                    this.f2338k = true;
                    h();
                } else if (z3 && (this.f2333f != format[0] || this.f2334g != format[1])) {
                    this.f2333f = format[0];
                    this.f2334g = format[1];
                    this.f2338k = true;
                    i();
                }
            } else if (this.f2330c != 0) {
                Log.i("HdmiInMonitor", "hdmi is unplug");
                this.f2330c = 0;
                this.f2338k = true;
                h();
            }
            if (this.f2338k) {
                this.f2338k = false;
                if (this.f2330c == 0 || ((surfaceHolder = this.f2336i) == null && this.f2337j == null)) {
                    this.f2341n.a();
                } else {
                    if (surfaceHolder != null) {
                        this.f2339l.post(new g(this, 1));
                        surface = this.f2336i.getSurface();
                    } else {
                        this.f2337j.setDefaultBufferSize(this.f2333f, this.f2334g);
                        surface = new Surface(this.f2337j);
                    }
                    g.a aVar2 = this.f2341n;
                    Objects.requireNonNull(aVar2);
                    if (surface != null) {
                        aVar2.f1711d = surface;
                        Log.d("HdmiInCamera2", "openCamera: ");
                        try {
                            CameraManager cameraManager = (CameraManager) w0.c.a("camera");
                            String[] cameraIdList = cameraManager.getCameraIdList();
                            if (cameraIdList.length > 0) {
                                cameraManager.openCamera(cameraIdList[cameraIdList.length - 1], aVar2.f1712e, aVar2.f1709b);
                            } else {
                                cameraManager.openCamera("0", aVar2.f1712e, aVar2.f1709b);
                            }
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                }
            }
            SystemClock.sleep(500L);
        }
        this.f2341n.a();
        g.a aVar3 = this.f2341n;
        aVar3.f1710c.quitSafely();
        try {
            aVar3.f1710c.join();
            aVar3.f1710c = null;
            aVar3.f1709b = null;
        } catch (InterruptedException e5) {
            e5.printStackTrace();
        }
        JniCameraCall.closeDevice();
        this.f2330c = 0;
        Log.d("HdmiInMonitor", "rkCamera2Monitor: finish.");
        if (this.f2329b) {
            l();
        }
    }

    public void m(View view) {
        Log.d("HdmiInMonitor", "setDisplay: ");
        if (view instanceof SurfaceView) {
            SurfaceHolder holder = ((SurfaceView) view).getHolder();
            holder.addCallback(this.f2344q);
            Surface surface = holder.getSurface();
            if (surface == null || !surface.isValid()) {
                return;
            }
            Log.d("HdmiInMonitor", "setDisplay: surface hold is valid.");
            this.f2344q.surfaceCreated(holder);
            return;
        }
        if (view instanceof TextureView) {
            TextureView textureView = (TextureView) view;
            textureView.setSurfaceTextureListener(this.f2345r);
            SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
            if (surfaceTexture != null) {
                Log.d("HdmiInMonitor", "setDisplay: surface texture is available.");
                this.f2345r.onSurfaceTextureAvailable(surfaceTexture, textureView.getWidth(), textureView.getHeight());
            }
        }
    }

    public void n(int i4) {
        a.a.a("setOrientation: ", i4, "HdmiInMonitor");
        this.f2335h = i4;
        if (this.f2336i == null && this.f2337j == null) {
            return;
        }
        this.f2338k = true;
    }

    @RequiresApi(api = 21)
    public void o(TvView tvView) {
        String id = null;
        try {
            int i4 = Settings.System.getInt(w0.c.f3777a.getContentResolver(), "tv_current_device_id", 0);
            Settings.System.getInt(w0.c.f3777a.getContentResolver(), "tv_dtv_channel_index", -1);
            Settings.System.getString(w0.c.f3777a.getContentResolver(), "tv_current_inputid");
            for (TvInputInfo tvInputInfo : this.f2342o.getTvInputList()) {
                if (DroidLogicTvUtils.getDeviceIdFromInputId(tvInputInfo.getId()) == i4) {
                    id = tvInputInfo.getId();
                }
            }
            if (TextUtils.isEmpty(id)) {
                Log.d("HdmiInMonitor", "device" + i4 + " is not exist");
                return;
            }
            Uri uriBuildChannelUriForPassthroughInput = TvContract.buildChannelUriForPassthroughInput(id);
            Log.d("HdmiInMonitor", "TV play tune inputId=" + id + " uri=" + uriBuildChannelUriForPassthroughInput);
            if (uriBuildChannelUriForPassthroughInput != null) {
                tvView.tune(id, uriBuildChannelUriForPassthroughInput);
            } else {
                Log.d("HdmiInMonitor", "show no database");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void p() {
        if (!cn.huidu.lcd.core.a.d()) {
            Log.d("HdmiInMonitor", "start: HDMI in is not supported!");
            return;
        }
        Log.d("HdmiInMonitor", "start: ");
        if (cn.huidu.lcd.core.a.f()) {
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    this.f2342o.registerCallback(this.f2347t, new Handler());
                    w0.c.f3777a.getContentResolver().registerContentObserver(Settings.System.getUriFor("tv_current_device_id"), true, this.f2346s);
                    g();
                    return;
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        this.f2329b = true;
        Thread thread = this.f2328a;
        if (thread == null || !thread.isAlive()) {
            Thread thread2 = new Thread(new g(this, 0));
            this.f2328a = thread2;
            thread2.setName("HdmiInMonitor");
            this.f2328a.start();
        }
    }

    public final void q() {
        if (this.f2332e == null) {
            return;
        }
        StringBuilder sbA = android.support.v4.media.f.a("startPreview: resolution=");
        sbA.append(this.f2331d);
        sbA.append(", orientation=");
        androidx.media.b.a(sbA, this.f2335h, "HdmiInMonitor");
        try {
            Camera.Parameters parameters = this.f2332e.getParameters();
            parameters.setPreviewSize(this.f2333f, this.f2334g);
            parameters.setJpegQuality(CameraProfile.getJpegEncodingQualityParameter(0, 2));
            this.f2332e.setParameters(parameters);
            if (this.f2335h == 0) {
                this.f2335h = ((n.a) l.b.c().a(n.a.class)).f2616m * 90;
            }
            Log.d("HdmiInMonitor", "startPreview: mOrientation->" + this.f2335h);
            this.f2332e.setDisplayOrientation(this.f2335h);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            SurfaceHolder surfaceHolder = this.f2336i;
            if (surfaceHolder != null) {
                this.f2332e.setPreviewDisplay(surfaceHolder);
            } else {
                SurfaceTexture surfaceTexture = this.f2337j;
                if (surfaceTexture != null) {
                    this.f2332e.setPreviewTexture(surfaceTexture);
                }
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        try {
            this.f2332e.startPreview();
        } catch (Exception e6) {
            e6.printStackTrace();
            b();
        }
    }

    public void r() {
        TvInputManager tvInputManager;
        Log.d("HdmiInMonitor", "stop: ");
        if (!cn.huidu.lcd.core.a.f()) {
            this.f2329b = false;
            c(false);
        } else {
            if (Build.VERSION.SDK_INT < 21 || (tvInputManager = this.f2342o) == null) {
                return;
            }
            tvInputManager.unregisterCallback(this.f2347t);
            w0.c.f3777a.getContentResolver().unregisterContentObserver(this.f2346s);
        }
    }
}
