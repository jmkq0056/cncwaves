package com.google.android.exoplayer2.video;

import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import b1.f;
import c1.b;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class VideoDecoderOutputBuffer extends b {
    public static final int COLORSPACE_BT2020 = 3;
    public static final int COLORSPACE_BT601 = 1;
    public static final int COLORSPACE_BT709 = 2;
    public static final int COLORSPACE_UNKNOWN = 0;
    public int colorspace;

    @Nullable
    public ByteBuffer data;
    public int decoderPrivate;

    @Nullable
    public f format;
    public int height;
    public int mode;
    private final b.a<VideoDecoderOutputBuffer> owner;

    @Nullable
    public ByteBuffer supplementalData;
    public int width;

    @Nullable
    public ByteBuffer[] yuvPlanes;

    @Nullable
    public int[] yuvStrides;

    public VideoDecoderOutputBuffer(b.a<VideoDecoderOutputBuffer> aVar) {
        this.owner = aVar;
    }

    private static boolean isSafeToMultiply(int i4, int i5) {
        return i4 >= 0 && i5 >= 0 && (i5 <= 0 || i4 < ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED / i5);
    }

    public void init(long j4, int i4, @Nullable ByteBuffer byteBuffer) {
        this.timeUs = j4;
        this.mode = i4;
        if (byteBuffer == null || !byteBuffer.hasRemaining()) {
            this.supplementalData = null;
            return;
        }
        addFlag(268435456);
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBuffer2 = this.supplementalData;
        if (byteBuffer2 == null || byteBuffer2.capacity() < iLimit) {
            this.supplementalData = ByteBuffer.allocate(iLimit);
        } else {
            this.supplementalData.clear();
        }
        this.supplementalData.put(byteBuffer);
        this.supplementalData.flip();
        byteBuffer.position(0);
    }

    public void initForPrivateFrame(int i4, int i5) {
        this.width = i4;
        this.height = i5;
    }

    public boolean initForYuvFrame(int i4, int i5, int i6, int i7, int i8) {
        this.width = i4;
        this.height = i5;
        this.colorspace = i8;
        int i9 = (int) ((((long) i5) + 1) / 2);
        if (isSafeToMultiply(i6, i5) && isSafeToMultiply(i7, i9)) {
            int i10 = i5 * i6;
            int i11 = i9 * i7;
            int i12 = (i11 * 2) + i10;
            if (isSafeToMultiply(i11, 2) && i12 >= i10) {
                ByteBuffer byteBuffer = this.data;
                if (byteBuffer == null || byteBuffer.capacity() < i12) {
                    this.data = ByteBuffer.allocateDirect(i12);
                } else {
                    this.data.position(0);
                    this.data.limit(i12);
                }
                if (this.yuvPlanes == null) {
                    this.yuvPlanes = new ByteBuffer[3];
                }
                ByteBuffer byteBuffer2 = this.data;
                ByteBuffer[] byteBufferArr = this.yuvPlanes;
                byteBufferArr[0] = byteBuffer2.slice();
                byteBufferArr[0].limit(i10);
                byteBuffer2.position(i10);
                byteBufferArr[1] = byteBuffer2.slice();
                byteBufferArr[1].limit(i11);
                byteBuffer2.position(i10 + i11);
                byteBufferArr[2] = byteBuffer2.slice();
                byteBufferArr[2].limit(i11);
                if (this.yuvStrides == null) {
                    this.yuvStrides = new int[3];
                }
                int[] iArr = this.yuvStrides;
                iArr[0] = i6;
                iArr[1] = i7;
                iArr[2] = i7;
                return true;
            }
        }
        return false;
    }

    @Override // c1.b
    public void release() {
        this.owner.a(this);
    }
}
