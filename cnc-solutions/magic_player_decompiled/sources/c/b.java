package c;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.support.v4.media.f;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class b extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec.BufferInfo f309a = new MediaCodec.BufferInfo();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MediaCodec f310b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Surface f311c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f312d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedList<b.a> f313e = new LinkedList<>();

    public final boolean a(MediaCodec mediaCodec, b.a aVar) {
        if (mediaCodec == null) {
            return true;
        }
        boolean z3 = false;
        try {
            ByteBuffer[] inputBuffers = mediaCodec.getInputBuffers();
            int iDequeueInputBuffer = mediaCodec.dequeueInputBuffer(10000L);
            if (iDequeueInputBuffer >= 0) {
                inputBuffers[iDequeueInputBuffer].put(aVar.f147a);
                mediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, aVar.f147a.length, aVar.f148b, 0);
                z3 = true;
            } else {
                Log.d("VideoPlayer", "dequeueInputBuffer failed");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            int iDequeueOutputBuffer = mediaCodec.dequeueOutputBuffer(this.f309a, 10000L);
            if (iDequeueOutputBuffer >= 0) {
                mediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, true);
                d();
            } else if (iDequeueOutputBuffer == -1) {
                d();
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        return z3;
    }

    public final int b(byte[] bArr) {
        for (int i4 = 4; i4 < bArr.length - 3; i4++) {
            if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 0 && bArr[i4 + 3] == 1) {
                return i4;
            }
        }
        return -1;
    }

    public final void c(b.a aVar) {
        StringBuilder sbA = f.a("startDecoder: ");
        sbA.append(aVar.f149c);
        sbA.append("x");
        androidx.media.b.a(sbA, aVar.f150d, "VideoPlayer");
        MediaCodec mediaCodec = this.f310b;
        if (mediaCodec != null) {
            try {
                mediaCodec.stop();
                this.f310b = null;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        try {
            MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", aVar.f149c, aVar.f150d);
            byte[] bArr = aVar.f147a;
            int iB = b(bArr);
            byte[] bArr2 = new byte[iB];
            System.arraycopy(bArr, 0, bArr2, 0, iB);
            mediaFormatCreateVideoFormat.setByteBuffer("csd-0", ByteBuffer.wrap(bArr2));
            byte[] bArr3 = aVar.f147a;
            int iB2 = b(bArr3);
            int length = bArr3.length - iB2;
            byte[] bArr4 = new byte[length];
            System.arraycopy(bArr3, iB2, bArr4, 0, length);
            mediaFormatCreateVideoFormat.setByteBuffer("csd-1", ByteBuffer.wrap(bArr4));
            MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType("video/avc");
            this.f310b = mediaCodecCreateDecoderByType;
            mediaCodecCreateDecoderByType.configure(mediaFormatCreateVideoFormat, this.f311c, (MediaCrypto) null, 0);
            this.f310b.setVideoScalingMode(1);
            this.f310b.start();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void d() {
        try {
            Thread.sleep(10L);
        } catch (InterruptedException e4) {
            e4.printStackTrace();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        b.a first;
        while (!this.f312d) {
            synchronized (this.f313e) {
                first = (this.f311c == null || this.f313e.isEmpty()) ? null : this.f313e.getFirst();
            }
            if (first == null) {
                d();
            } else {
                try {
                    boolean zA = true;
                    if ((first.f147a[4] & 31) == 7) {
                        c(first);
                    } else {
                        zA = a(this.f310b, first);
                    }
                    if (zA) {
                        synchronized (this.f313e) {
                            this.f313e.removeFirst();
                        }
                    } else {
                        continue;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }
}
