package cn.huidu.lcd.airplay;

import a1.c;
import android.media.AudioTrack;
import android.media.MediaCodec;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import c.a;
import c.b;
import java.io.IOException;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes.dex */
public final class RaopServer implements SurfaceHolder.Callback {
    private static final String TAG = "RaopServer";
    private static volatile RaopServer sInstance;
    private a mAudioPlayer;
    private int mHeight;
    private boolean mPlaying;
    private long mServerId = 0;
    private ServerSocket mServerSocket;
    private SurfaceHolder mSurfaceHolder;
    private b mVideoPlayer;
    private int mWidth;

    static {
        c.a(w0.c.f3777a, "raopserver_android");
    }

    private RaopServer() {
    }

    private void closeServerSocket() {
        ServerSocket serverSocket = this.mServerSocket;
        if (serverSocket != null) {
            try {
                serverSocket.close();
                this.mServerSocket = null;
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static RaopServer getInstance() {
        if (sInstance == null) {
            synchronized (RaopServer.class) {
                if (sInstance == null) {
                    sInstance = new RaopServer();
                }
            }
        }
        return sInstance;
    }

    private native int getPort(long j4);

    private synchronized void onStartPlay() {
        if (!this.mPlaying) {
            this.mPlaying = true;
            if (this.mVideoPlayer == null) {
                b bVar = new b();
                this.mVideoPlayer = bVar;
                bVar.start();
            }
            if (this.mAudioPlayer == null) {
                a aVar = new a();
                this.mAudioPlayer = aVar;
                aVar.start();
            }
            g3.c.b().f(new j.a(1));
        }
    }

    private synchronized void onStopPlay() {
        if (this.mPlaying) {
            this.mPlaying = false;
            this.mWidth = 0;
            this.mHeight = 0;
            b bVar = this.mVideoPlayer;
            if (bVar != null) {
                bVar.f312d = true;
                bVar.interrupt();
                MediaCodec mediaCodec = bVar.f310b;
                if (mediaCodec != null) {
                    try {
                        mediaCodec.stop();
                        bVar.f310b = null;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                this.mVideoPlayer = null;
            }
            a aVar = this.mAudioPlayer;
            if (aVar != null) {
                aVar.f307b = true;
                aVar.interrupt();
                AudioTrack audioTrack = aVar.f306a;
                if (audioTrack != null) {
                    audioTrack.flush();
                    aVar.f306a.stop();
                    aVar.f306a.release();
                    aVar.f306a = null;
                }
                this.mAudioPlayer = null;
            }
            g3.c.b().f(new j.a(2));
        }
    }

    private synchronized void setVideoSize(int i4, int i5) {
        if (i4 != this.mWidth || i5 != this.mHeight) {
            this.mWidth = i4;
            this.mHeight = i5;
            g3.c.b().f(new j.a(3, i4, i5));
        }
    }

    private native long start(String str, byte[] bArr, int i4);

    private native void stop(long j4);

    public void onMirrorStateChanged(int i4) {
        a.a.a("onMirrorStateChanged: ", i4, TAG);
        if (i4 == 1) {
            onStartPlay();
        } else {
            onStopPlay();
        }
    }

    public void onRecvAudioData(short[] sArr, long j4) {
        a aVar = this.mAudioPlayer;
        if (!this.mPlaying || aVar == null) {
            return;
        }
        b.b bVar = new b.b();
        bVar.f151a = sArr;
        synchronized (aVar.f308c) {
            if (aVar.f308c.size() > 600) {
                while (aVar.f308c.size() > 300) {
                    aVar.f308c.removeFirst();
                }
            }
            aVar.f308c.add(bVar);
        }
    }

    public void onRecvVideoData(byte[] bArr, int i4, long j4, long j5, int i5, int i6) {
        b bVar = this.mVideoPlayer;
        if (!this.mPlaying || bVar == null) {
            return;
        }
        if (i5 > 0 && i6 > 0) {
            setVideoSize(i5, i6);
        }
        b.a aVar = new b.a();
        aVar.f147a = bArr;
        aVar.f148b = j5;
        aVar.f149c = i5;
        aVar.f150d = i6;
        synchronized (bVar.f313e) {
            if (bVar.f313e.size() > 600) {
                while (bVar.f313e.size() > 300) {
                    bVar.f313e.removeFirst();
                }
            }
            bVar.f313e.add(aVar);
        }
    }

    public void setDisplay(SurfaceView surfaceView) {
        SurfaceHolder holder = surfaceView.getHolder();
        this.mSurfaceHolder = holder;
        Surface surface = holder.getSurface();
        if (surface != null && surface.isValid()) {
            surfaceCreated(this.mSurfaceHolder);
        }
        this.mSurfaceHolder.addCallback(this);
    }

    public synchronized void startServer(String str) {
        byte[] hardwareAddress;
        Enumeration<NetworkInterface> networkInterfaces;
        if (this.mServerId != 0) {
            Log.d(TAG, "startServer: already started.");
            return;
        }
        int localPort = 0;
        try {
            ServerSocket serverSocket = new ServerSocket(0);
            this.mServerSocket = serverSocket;
            localPort = serverSocket.getLocalPort();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        if (localPort == 0) {
            Log.d(TAG, "open server socket failed!");
            closeServerSocket();
            return;
        }
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        while (networkInterfaces.hasMoreElements()) {
            NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
            if ("eth0".equals(networkInterfaceNextElement.getName())) {
                hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                break;
            }
            hardwareAddress = new byte[6];
        }
        hardwareAddress = new byte[6];
        long jStart = start(str, hardwareAddress, localPort);
        this.mServerId = jStart;
        if (jStart == 0) {
            Log.d(TAG, "start raop server failed!");
            closeServerSocket();
            return;
        }
        Log.d(TAG, "startServer: " + this.mServerId + ", port: " + getPort(jStart));
    }

    public void stopPlay() {
        onStopPlay();
    }

    public synchronized void stopServer() {
        Log.d(TAG, "stopServer: ");
        try {
            closeServerSocket();
            long j4 = this.mServerId;
            if (j4 != 0) {
                stop(j4);
                this.mServerId = 0L;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i5, int i6) {
        a.b.a("surfaceChanged: ", i5, ", ", i6, TAG);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        b bVar;
        Log.d(TAG, "surfaceCreated: ");
        if (surfaceHolder != this.mSurfaceHolder || (bVar = this.mVideoPlayer) == null) {
            return;
        }
        bVar.f311c = surfaceHolder.getSurface();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.d(TAG, "surfaceDestroyed: ");
    }
}
