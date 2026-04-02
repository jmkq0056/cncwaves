package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.v4.media.f;
import android.util.Log;
import androidx.annotation.Nullable;
import g1.b;
import java.util.HashMap;
import java.util.Objects;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class DownloadService extends Service {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final HashMap<Class<? extends DownloadService>, a> f1104f = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f1.a f1105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1109e;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final f1.a f1110a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public final b f1111b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        public DownloadService f1112c;
    }

    public abstract f1.a a();

    @Nullable
    public abstract b b();

    @Override // android.app.Service
    @Nullable
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public void onCreate() {
        a aVar = f1104f.get(getClass());
        if (aVar != null) {
            this.f1105a = aVar.f1110a;
            o1.a.b(aVar.f1112c == null);
            aVar.f1112c = this;
            Objects.requireNonNull(aVar.f1110a);
            return;
        }
        f1.a aVarA = a();
        this.f1105a = aVarA;
        if (aVarA.f1696b) {
            aVarA.f1696b = false;
            aVarA.f1695a++;
            throw null;
        }
        getApplicationContext();
        Objects.requireNonNull(this.f1105a);
        throw null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        a aVar = f1104f.get(getClass());
        Objects.requireNonNull(aVar);
        o1.a.b(aVar.f1112c == this);
        aVar.f1112c = null;
        if (aVar.f1111b != null) {
            Objects.requireNonNull(aVar.f1110a);
            aVar.f1111b.cancel();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i4, int i5) {
        String action;
        String stringExtra;
        f1.a aVar;
        this.f1106b = i5;
        this.f1108d = false;
        if (intent != null) {
            action = intent.getAction();
            stringExtra = intent.getStringExtra("content_id");
            this.f1107c |= intent.getBooleanExtra("foreground", false) || "com.google.android.exoplayer.downloadService.action.RESTART".equals(action);
        } else {
            action = null;
            stringExtra = null;
        }
        if (action == null) {
            action = "com.google.android.exoplayer.downloadService.action.INIT";
        }
        aVar = this.f1105a;
        Objects.requireNonNull(aVar);
        switch (action) {
            case "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD":
                Objects.requireNonNull(intent);
                if (((f1.b) intent.getParcelableExtra("download_request")) != null) {
                    intent.getIntExtra("stop_reason", 0);
                    aVar.f1695a++;
                    throw null;
                }
                Log.e("DownloadService", "Ignored ADD_DOWNLOAD: Missing download_request extra");
                break;
                break;
            case "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS":
                if (aVar.f1696b) {
                    aVar.f1696b = false;
                    aVar.f1695a++;
                    throw null;
                }
                break;
            case "com.google.android.exoplayer.downloadService.action.RESTART":
            case "com.google.android.exoplayer.downloadService.action.INIT":
                break;
            case "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS":
                aVar.f1695a++;
                throw null;
            case "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS":
                Objects.requireNonNull(intent);
                g1.a aVar2 = (g1.a) intent.getParcelableExtra("requirements");
                if (aVar2 != null) {
                    b bVarB = b();
                    if (bVarB == null) {
                        throw null;
                    }
                    g1.a aVarA = bVarB.a(aVar2);
                    if (aVarA.equals(aVar2)) {
                        throw null;
                    }
                    StringBuilder sbA = f.a("Ignoring requirements not supported by the Scheduler: ");
                    sbA.append(aVar2.f1716a ^ aVarA.f1716a);
                    Log.w("DownloadService", sbA.toString());
                    throw null;
                }
                Log.e("DownloadService", "Ignored SET_REQUIREMENTS: Missing requirements extra");
                break;
                break;
            case "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS":
                if (!aVar.f1696b) {
                    aVar.f1696b = true;
                    aVar.f1695a++;
                    throw null;
                }
                break;
            case "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON":
                Objects.requireNonNull(intent);
                if (!intent.hasExtra("stop_reason")) {
                    Log.e("DownloadService", "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                } else {
                    intent.getIntExtra("stop_reason", 0);
                    aVar.f1695a++;
                    throw null;
                }
                break;
            case "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD":
                if (stringExtra != null) {
                    aVar.f1695a++;
                    throw null;
                }
                Log.e("DownloadService", "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                break;
                break;
            default:
                Log.e("DownloadService", "Ignored unrecognized action: " + action);
                break;
        }
        int i6 = e.f2847a;
        this.f1109e = false;
        if (aVar.f1695a == 0) {
            if (i6 >= 28 || !this.f1108d) {
                this.f1109e = stopSelfResult(this.f1106b) | false;
            } else {
                stopSelf();
                this.f1109e = true;
            }
        }
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f1108d = true;
    }
}
