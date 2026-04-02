package com.arcsoft.imageutil;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ArcSoftImageUtil {
    private static final int HEIGHT_MULTIPLE = 4;
    private static final int VALUE_FOR_4_ALIGN = 3;
    private static final int WIDTH_MULTIPLE = 4;

    /* JADX INFO: renamed from: com.arcsoft.imageutil.ArcSoftImageUtil$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$arcsoft$imageutil$ArcSoftImageFormat;

        static {
            int[] iArr = new int[ArcSoftImageFormat.values().length];
            $SwitchMap$com$arcsoft$imageutil$ArcSoftImageFormat = iArr;
            try {
                iArr[ArcSoftImageFormat.NV21.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$arcsoft$imageutil$ArcSoftImageFormat[ArcSoftImageFormat.NV12.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$arcsoft$imageutil$ArcSoftImageFormat[ArcSoftImageFormat.I420.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$arcsoft$imageutil$ArcSoftImageFormat[ArcSoftImageFormat.YV12.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$arcsoft$imageutil$ArcSoftImageFormat[ArcSoftImageFormat.BGR24.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$arcsoft$imageutil$ArcSoftImageFormat[ArcSoftImageFormat.YUYV.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$arcsoft$imageutil$ArcSoftImageFormat[ArcSoftImageFormat.GRAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    static {
        System.loadLibrary("arcsoft_image_util");
    }

    public static int bitmapToImageData(Bitmap bitmap, byte[] bArr, ArcSoftImageFormat arcSoftImageFormat) {
        if (arcSoftImageFormat == null || bArr == null || bitmap == null) {
            return 4;
        }
        if (bArr.length != getDataLengthBySizeAndFormat(bitmap.getWidth(), bitmap.getHeight(), arcSoftImageFormat)) {
            return 1;
        }
        return nativeBitmapToImageData(bitmap, bArr, arcSoftImageFormat.format);
    }

    public static byte[] createImageData(int i4, int i5, ArcSoftImageFormat arcSoftImageFormat) {
        return new byte[getDataLengthBySizeAndFormat(i4, i5, arcSoftImageFormat)];
    }

    public static int cropImage(byte[] bArr, byte[] bArr2, int i4, int i5, Rect rect, ArcSoftImageFormat arcSoftImageFormat) {
        if (rect == null || arcSoftImageFormat == null) {
            return 4;
        }
        return nativeCropImage(bArr, bArr2, i4, i5, rect.left, rect.top, rect.right, rect.bottom, arcSoftImageFormat.format);
    }

    public static Bitmap getAlignedBitmap(Bitmap bitmap, boolean z3) {
        if (bitmap == null) {
            return null;
        }
        if (bitmap.getConfig() != Bitmap.Config.ARGB_8888 && bitmap.getConfig() != Bitmap.Config.RGB_565) {
            return null;
        }
        if ((bitmap.getWidth() & 3) == 0 && (bitmap.getHeight() & 3) == 0) {
            return bitmap;
        }
        int width = bitmap.getWidth();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(z3 ? width & (-4) : width + ((4 - (bitmap.getWidth() & 3)) % 4), z3 ? bitmap.getHeight() & (-4) : bitmap.getHeight() + ((4 - (bitmap.getHeight() & 3)) % 4), bitmap.getConfig());
        nativeAlignBitmap(bitmap, bitmapCreateBitmap);
        return bitmapCreateBitmap;
    }

    private static int getDataLengthBySizeAndFormat(int i4, int i5, ArcSoftImageFormat arcSoftImageFormat) {
        Objects.requireNonNull(arcSoftImageFormat, "arcSoftImageFormat not specified");
        if ((i4 & 3) != 0 || (i5 & 3) != 0) {
            throw new IllegalArgumentException("invalid width or height, width and height must be a multiple of 4");
        }
        switch (AnonymousClass1.$SwitchMap$com$arcsoft$imageutil$ArcSoftImageFormat[arcSoftImageFormat.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return ((i4 * i5) * 3) / 2;
            case 5:
                return i4 * i5 * 3;
            case 6:
                return i4 * i5 * 2;
            case 7:
                return i4 * i5;
            default:
                throw new IllegalArgumentException("invalid arcSoftImageFormat '" + arcSoftImageFormat + "'");
        }
    }

    public static String getVersion() {
        return nativeGetVersion();
    }

    public static int imageDataToBitmap(byte[] bArr, Bitmap bitmap, ArcSoftImageFormat arcSoftImageFormat) {
        if (arcSoftImageFormat == null || bArr == null || bitmap == null) {
            return 4;
        }
        if (bArr.length != getDataLengthBySizeAndFormat(bitmap.getWidth(), bitmap.getHeight(), arcSoftImageFormat)) {
            return 1;
        }
        return nativeImageDataToBitmap(bArr, bitmap, arcSoftImageFormat.format);
    }

    public static int mirrorImage(byte[] bArr, byte[] bArr2, int i4, int i5, ArcSoftMirrorOrient arcSoftMirrorOrient, ArcSoftImageFormat arcSoftImageFormat) {
        if (arcSoftMirrorOrient == null || arcSoftImageFormat == null) {
            return 4;
        }
        return nativeMirrorImage(bArr, bArr2, i4, i5, arcSoftMirrorOrient.horizontal, arcSoftImageFormat.format);
    }

    private static native void nativeAlignBitmap(Bitmap bitmap, Bitmap bitmap2);

    private static native int nativeBitmapToImageData(Bitmap bitmap, byte[] bArr, int i4);

    private static native int nativeCropImage(byte[] bArr, byte[] bArr2, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    private static native String nativeGetVersion();

    private static native int nativeImageDataToBitmap(byte[] bArr, Bitmap bitmap, int i4);

    private static native int nativeImageFormatTransform(byte[] bArr, byte[] bArr2, int i4, int i5, int i6, int i7);

    private static native int nativeMirrorImage(byte[] bArr, byte[] bArr2, int i4, int i5, boolean z3, int i6);

    private static native int nativeRotateImage(byte[] bArr, byte[] bArr2, int i4, int i5, int i6, int i7);

    public static int rotateImage(byte[] bArr, byte[] bArr2, int i4, int i5, ArcSoftRotateDegree arcSoftRotateDegree, ArcSoftImageFormat arcSoftImageFormat) {
        if (bArr == null || bArr2 == null || arcSoftImageFormat == null || arcSoftRotateDegree == null) {
            return 4;
        }
        return nativeRotateImage(bArr, bArr2, i4, i5, arcSoftRotateDegree.degree, arcSoftImageFormat.format);
    }

    public static int transformImage(byte[] bArr, byte[] bArr2, int i4, int i5, ArcSoftImageFormat arcSoftImageFormat, ArcSoftImageFormat arcSoftImageFormat2) {
        if (arcSoftImageFormat == null || arcSoftImageFormat2 == null || bArr == null || bArr2 == null) {
            return 4;
        }
        if (arcSoftImageFormat != arcSoftImageFormat2) {
            return nativeImageFormatTransform(bArr, bArr2, i4, i5, arcSoftImageFormat.format, arcSoftImageFormat2.format);
        }
        if (bArr.length != bArr2.length || bArr.length != getDataLengthBySizeAndFormat(i4, i5, arcSoftImageFormat)) {
            return 1;
        }
        if (bArr == bArr2) {
            return 5;
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return 0;
    }

    public static int cropImage(byte[] bArr, byte[] bArr2, int i4, int i5, int i6, int i7, int i8, int i9, ArcSoftImageFormat arcSoftImageFormat) {
        if (arcSoftImageFormat == null) {
            return 4;
        }
        return nativeCropImage(bArr, bArr2, i4, i5, i6, i7, i8, i9, arcSoftImageFormat.format);
    }

    public static int cropImage(byte[] bArr, byte[] bArr2, int i4, int i5, Point point, Point point2, ArcSoftImageFormat arcSoftImageFormat) {
        if (arcSoftImageFormat == null) {
            return 4;
        }
        return nativeCropImage(bArr, bArr2, i4, i5, point.x, point.y, point2.x, point2.y, arcSoftImageFormat.format);
    }
}
