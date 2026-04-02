package com.arcsoft.face.util;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import androidx.core.view.ViewCompat;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class ImageUtils {
    private static final int FACE_DETECT_IMAGE_HEIGHT_LIMIT = 2;
    private static final int FACE_DETECT_IMAGE_WIDTH_LIMIT = 4;
    private static final int VALUE_FOR_2_ALIGN = 1;
    private static final int VALUE_FOR_4_ALIGN = 3;

    public static Bitmap alignBitmapForBgr24(Bitmap bitmap) {
        if (bitmap == null || bitmap.getWidth() < 4) {
            return null;
        }
        int width = bitmap.getWidth();
        return (width & 3) != 0 ? cropImage(bitmap, new Rect(0, 0, width & (-4), bitmap.getHeight())) : bitmap;
    }

    public static Bitmap bgrToBitmap(byte[] bArr, int i4, int i5) {
        int[] iArrConvertBgrToColor = convertBgrToColor(bArr);
        if (iArrConvertBgrToColor == null) {
            return null;
        }
        return Bitmap.createBitmap(iArrConvertBgrToColor, 0, i4, i4, i5, Bitmap.Config.ARGB_8888);
    }

    public static byte[] bitmapToBgr24(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
        if (config != config2) {
            bitmap = bitmap.copy(config2, true);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getByteCount());
        bitmap.copyPixelsToBuffer(byteBufferAllocate);
        byte[] bArrArray = byteBufferAllocate.array();
        int length = bArrArray.length / 4;
        byte[] bArr = new byte[length * 3];
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            bArr[i4] = bArrArray[i5 + 2];
            bArr[i4 + 1] = bArrArray[i5 + 1];
            bArr[i4 + 2] = bArrArray[i5];
            i4 += 3;
            i5 += 4;
        }
        return bArr;
    }

    private static int[] convertBgrToColor(byte[] bArr) {
        int length = bArr.length;
        if (length == 0 || length % 3 != 0) {
            return null;
        }
        int i4 = length / 3;
        int[] iArr = new int[i4];
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            iArr[i6] = ((bArr[i5 + 2] & 255) << 16) | ((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255) | ViewCompat.MEASURED_STATE_MASK;
            i5 += 3;
        }
        return iArr;
    }

    public static byte[] cropBgr24(byte[] bArr, int i4, int i5, Rect rect) {
        int i6;
        int i7;
        int i8;
        if (bArr == null || bArr.length == 0 || i4 * i5 * 3 != bArr.length || rect == null) {
            throw new IllegalArgumentException("invalid image params!");
        }
        int i9 = rect.left;
        if (i9 < 0 || (i6 = rect.top) < 0 || (i7 = rect.right) > i4 || (i8 = rect.bottom) > i5) {
            throw new IllegalArgumentException("rect out of bounds!");
        }
        if (i7 <= i9 || i8 <= i6) {
            throw new IllegalArgumentException("invalid rect!");
        }
        int i10 = i7 - i9;
        byte[] bArr2 = new byte[(i8 - i6) * i10 * 3];
        int i11 = i6 * i4 * 3;
        int i12 = 0;
        while (i6 < rect.bottom) {
            int i13 = i10 * 3;
            System.arraycopy(bArr, (rect.left * 3) + i11, bArr2, i12, i13);
            i11 += i4 * 3;
            i12 += i13;
            i6++;
        }
        return bArr2;
    }

    public static Bitmap cropImage(Bitmap bitmap, Rect rect) {
        if (bitmap == null || rect == null || rect.isEmpty() || bitmap.getWidth() < rect.right || bitmap.getHeight() < rect.bottom) {
            return null;
        }
        return Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), rect.height(), (Matrix) null, false);
    }

    public static byte[] cropNv21(byte[] bArr, int i4, int i5, Rect rect) {
        int i6;
        int i7;
        int i8;
        if (bArr != null && bArr.length != 0) {
            int i9 = i4 * i5;
            if ((i9 * 3) / 2 == bArr.length && rect != null) {
                int i10 = rect.left;
                if (i10 < 0 || (i6 = rect.top) < 0 || (i7 = rect.right) > i4 || (i8 = rect.bottom) > i5) {
                    throw new IllegalArgumentException("rect out of bounds!");
                }
                if (i7 <= i10 || i8 <= i6) {
                    throw new IllegalArgumentException("invalid rect!");
                }
                if (((i7 - i10) & 1) == 1 || ((i8 - i6) & 1) == 1) {
                    throw new IllegalArgumentException("nv21 width and height must be even!");
                }
                int i11 = i7 - i10;
                int i12 = (i8 - i6) * i11;
                byte[] bArr2 = new byte[(i12 * 3) / 2];
                int i13 = i6 * i4;
                int i14 = 0;
                int i15 = ((i6 * i4) / 2) + i9;
                while (i6 < rect.bottom) {
                    System.arraycopy(bArr, rect.left + i13, bArr2, i14, i11);
                    i13 += i4;
                    i14 += i11;
                    if ((i6 & 1) == 0) {
                        System.arraycopy(bArr, rect.left + i15, bArr2, i12, i11);
                        i15 += i4;
                        i12 += i11;
                    }
                    i6++;
                }
                return bArr2;
            }
        }
        throw new IllegalArgumentException("invalid image params!");
    }

    public static Bitmap rotateBitmap(Bitmap bitmap, float f4) {
        if (bitmap == null) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(f4);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
    }
}
