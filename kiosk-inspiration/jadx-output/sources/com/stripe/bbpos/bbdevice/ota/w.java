package com.stripe.bbpos.bbdevice.ota;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import java.lang.reflect.Array;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes3.dex */
final class w {
    static final int[][] d = {new int[]{99, WinError.ERROR_INVALID_LEVEL, WinError.ERROR_BAD_DRIVER_LEVEL, 123, 242, WinError.ERROR_DISK_CHANGE, WinError.ERROR_BUFFER_OVERFLOW, WinError.ERROR_IOPL_NOT_ENABLED, 48, 1, 103, 43, WinError.ERROR_INVALID_EA_NAME, WinError.ERROR_NESTING_NOT_ALLOWED, 171, WinError.ERROR_INVALID_VERIFY_SWITCH}, new int[]{202, 130, 201, WinError.ERROR_NO_VOLUME_LABEL, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 89, 71, 240, WinError.ERROR_CANCEL_VIOLATION, WinError.ERROR_LOCKED, 162, 175, WinError.ERROR_SIGNAL_REFUSED, 164, WinError.ERROR_INVALID_TARGET_HANDLE, 192}, new int[]{WinError.ERROR_ALREADY_EXISTS, 253, WinError.ERROR_IS_JOIN_PATH, 38, 54, 63, 247, HttpStatus.SC_NO_CONTENT, 52, WinUser.VK_RMENU, WinError.ERROR_PIPE_LOCAL, 241, WinError.ERROR_NO_MORE_SEARCH_HANDLES, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, 49, 21}, new int[]{4, WinError.ERROR_AUTODATASEG_EXCEEDS_64k, 35, WinError.ERROR_INVALID_MINALLOCSIZE, 24, WinError.ERROR_SYSTEM_TRACE, 5, WinError.ERROR_LABEL_TOO_LONG, 7, 18, 128, WinError.ERROR_VIRUS_DELETED, 235, 39, 178, WinError.ERROR_INVALID_CATEGORY}, new int[]{9, 131, 44, 26, 27, 110, 90, 160, 82, 59, WinError.ERROR_TOO_MANY_MODULES, 179, 41, 227, 47, WinError.ERROR_SEEK_ON_DEVICE}, new int[]{83, WinError.ERROR_INVALID_SIGNAL_NUMBER, 0, 237, 32, 252, 177, 91, WinError.ERROR_SEM_USER_LIMIT, 203, WinError.ERROR_INVALID_MODULETYPE, 57, 74, 76, 88, 207}, new int[]{WinError.ERROR_META_EXPANSION_TOO_LONG, 239, WinError.ERROR_BUSY, 251, 67, 77, 51, WinError.ERROR_IS_JOIN_TARGET, 69, 249, 2, 127, 80, 60, WinError.ERROR_BAD_THREADID_ADDR, 168}, new int[]{81, WinUser.VK_RCONTROL, 64, WinError.ERROR_SAME_DRIVE, WinError.ERROR_IS_SUBST_PATH, WinError.ERROR_DISCARDED, 56, 245, WinError.ERROR_INVALID_STARTING_CODESEG, WinError.ERROR_INVALID_ORDINAL, WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, 33, 16, 255, 243, WinError.ERROR_THREAD_1_INACTIVE}, new int[]{205, 12, 19, 236, 95, WinError.ERROR_INVALID_EVENT_COUNT, 68, 23, WinError.ERROR_DYNLINK_FROM_INVALID_RING, WinError.ERROR_LOCK_FAILED, 126, 61, 100, 93, 25, 115}, new int[]{96, 129, 79, WinError.ERROR_FILE_CHECKED_OUT, 34, 42, WinError.ERROR_DIR_NOT_ROOT, 136, 70, 238, 184, 20, WinError.ERROR_BAD_FILE_TYPE, 94, 11, 219}, new int[]{WinError.ERROR_FORMS_AUTH_REQUIRED, 50, 58, 10, 73, 6, 36, 92, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, 211, 172, 98, WinError.ERROR_DIR_NOT_EMPTY, WinError.ERROR_IS_SUBST_TARGET, 228, WinError.ERROR_SEM_TIMEOUT}, new int[]{WinError.ERROR_PIPE_BUSY, 200, 55, 109, WinError.ERROR_SUBST_TO_JOIN, 213, 78, 169, 108, 86, 244, WinError.ERROR_MORE_DATA, 101, 122, WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, 8}, new int[]{WinError.ERROR_INVALID_FLAG_NUMBER, WinError.ERROR_CALL_NOT_IMPLEMENTED, 37, 46, 28, 166, WinError.ERROR_INVALID_SEGMENT_NUMBER, WinError.ERROR_INVALID_SEGDPL, WinError.ERROR_NO_DATA, WinError.ERROR_CHECKOUT_REQUIRED, 116, 31, 75, WinError.ERROR_INVALID_STACKSEG, WinError.ERROR_SUBST_TO_SUBST, WinError.ERROR_JOIN_TO_JOIN}, new int[]{112, 62, 181, 102, 72, 3, 246, 14, 97, 53, 87, 185, WinError.ERROR_IS_JOINED, WinError.ERROR_BAD_EXE_FORMAT, 29, WinError.ERROR_NOT_LOCKED}, new int[]{WinError.ERROR_VIRUS_INFECTED, 248, WinError.ERROR_TOO_MANY_MUXWAITERS, 17, WinError.ERROR_SEM_OWNER_DIED, WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY, 142, WinError.ERROR_PATH_BUSY, 155, 30, WinError.ERROR_IS_SUBSTED, WinError.ERROR_PIPE_NOT_CONNECTED, 206, 85, 40, WinError.ERROR_FILE_TOO_LARGE}, new int[]{WinError.ERROR_JOIN_TO_SUBST, 161, WinError.ERROR_NOT_SUBSTED, 13, 191, WinError.ERROR_BAD_PIPE, 66, 104, 65, WinError.ERROR_INVALID_LIST_FORMAT, 45, 15, 176, 84, WinError.ERROR_SEM_NOT_FOUND, 22}};
    static final int[][] e = {new int[]{82, 9, WinError.ERROR_SEM_USER_LIMIT, 213, 48, 54, WinUser.VK_RMENU, 56, 191, 64, WinUser.VK_RCONTROL, WinError.ERROR_NOT_LOCKED, 129, 243, WinError.ERROR_NESTING_NOT_ALLOWED, 251}, new int[]{WinError.ERROR_INVALID_LEVEL, 227, 57, 130, 155, 47, 255, WinError.ERROR_IS_SUBSTED, 52, 142, 67, 68, WinError.ERROR_DYNLINK_FROM_INVALID_RING, WinError.ERROR_BAD_FILE_TYPE, WinError.ERROR_PIPE_NOT_CONNECTED, 203}, new int[]{84, 123, WinError.ERROR_PATH_BUSY, 50, 166, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, 35, 61, 238, 76, WinError.ERROR_IS_SUBST_TARGET, 11, 66, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, WinError.ERROR_INVALID_MINALLOCSIZE, 78}, new int[]{8, 46, 161, 102, 40, WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY, 36, 178, WinError.ERROR_INVALID_VERIFY_SWITCH, 91, 162, 73, 109, WinError.ERROR_SUBST_TO_SUBST, WinError.ERROR_INVALID_SIGNAL_NUMBER, 37}, new int[]{WinError.ERROR_INVALID_TARGET_HANDLE, 248, 246, 100, WinError.ERROR_IS_JOINED, 104, WinError.ERROR_TOO_MANY_MUXWAITERS, 22, WinError.ERROR_LOCKED, 164, 92, HttpStatus.SC_NO_CONTENT, 93, 101, WinError.ERROR_INVALID_ORDINAL, WinError.ERROR_IS_SUBST_PATH}, new int[]{108, 112, 72, 80, 253, 237, 185, WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, 94, 21, 70, 87, WinError.ERROR_LOCK_FAILED, WinError.ERROR_SUBST_TO_JOIN, WinError.ERROR_DISCARDED, WinError.ERROR_SEEK_ON_DEVICE}, new int[]{WinError.ERROR_DIR_NOT_ROOT, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, 171, 0, WinError.ERROR_JOIN_TO_SUBST, WinError.ERROR_INVALID_STARTING_CODESEG, 211, 10, 247, 228, 88, 5, 184, 179, 69, 6}, new int[]{WinError.ERROR_META_EXPANSION_TOO_LONG, 44, 30, WinError.ERROR_SAME_DRIVE, 202, 63, 15, 2, WinError.ERROR_BAD_EXE_FORMAT, 175, WinError.ERROR_INVALID_STACKSEG, 3, 1, 19, WinError.ERROR_JOIN_TO_JOIN, WinError.ERROR_DISK_CHANGE}, new int[]{58, WinError.ERROR_DIR_NOT_EMPTY, 17, 65, 79, 103, WinError.ERROR_FILE_CHECKED_OUT, WinError.ERROR_MORE_DATA, WinError.ERROR_INVALID_EVENT_COUNT, 242, 207, 206, 240, WinError.ERROR_INVALID_SEGMENT_NUMBER, WinError.ERROR_BAD_PIPE, 115}, new int[]{WinError.ERROR_SYSTEM_TRACE, 172, 116, 34, WinError.ERROR_PIPE_BUSY, WinError.ERROR_CANCEL_VIOLATION, 53, WinError.ERROR_IS_JOIN_TARGET, WinError.ERROR_VIRUS_DELETED, 249, 55, WinError.ERROR_NO_DATA, 28, WinError.ERROR_INVALID_CATEGORY, WinError.ERROR_FILE_TOO_LARGE, 110}, new int[]{71, 241, 26, WinError.ERROR_NO_MORE_SEARCH_HANDLES, 29, 41, WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_NOT_SUBSTED, WinError.ERROR_BUFFER_OVERFLOW, WinError.ERROR_ALREADY_EXISTS, 98, 14, WinError.ERROR_BUSY, 24, WinError.ERROR_INVALID_MODULETYPE, 27}, new int[]{252, 86, 62, 75, WinError.ERROR_INVALID_SEGDPL, WinError.ERROR_THREAD_1_INACTIVE, WinError.ERROR_SEM_TIMEOUT, 32, WinError.ERROR_LABEL_TOO_LONG, 219, 192, WinError.ERROR_INVALID_EA_NAME, WinError.ERROR_CALL_NOT_IMPLEMENTED, 205, 90, 244}, new int[]{31, WinError.ERROR_CHECKOUT_REQUIRED, 168, 51, 136, 7, WinError.ERROR_AUTODATASEG_EXCEEDS_64k, 49, 177, 18, 16, 89, 39, 128, 236, 95}, new int[]{96, 81, 127, 169, 25, 181, 74, 13, 45, WinError.ERROR_PIPE_LOCAL, 122, WinError.ERROR_BAD_THREADID_ADDR, WinError.ERROR_IS_JOIN_PATH, 201, WinError.ERROR_SIGNAL_REFUSED, 239}, new int[]{160, WinError.ERROR_FORMS_AUTH_REQUIRED, 59, 77, WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, 42, 245, 176, 200, 235, WinError.ERROR_SEM_NOT_FOUND, 60, 131, 83, WinError.ERROR_INVALID_LIST_FORMAT, 97}, new int[]{23, 43, 4, 126, WinError.ERROR_INVALID_FLAG_NUMBER, WinError.ERROR_BAD_DRIVER_LEVEL, WinError.ERROR_TOO_MANY_MODULES, 38, WinError.ERROR_VIRUS_INFECTED, WinError.ERROR_SEM_OWNER_DIED, 20, 99, 85, 33, 12, WinError.ERROR_NO_VOLUME_LABEL}};
    static final int[][] f = {new int[]{2, 3, 1, 1}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 2, 3}, new int[]{3, 1, 1, 2}};
    static final int[][] g = {new int[]{14, 11, 13, 9}, new int[]{9, 14, 11, 13}, new int[]{13, 9, 14, 11}, new int[]{11, 13, 9, 14}};
    static final int[] h = {WinError.ERROR_SUBST_TO_JOIN, 1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, 171, 77, WinError.ERROR_LABEL_TOO_LONG, 47, 94, WinError.ERROR_INVALID_STARTING_CODESEG, 99, WinError.ERROR_INVALID_SEGDPL, WinError.ERROR_INVALID_EVENT_COUNT, 53, WinError.ERROR_SEM_USER_LIMIT, WinError.ERROR_LOCKED, 179, WinError.ERROR_NO_VOLUME_LABEL, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_DIR_NOT_EMPTY, 57, WinError.ERROR_INVALID_TARGET_HANDLE, 228, 211, WinError.ERROR_INVALID_STACKSEG, 97, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, WinError.ERROR_BAD_THREADID_ADDR, 37, 74, WinError.ERROR_PATH_BUSY, 51, 102, HttpStatus.SC_NO_CONTENT, 131, 29, 58, 116, WinError.ERROR_NO_DATA, 203, WinError.ERROR_SUBST_TO_JOIN, 1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, 171, 77, WinError.ERROR_LABEL_TOO_LONG, 47, 94, WinError.ERROR_INVALID_STARTING_CODESEG, 99, WinError.ERROR_INVALID_SEGDPL, WinError.ERROR_INVALID_EVENT_COUNT, 53, WinError.ERROR_SEM_USER_LIMIT, WinError.ERROR_LOCKED, 179, WinError.ERROR_NO_VOLUME_LABEL, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_DIR_NOT_EMPTY, 57, WinError.ERROR_INVALID_TARGET_HANDLE, 228, 211, WinError.ERROR_INVALID_STACKSEG, 97, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, WinError.ERROR_BAD_THREADID_ADDR, 37, 74, WinError.ERROR_PATH_BUSY, 51, 102, HttpStatus.SC_NO_CONTENT, 131, 29, 58, 116, WinError.ERROR_NO_DATA, 203, WinError.ERROR_SUBST_TO_JOIN, 1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, 171, 77, WinError.ERROR_LABEL_TOO_LONG, 47, 94, WinError.ERROR_INVALID_STARTING_CODESEG, 99, WinError.ERROR_INVALID_SEGDPL, WinError.ERROR_INVALID_EVENT_COUNT, 53, WinError.ERROR_SEM_USER_LIMIT, WinError.ERROR_LOCKED, 179, WinError.ERROR_NO_VOLUME_LABEL, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_DIR_NOT_EMPTY, 57, WinError.ERROR_INVALID_TARGET_HANDLE, 228, 211, WinError.ERROR_INVALID_STACKSEG, 97, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, WinError.ERROR_BAD_THREADID_ADDR, 37, 74, WinError.ERROR_PATH_BUSY, 51, 102, HttpStatus.SC_NO_CONTENT, 131, 29, 58, 116, WinError.ERROR_NO_DATA, 203, WinError.ERROR_SUBST_TO_JOIN, 1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, 171, 77, WinError.ERROR_LABEL_TOO_LONG, 47, 94, WinError.ERROR_INVALID_STARTING_CODESEG, 99, WinError.ERROR_INVALID_SEGDPL, WinError.ERROR_INVALID_EVENT_COUNT, 53, WinError.ERROR_SEM_USER_LIMIT, WinError.ERROR_LOCKED, 179, WinError.ERROR_NO_VOLUME_LABEL, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_DIR_NOT_EMPTY, 57, WinError.ERROR_INVALID_TARGET_HANDLE, 228, 211, WinError.ERROR_INVALID_STACKSEG, 97, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, WinError.ERROR_BAD_THREADID_ADDR, 37, 74, WinError.ERROR_PATH_BUSY, 51, 102, HttpStatus.SC_NO_CONTENT, 131, 29, 58, 116, WinError.ERROR_NO_DATA, 203, WinError.ERROR_SUBST_TO_JOIN, 1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, 171, 77, WinError.ERROR_LABEL_TOO_LONG, 47, 94, WinError.ERROR_INVALID_STARTING_CODESEG, 99, WinError.ERROR_INVALID_SEGDPL, WinError.ERROR_INVALID_EVENT_COUNT, 53, WinError.ERROR_SEM_USER_LIMIT, WinError.ERROR_LOCKED, 179, WinError.ERROR_NO_VOLUME_LABEL, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_DIR_NOT_EMPTY, 57, WinError.ERROR_INVALID_TARGET_HANDLE, 228, 211, WinError.ERROR_INVALID_STACKSEG, 97, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, WinError.ERROR_BAD_THREADID_ADDR, 37, 74, WinError.ERROR_PATH_BUSY, 51, 102, HttpStatus.SC_NO_CONTENT, 131, 29, 58, 116, WinError.ERROR_NO_DATA, 203};
    static b i = null;
    static final /* synthetic */ boolean j = true;
    int[][] a = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 4);
    int[][] b = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 4);
    int[][] c = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 4);

    enum a {
        Encrypt,
        Decrypt
    }

    enum b {
        ECB,
        CBC
    }

    static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, a aVar, b bVar) {
        try {
            i = bVar;
            int i2 = 16;
            byte[] bArr4 = new byte[(bArr.length / 16) * 16];
            w wVar = new w();
            char c = '\t';
            char c2 = 4;
            char c3 = 2;
            int i3 = 0;
            if (aVar == a.Encrypt) {
                int length = (((bArr2.length * 8) - 128) / 32) + 10;
                byte[] bArr5 = new byte[16];
                System.arraycopy(bArr, 0, bArr5, 0, 16);
                int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 4);
                int[][] iArrA = wVar.a(bArr2);
                if (i == b.CBC && bArr3 != null) {
                    for (int i4 = 0; i4 < 4; i4++) {
                        for (int i5 = 0; i5 < 4; i5++) {
                            iArr[i5][i4] = bArr3[(i4 * 4) + i5] & 255;
                        }
                    }
                }
                int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 4);
                int i6 = 0;
                while (true) {
                    int[] iArr3 = iArr2[0];
                    iArr3[0] = bArr5[0] & 255;
                    iArr3[1] = bArr5[c2] & 255;
                    iArr3[c3] = bArr5[8] & 255;
                    iArr3[3] = bArr5[12] & 255;
                    int[] iArr4 = iArr2[1];
                    iArr4[0] = bArr5[1] & 255;
                    iArr4[1] = bArr5[5] & 255;
                    iArr4[c3] = bArr5[c] & 255;
                    iArr4[3] = bArr5[13] & 255;
                    int[] iArr5 = iArr2[c3];
                    iArr5[0] = bArr5[c3] & 255;
                    iArr5[1] = bArr5[6] & 255;
                    iArr5[c3] = bArr5[10] & 255;
                    iArr5[3] = bArr5[14] & 255;
                    int[] iArr6 = iArr2[3];
                    iArr6[0] = bArr5[3] & 255;
                    iArr6[1] = bArr5[7] & 255;
                    iArr6[c3] = bArr5[11] & 255;
                    iArr6[3] = bArr5[15] & 255;
                    if (i == b.CBC) {
                        wVar.a(iArr2, iArr);
                    }
                    wVar.a(iArr2, wVar.a(iArrA, 0));
                    for (int i7 = 1; i7 < length; i7++) {
                        wVar.f(iArr2);
                        wVar.e(iArr2);
                        wVar.d(iArr2);
                        wVar.a(iArr2, wVar.a(iArrA, i7));
                    }
                    wVar.f(iArr2);
                    wVar.e(iArr2);
                    wVar.a(iArr2, wVar.a(iArrA, length));
                    if (i == b.CBC) {
                        int[] iArr7 = iArr[0];
                        int[] iArr8 = iArr2[0];
                        iArr7[0] = iArr8[0];
                        iArr7[1] = iArr8[1];
                        iArr7[c3] = iArr8[c3];
                        iArr7[3] = iArr8[3];
                        int[] iArr9 = iArr[1];
                        int[] iArr10 = iArr2[1];
                        iArr9[0] = iArr10[0];
                        iArr9[1] = iArr10[1];
                        iArr9[c3] = iArr10[c3];
                        iArr9[3] = iArr10[3];
                        int[] iArr11 = iArr[c3];
                        int[] iArr12 = iArr2[c3];
                        iArr11[0] = iArr12[0];
                        iArr11[1] = iArr12[1];
                        iArr11[c3] = iArr12[c3];
                        iArr11[3] = iArr12[3];
                        int[] iArr13 = iArr[3];
                        int[] iArr14 = iArr2[3];
                        iArr13[0] = iArr14[0];
                        iArr13[1] = iArr14[1];
                        iArr13[c3] = iArr14[c3];
                        iArr13[3] = iArr14[3];
                    }
                    int i8 = i6 * 16;
                    int[] iArr15 = iArr2[0];
                    char c4 = c;
                    bArr4[i8] = (byte) iArr15[0];
                    int[] iArr16 = iArr2[1];
                    char c5 = c2;
                    bArr4[i8 + 1] = (byte) iArr16[0];
                    int[] iArr17 = iArr2[c3];
                    char c6 = c3;
                    bArr4[i8 + 2] = (byte) iArr17[0];
                    int[] iArr18 = iArr2[3];
                    int i9 = i2;
                    bArr4[i8 + 3] = (byte) iArr18[0];
                    bArr4[i8 + 4] = (byte) iArr15[1];
                    bArr4[i8 + 5] = (byte) iArr16[1];
                    bArr4[i8 + 6] = (byte) iArr17[1];
                    bArr4[i8 + 7] = (byte) iArr18[1];
                    bArr4[i8 + 8] = (byte) iArr15[c6];
                    bArr4[i8 + 9] = (byte) iArr16[c6];
                    bArr4[i8 + 10] = (byte) iArr17[c6];
                    bArr4[i8 + 11] = (byte) iArr18[c6];
                    bArr4[i8 + 12] = (byte) iArr15[3];
                    bArr4[i8 + 13] = (byte) iArr16[3];
                    bArr4[i8 + 14] = (byte) iArr17[3];
                    bArr4[i8 + 15] = (byte) iArr18[3];
                    int i10 = i6 + 1;
                    if ((i6 + 2) * 16 > bArr.length) {
                        break;
                    }
                    System.arraycopy(bArr, i10 * 16, bArr5, 0, i9);
                    i6 = i10;
                    c = c4;
                    c2 = c5;
                    c3 = c6;
                    i2 = 16;
                }
            } else {
                if (aVar != a.Decrypt) {
                    return null;
                }
                int length2 = ((bArr2.length * 8) - 128) / 32;
                int i11 = length2 + 10;
                byte[] bArr6 = new byte[16];
                System.arraycopy(bArr, 0, bArr6, 0, 16);
                int[][] iArr19 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 4);
                int[][] iArr20 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 4);
                int[][] iArrA2 = wVar.a(bArr2);
                if (i == b.CBC && bArr3 != null) {
                    int i12 = 0;
                    int i13 = 4;
                    while (i12 < i13) {
                        int i14 = 0;
                        while (i14 < i13) {
                            iArr19[i14][i12] = bArr3[(i12 * 4) + i14] & 255;
                            i14++;
                            i13 = 4;
                        }
                        i12++;
                        i13 = 4;
                    }
                }
                int[][] iArr21 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 4);
                int i15 = 0;
                while (true) {
                    int[] iArr22 = iArr21[i3];
                    iArr22[i3] = bArr6[i3] & 255;
                    iArr22[1] = bArr6[4] & 255;
                    iArr22[2] = bArr6[8] & 255;
                    iArr22[3] = bArr6[12] & 255;
                    int[] iArr23 = iArr21[1];
                    iArr23[i3] = bArr6[1] & 255;
                    iArr23[1] = bArr6[5] & 255;
                    iArr23[2] = bArr6[9] & 255;
                    iArr23[3] = bArr6[13] & 255;
                    int[] iArr24 = iArr21[2];
                    iArr24[i3] = bArr6[2] & 255;
                    iArr24[1] = bArr6[6] & 255;
                    iArr24[2] = bArr6[10] & 255;
                    iArr24[3] = bArr6[14] & 255;
                    int[] iArr25 = iArr21[3];
                    int i16 = i3;
                    iArr25[i16] = bArr6[3] & 255;
                    iArr25[1] = bArr6[7] & 255;
                    iArr25[2] = bArr6[11] & 255;
                    iArr25[3] = bArr6[15] & 255;
                    int i17 = length2;
                    if (i == b.CBC) {
                        int[] iArr26 = iArr20[i16];
                        iArr26[i16] = iArr22[i16];
                        iArr26[1] = iArr22[1];
                        iArr26[2] = iArr22[2];
                        iArr26[3] = iArr22[3];
                        int[] iArr27 = iArr20[1];
                        iArr27[i16] = iArr23[i16];
                        iArr27[1] = iArr23[1];
                        iArr27[2] = iArr23[2];
                        iArr27[3] = iArr23[3];
                        int[] iArr28 = iArr20[2];
                        iArr28[i16] = iArr24[i16];
                        iArr28[1] = iArr24[1];
                        iArr28[2] = iArr24[2];
                        iArr28[3] = iArr24[3];
                        int[] iArr29 = iArr20[3];
                        iArr29[i16] = iArr25[i16];
                        iArr29[1] = iArr25[1];
                        iArr29[2] = iArr25[2];
                        iArr29[3] = iArr25[3];
                    }
                    wVar.a(iArr21, wVar.a(iArrA2, i11));
                    for (int i18 = i17 + 9; i18 > 0; i18--) {
                        wVar.b(iArr21);
                        wVar.c(iArr21);
                        wVar.a(iArr21, wVar.a(iArrA2, i18));
                        wVar.a(iArr21);
                    }
                    wVar.b(iArr21);
                    wVar.c(iArr21);
                    wVar.a(iArr21, wVar.a(iArrA2, i16));
                    if (i == b.CBC) {
                        wVar.a(iArr21, iArr19);
                        int[] iArr30 = iArr19[i16];
                        int[] iArr31 = iArr20[i16];
                        iArr30[i16] = iArr31[i16];
                        iArr30[1] = iArr31[1];
                        iArr30[2] = iArr31[2];
                        iArr30[3] = iArr31[3];
                        int[] iArr32 = iArr19[1];
                        int[] iArr33 = iArr20[1];
                        iArr32[0] = iArr33[0];
                        iArr32[1] = iArr33[1];
                        iArr32[2] = iArr33[2];
                        iArr32[3] = iArr33[3];
                        int[] iArr34 = iArr19[2];
                        int[] iArr35 = iArr20[2];
                        iArr34[0] = iArr35[0];
                        iArr34[1] = iArr35[1];
                        iArr34[2] = iArr35[2];
                        iArr34[3] = iArr35[3];
                        int[] iArr36 = iArr19[3];
                        int[] iArr37 = iArr20[3];
                        iArr36[0] = iArr37[0];
                        iArr36[1] = iArr37[1];
                        iArr36[2] = iArr37[2];
                        iArr36[3] = iArr37[3];
                    }
                    int i19 = i15 * 16;
                    int[] iArr38 = iArr21[0];
                    bArr4[i19] = (byte) iArr38[0];
                    int[] iArr39 = iArr21[1];
                    bArr4[i19 + 1] = (byte) iArr39[0];
                    int[] iArr40 = iArr21[2];
                    bArr4[i19 + 2] = (byte) iArr40[0];
                    int[] iArr41 = iArr21[3];
                    int[][] iArr42 = iArrA2;
                    bArr4[i19 + 3] = (byte) iArr41[0];
                    bArr4[i19 + 4] = (byte) iArr38[1];
                    bArr4[i19 + 5] = (byte) iArr39[1];
                    bArr4[i19 + 6] = (byte) iArr40[1];
                    bArr4[i19 + 7] = (byte) iArr41[1];
                    bArr4[i19 + 8] = (byte) iArr38[2];
                    bArr4[i19 + 9] = (byte) iArr39[2];
                    bArr4[i19 + 10] = (byte) iArr40[2];
                    bArr4[i19 + 11] = (byte) iArr41[2];
                    bArr4[i19 + 12] = (byte) iArr38[3];
                    bArr4[i19 + 13] = (byte) iArr39[3];
                    bArr4[i19 + 14] = (byte) iArr40[3];
                    bArr4[i19 + 15] = (byte) iArr41[3];
                    int i20 = i15 + 1;
                    if ((i15 + 2) * 16 > bArr.length) {
                        break;
                    }
                    System.arraycopy(bArr, i20 * 16, bArr6, 0, 16);
                    iArrA2 = iArr42;
                    i3 = 0;
                    i15 = i20;
                    length2 = i17;
                }
            }
            return bArr4;
        } catch (Exception unused) {
            return null;
        }
    }

    private void b(int[][] iArr) {
        iArr[1] = b(iArr[1], 1);
        iArr[2] = b(iArr[2], 2);
        iArr[3] = b(iArr[3], 3);
    }

    private void c(int[][] iArr) {
        int[] iArr2 = iArr[0];
        int[][] iArr3 = e;
        int i2 = iArr2[0];
        iArr2[0] = iArr3[i2 >> 4][i2 & 15];
        int i3 = iArr2[1];
        iArr2[1] = iArr3[i3 >> 4][i3 & 15];
        int i4 = iArr2[2];
        iArr2[2] = iArr3[i4 >> 4][i4 & 15];
        int i5 = iArr2[3];
        iArr2[3] = iArr3[i5 >> 4][i5 & 15];
        int[] iArr4 = iArr[1];
        int i6 = iArr4[0];
        iArr4[0] = iArr3[i6 >> 4][i6 & 15];
        int i7 = iArr4[1];
        iArr4[1] = iArr3[i7 >> 4][i7 & 15];
        int i8 = iArr4[2];
        iArr4[2] = iArr3[i8 >> 4][i8 & 15];
        int i9 = iArr4[3];
        iArr4[3] = iArr3[i9 >> 4][i9 & 15];
        int[] iArr5 = iArr[2];
        int i10 = iArr5[0];
        iArr5[0] = iArr3[i10 >> 4][i10 & 15];
        int i11 = iArr5[1];
        iArr5[1] = iArr3[i11 >> 4][i11 & 15];
        int i12 = iArr5[2];
        iArr5[2] = iArr3[i12 >> 4][i12 & 15];
        int i13 = iArr5[3];
        iArr5[3] = iArr3[i13 >> 4][i13 & 15];
        int[] iArr6 = iArr[3];
        int i14 = iArr6[0];
        iArr6[0] = iArr3[i14 >> 4][i14 & 15];
        int i15 = iArr6[1];
        iArr6[1] = iArr3[i15 >> 4][i15 & 15];
        int i16 = iArr6[2];
        iArr6[2] = iArr3[i16 >> 4][i16 & 15];
        int i17 = iArr6[3];
        iArr6[3] = iArr3[i17 >> 4][i17 & 15];
    }

    private void d(int[][] iArr) {
        for (int i2 = 0; i2 < 4; i2++) {
            System.arraycopy(iArr[i2], 0, this.b[i2], 0, 4);
        }
        for (int i3 = 0; i3 < 4; i3++) {
            for (int i4 = 0; i4 < 4; i4++) {
                iArr[i3][i4] = b(this.b, f, i3, i4);
            }
        }
    }

    private void e(int[][] iArr) {
        for (int i2 = 1; i2 < iArr.length; i2++) {
            iArr[i2] = a(iArr[i2], i2);
        }
    }

    private void f(int[][] iArr) {
        int[] iArr2 = iArr[0];
        int[][] iArr3 = d;
        int i2 = iArr2[0];
        iArr2[0] = iArr3[i2 >> 4][i2 & 15];
        int i3 = iArr2[1];
        iArr2[1] = iArr3[i3 >> 4][i3 & 15];
        int i4 = iArr2[2];
        iArr2[2] = iArr3[i4 >> 4][i4 & 15];
        int i5 = iArr2[3];
        iArr2[3] = iArr3[i5 >> 4][i5 & 15];
        int[] iArr4 = iArr[1];
        int i6 = iArr4[0];
        iArr4[0] = iArr3[i6 >> 4][i6 & 15];
        int i7 = iArr4[1];
        iArr4[1] = iArr3[i7 >> 4][i7 & 15];
        int i8 = iArr4[2];
        iArr4[2] = iArr3[i8 >> 4][i8 & 15];
        int i9 = iArr4[3];
        iArr4[3] = iArr3[i9 >> 4][i9 & 15];
        int[] iArr5 = iArr[2];
        int i10 = iArr5[0];
        iArr5[0] = iArr3[i10 >> 4][i10 & 15];
        int i11 = iArr5[1];
        iArr5[1] = iArr3[i11 >> 4][i11 & 15];
        int i12 = iArr5[2];
        iArr5[2] = iArr3[i12 >> 4][i12 & 15];
        int i13 = iArr5[3];
        iArr5[3] = iArr3[i13 >> 4][i13 & 15];
        int[] iArr6 = iArr[3];
        int i14 = iArr6[0];
        iArr6[0] = iArr3[i14 >> 4][i14 & 15];
        int i15 = iArr6[1];
        iArr6[1] = iArr3[i15 >> 4][i15 & 15];
        int i16 = iArr6[2];
        iArr6[2] = iArr3[i16 >> 4][i16 & 15];
        int i17 = iArr6[3];
        iArr6[3] = iArr3[i17 >> 4][i17 & 15];
    }

    private int[] b(int[] iArr, int i2) {
        if (iArr.length != 0 && iArr.length != 1 && i2 % 4 != 0) {
            if (i2 == 1) {
                int i3 = iArr[3];
                iArr[3] = iArr[2];
                iArr[2] = iArr[1];
                iArr[1] = iArr[0];
                iArr[0] = i3;
                return iArr;
            }
            if (i2 == 2) {
                int i4 = iArr[3];
                int i5 = iArr[2];
                iArr[3] = iArr[1];
                iArr[2] = iArr[0];
                iArr[1] = i4;
                iArr[0] = i5;
                return iArr;
            }
            if (i2 == 3) {
                int i6 = iArr[0];
                iArr[0] = iArr[1];
                iArr[1] = iArr[2];
                iArr[2] = iArr[3];
                iArr[3] = i6;
            }
        }
        return iArr;
    }

    private int[] c(int[] iArr, int i2) {
        int[] iArrA = a(iArr, 1);
        for (int i3 = 0; i3 < iArrA.length; i3++) {
            int i4 = iArrA[i3];
            iArrA[i3] = d[i4 / 16][i4 % 16];
        }
        iArrA[0] = h[i2] ^ iArrA[0];
        return iArrA;
    }

    private int b(int[][] iArr, int[][] iArr2, int i2, int i3) {
        int iB = 0;
        for (int i4 = 0; i4 < 4; i4++) {
            iB ^= b(iArr2[i2][i4], iArr[i4][i3]);
        }
        return iB;
    }

    private int b(int i2, int i3) {
        if (i2 == 1) {
            return i3;
        }
        if (i2 == 2) {
            return x.a[i3 >> 4][i3 & 15];
        }
        if (i2 == 3) {
            return x.b[i3 >> 4][i3 & 15];
        }
        return 0;
    }

    private int[][] a(int[][] iArr, int i2) {
        int i3 = 0;
        while (true) {
            int[][] iArr2 = this.a;
            if (i3 >= iArr2.length) {
                return iArr2;
            }
            int i4 = 0;
            while (true) {
                int[][] iArr3 = this.a;
                if (i4 < iArr3.length) {
                    iArr3[i3][i4] = iArr[i3][(i2 << 2) + i4];
                    i4++;
                }
            }
            i3++;
        }
    }

    private int[] a(int[] iArr, int i2) {
        int i3 = i2 % 4;
        if (i3 != 0) {
            if (i3 == 1) {
                int i4 = iArr[0];
                iArr[0] = iArr[1];
                iArr[1] = iArr[2];
                iArr[2] = iArr[3];
                iArr[3] = i4;
                return iArr;
            }
            if (i3 == 2) {
                int i5 = iArr[0];
                int i6 = iArr[1];
                iArr[0] = iArr[2];
                iArr[1] = iArr[3];
                iArr[2] = i5;
                iArr[3] = i6;
                return iArr;
            }
            if (i3 == 3) {
                int i7 = iArr[3];
                iArr[3] = iArr[2];
                iArr[2] = iArr[1];
                iArr[1] = iArr[0];
                iArr[0] = i7;
            }
        }
        return iArr;
    }

    private void a(int[][] iArr) {
        for (int i2 = 0; i2 < 4; i2++) {
            System.arraycopy(iArr[i2], 0, this.c[i2], 0, 4);
        }
        for (int i3 = 0; i3 < 4; i3++) {
            for (int i4 = 0; i4 < 4; i4++) {
                iArr[i3][i4] = a(this.c, g, i3, i4);
            }
        }
    }

    private int a(int[][] iArr, int[][] iArr2, int i2, int i3) {
        int iA = 0;
        for (int i4 = 0; i4 < 4; i4++) {
            iA ^= a(iArr2[i2][i4], iArr[i4][i3]);
        }
        return iA;
    }

    private int a(int i2, int i3) {
        if (i2 == 9) {
            return x.c[i3 >> 4][i3 & 15];
        }
        if (i2 == 11) {
            return x.d[i3 >> 4][i3 & 15];
        }
        if (i2 == 13) {
            return x.e[i3 >> 4][i3 & 15];
        }
        if (i2 == 14) {
            return x.f[i3 >> 4][i3 & 15];
        }
        return 0;
    }

    private int[][] a(byte[] bArr) {
        int length = bArr.length * 8;
        int i2 = ((length + 48) - (((length / 64) - 2) * 32)) / 4;
        int i3 = 1;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, i2);
        int[] iArrC = new int[4];
        int i4 = length / 32;
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < 4; i6++) {
                iArr[i6][i5] = bArr[(i5 * 4) + i6] & 255;
            }
        }
        int i7 = i4;
        while (i7 < i2) {
            int i8 = i7 % i4;
            if (i8 == 0) {
                for (int i9 = 0; i9 < 4; i9++) {
                    iArrC[i9] = iArr[i9][i7 - 1];
                }
                int i10 = i3 + 1;
                iArrC = c(iArrC, i3);
                for (int i11 = 0; i11 < 4; i11++) {
                    int[] iArr2 = iArr[i11];
                    iArr2[i7] = iArrC[i11] ^ iArr2[i7 - i4];
                }
                i7++;
                i3 = i10;
            } else if (i8 == 4) {
                for (int i12 = 0; i12 < 4; i12++) {
                    int[] iArr3 = iArr[i12];
                    int i13 = iArr3[i7 - 1];
                    iArr3[i7] = d[i13 / 16][i13 % 16] ^ iArr3[i7 - i4];
                }
                i7++;
            } else {
                int i14 = i7 + 3;
                while (i7 < i14) {
                    for (int i15 = 0; i15 < 4; i15++) {
                        int[] iArr4 = iArr[i15];
                        iArr4[i7] = iArr4[i7 - 1] ^ iArr4[i7 - i4];
                    }
                    i7++;
                }
            }
        }
        return iArr;
    }

    private void a(int[][] iArr, int[][] iArr2) {
        int[] iArr3 = iArr[0];
        int i2 = iArr3[0];
        int[] iArr4 = iArr2[0];
        iArr3[0] = i2 ^ iArr4[0];
        iArr3[1] = iArr3[1] ^ iArr4[1];
        iArr3[2] = iArr3[2] ^ iArr4[2];
        iArr3[3] = iArr4[3] ^ iArr3[3];
        int[] iArr5 = iArr[1];
        int i3 = iArr5[0];
        int[] iArr6 = iArr2[1];
        iArr5[0] = i3 ^ iArr6[0];
        iArr5[1] = iArr5[1] ^ iArr6[1];
        iArr5[2] = iArr5[2] ^ iArr6[2];
        iArr5[3] = iArr5[3] ^ iArr6[3];
        int[] iArr7 = iArr[2];
        int i4 = iArr7[0];
        int[] iArr8 = iArr2[2];
        iArr7[0] = i4 ^ iArr8[0];
        iArr7[1] = iArr7[1] ^ iArr8[1];
        iArr7[2] = iArr7[2] ^ iArr8[2];
        iArr7[3] = iArr7[3] ^ iArr8[3];
        int[] iArr9 = iArr[3];
        int i5 = iArr9[0];
        int[] iArr10 = iArr2[3];
        iArr9[0] = i5 ^ iArr10[0];
        iArr9[1] = iArr9[1] ^ iArr10[1];
        iArr9[2] = iArr9[2] ^ iArr10[2];
        iArr9[3] = iArr10[3] ^ iArr9[3];
    }
}
