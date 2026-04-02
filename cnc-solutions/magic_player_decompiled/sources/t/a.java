package t;

import android.media.MediaPlayer;
import android.util.Log;
import java.io.IOException;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.avtransport.AVTransportErrorCode;
import org.fourthline.cling.support.avtransport.AVTransportException;
import org.fourthline.cling.support.avtransport.AbstractAVTransportService;
import org.fourthline.cling.support.lastchange.LastChange;
import org.fourthline.cling.support.model.DeviceCapabilities;
import org.fourthline.cling.support.model.MediaInfo;
import org.fourthline.cling.support.model.PlayMode;
import org.fourthline.cling.support.model.PositionInfo;
import org.fourthline.cling.support.model.SeekMode;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.TransportAction;
import org.fourthline.cling.support.model.TransportInfo;
import org.fourthline.cling.support.model.TransportSettings;
import org.fourthline.cling.support.model.TransportState;

/* JADX INFO: loaded from: classes.dex */
public class a extends AbstractAVTransportService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f3491a;

    /* JADX INFO: renamed from: t.a$a, reason: collision with other inner class name */
    public static /* synthetic */ class C0045a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3492a;

        static {
            int[] iArr = new int[TransportState.values().length];
            f3492a = iArr;
            try {
                iArr[TransportState.STOPPED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3492a[TransportState.PLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3492a[TransportState.PAUSED_PLAYBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public a(LastChange lastChange) {
        super(lastChange);
        this.f3491a = d.a();
    }

    @Override // org.fourthline.cling.support.lastchange.LastChangeDelegator
    public UnsignedIntegerFourBytes[] getCurrentInstanceIds() {
        return new UnsignedIntegerFourBytes[0];
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public TransportAction[] getCurrentTransportActions(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        TransportInfo transportInfo;
        d dVar = this.f3491a;
        synchronized (dVar) {
            transportInfo = dVar.f3495a;
        }
        int i4 = C0045a.f3492a[transportInfo.getCurrentTransportState().ordinal()];
        if (i4 == 1) {
            return new TransportAction[]{TransportAction.Play};
        }
        if (i4 == 2) {
            return new TransportAction[]{TransportAction.Stop, TransportAction.Pause, TransportAction.Seek};
        }
        if (i4 != 3) {
            return null;
        }
        return new TransportAction[]{TransportAction.Stop, TransportAction.Pause, TransportAction.Seek, TransportAction.Play};
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public DeviceCapabilities getDeviceCapabilities(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        Log.d("AVTransportService", "getDeviceCapabilities: ");
        return new DeviceCapabilities(new StorageMedium[]{StorageMedium.NETWORK});
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public MediaInfo getMediaInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        MediaInfo mediaInfo;
        d dVar = this.f3491a;
        synchronized (dVar) {
            mediaInfo = dVar.f3498d;
        }
        StringBuilder sbA = android.support.v4.media.f.a("getMediaInfo: ");
        sbA.append(mediaInfo.getCurrentURI());
        Log.d("AVTransportService", sbA.toString());
        return mediaInfo;
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public PositionInfo getPositionInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        PositionInfo positionInfo;
        d dVar = this.f3491a;
        synchronized (dVar) {
            int currentPosition = dVar.f3499e.getCurrentPosition() / 1000;
            if (currentPosition != dVar.f3496b) {
                synchronized (dVar) {
                    dVar.f3496b = currentPosition;
                    long j4 = currentPosition;
                    dVar.f3497c = new PositionInfo(1L, dVar.f3498d.getMediaDuration(), dVar.f3498d.getCurrentURI(), ModelUtil.toTimeString(j4), ModelUtil.toTimeString(j4));
                }
            }
            positionInfo = dVar.f3497c;
        }
        StringBuilder sbA = android.support.v4.media.f.a("getPositionInfo: ");
        sbA.append(positionInfo.getRelTime());
        sbA.append("/");
        sbA.append(positionInfo.getTrackDuration());
        Log.d("AVTransportService", sbA.toString());
        return positionInfo;
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public TransportInfo getTransportInfo(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        TransportInfo transportInfo;
        d dVar = this.f3491a;
        synchronized (dVar) {
            transportInfo = dVar.f3495a;
        }
        StringBuilder sbA = android.support.v4.media.f.a("getTransportInfo: ");
        sbA.append(transportInfo.getCurrentTransportState());
        Log.d("AVTransportService", sbA.toString());
        return transportInfo;
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public TransportSettings getTransportSettings(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        Log.d("AVTransportService", "getTransportSettings: ");
        return new TransportSettings(PlayMode.NORMAL);
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void next(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        Log.d("AVTransportService", "Not implemented: next");
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void pause(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        Log.d("AVTransportService", "pause: ");
        d dVar = this.f3491a;
        if (dVar.b()) {
            androidx.media.b.a(android.support.v4.media.f.a("pause: illegal state: "), dVar.f3500f, "DlnaPlayer");
            return;
        }
        try {
            dVar.f3499e.pause();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        dVar.f3500f = 3;
        dVar.e(TransportState.PAUSED_PLAYBACK);
        g3.c.b().f(new j.f(2));
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void play(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str) {
        android.support.v4.media.c.a("play: ", str, "AVTransportService");
        d dVar = this.f3491a;
        if (dVar.b()) {
            androidx.media.b.a(android.support.v4.media.f.a("play: illegal state: "), dVar.f3500f, "DlnaPlayer");
            return;
        }
        try {
            dVar.f3499e.start();
            dVar.f3500f = 2;
        } catch (Exception e4) {
            e4.printStackTrace();
            dVar.f3500f = -1;
        }
        dVar.e(TransportState.PLAYING);
        g3.c.b().f(new j.f(1, dVar.f3502h, dVar.f3503i));
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void previous(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        Log.d("AVTransportService", "Not implemented: previous");
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void record(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        Log.d("AVTransportService", "Not implemented: record");
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void seek(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, String str2) throws AVTransportException {
        Log.d("AVTransportService", "seek: " + str + ", " + str2);
        if (!SeekMode.valueOrExceptionOf(str).equals(SeekMode.REL_TIME)) {
            throw new AVTransportException(AVTransportErrorCode.SEEKMODE_NOT_SUPPORTED, androidx.appcompat.view.a.a("Unsupported seek mode: ", str));
        }
        long jFromTimeString = ModelUtil.fromTimeString(str2) * 1000;
        d dVar = this.f3491a;
        int i4 = (int) jFromTimeString;
        if (dVar.b()) {
            androidx.media.b.a(android.support.v4.media.f.a("seek: illegal state: "), dVar.f3500f, "DlnaPlayer");
            return;
        }
        try {
            dVar.f3499e.seekTo(i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void setAVTransportURI(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, String str2) {
        android.support.v4.media.c.a("setAVTransportURI: ", str, "AVTransportService");
        d dVar = this.f3491a;
        synchronized (dVar) {
            dVar.f3498d = new MediaInfo(str, "");
            dVar.f3496b = 0;
            dVar.f3497c = new PositionInfo(1L, "", str);
            dVar.f3502h = 0;
            dVar.f3503i = 0;
        }
        dVar.c();
        try {
            Log.d("DlnaPlayer", "openVideo: " + str);
            MediaPlayer mediaPlayer = new MediaPlayer();
            dVar.f3499e = mediaPlayer;
            mediaPlayer.setOnPreparedListener(dVar.f3504j);
            dVar.f3499e.setOnCompletionListener(dVar.f3506l);
            dVar.f3499e.setOnErrorListener(dVar.f3507m);
            dVar.f3499e.setOnVideoSizeChangedListener(dVar.f3505k);
            dVar.f3499e.setDataSource(str);
            dVar.f3499e.prepare();
            dVar.f3500f = 1;
        } catch (IOException e4) {
            e4.printStackTrace();
            dVar.f3500f = -1;
        }
        g3.c.b().f(new j.f(1, dVar.f3502h, dVar.f3503i));
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void setNextAVTransportURI(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str, String str2) {
        Log.d("AVTransportService", "Not implemented: setNextAVTransportURI");
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void setPlayMode(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str) {
        android.support.v4.media.c.a("setPlayMode: ", str, "AVTransportService");
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void setRecordQualityMode(UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str) {
        android.support.v4.media.c.a("setRecordQualityMode: ", str, "AVTransportService");
    }

    @Override // org.fourthline.cling.support.avtransport.AbstractAVTransportService
    public void stop(UnsignedIntegerFourBytes unsignedIntegerFourBytes) {
        Log.d("AVTransportService", "stop: ");
        this.f3491a.d();
    }
}
