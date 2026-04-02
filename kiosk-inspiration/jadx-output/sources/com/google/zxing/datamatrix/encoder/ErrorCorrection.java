package com.google.zxing.datamatrix.encoder;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes3.dex */
public final class ErrorCorrection {
    private static final int MODULO_VALUE = 301;
    private static final int[] FACTOR_SETS = {5, 7, 10, 11, 12, 14, 18, 20, 24, 28, 36, 42, 48, 56, 62, 68};
    private static final int[][] FACTORS = {new int[]{228, 48, 15, WinError.ERROR_BUFFER_OVERFLOW, 62}, new int[]{23, 68, WinError.ERROR_DIR_NOT_ROOT, WinError.ERROR_IS_JOINED, 240, 92, WinError.ERROR_INVALID_EA_NAME}, new int[]{28, 24, 185, 166, WinError.ERROR_FILE_TOO_LARGE, 248, 116, 255, 110, 61}, new int[]{175, WinError.ERROR_JOIN_TO_JOIN, 205, 12, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, 168, 39, 245, 60, 97, WinError.ERROR_CALL_NOT_IMPLEMENTED}, new int[]{41, WinError.ERROR_INVALID_LIST_FORMAT, WinError.ERROR_NOT_LOCKED, 91, 61, 42, 142, 213, 97, 178, 100, 242}, new int[]{WinError.ERROR_SIGNAL_REFUSED, 97, 192, 252, 95, 9, WinError.ERROR_DISCARDED, WinError.ERROR_BAD_DRIVER_LEVEL, WinError.ERROR_JOIN_TO_JOIN, 45, 18, WinError.ERROR_INVALID_FLAG_NUMBER, 83, 185}, new int[]{83, WinError.ERROR_INVALID_MINALLOCSIZE, 100, 39, WinError.ERROR_INVALID_STARTING_CODESEG, 75, 66, 61, 241, 213, 109, 129, 94, WinError.ERROR_INVALID_EA_NAME, WinError.ERROR_VIRUS_INFECTED, 48, 90, WinError.ERROR_INVALID_STARTING_CODESEG}, new int[]{15, WinError.ERROR_INVALID_MINALLOCSIZE, 244, 9, WinError.ERROR_PIPE_NOT_CONNECTED, 71, 168, 2, WinError.ERROR_INVALID_STARTING_CODESEG, 160, WinError.ERROR_INVALID_LIST_FORMAT, WinError.ERROR_DIR_NOT_EMPTY, 253, 79, 108, 82, 27, WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, WinError.ERROR_INVALID_FLAG_NUMBER, 172}, new int[]{52, WinError.ERROR_INVALID_MODULETYPE, 88, 205, 109, 39, 176, 21, 155, WinError.ERROR_IOPL_NOT_ENABLED, 251, WinError.ERROR_FILE_TOO_LARGE, 155, 21, 5, 172, WinError.ERROR_INVALID_EA_NAME, WinError.ERROR_INVALID_LEVEL, 12, 181, 184, 96, 50, WinError.ERROR_BAD_EXE_FORMAT}, new int[]{211, WinError.ERROR_PIPE_BUSY, 43, 97, 71, 96, 103, WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, 37, WinError.ERROR_INVALID_EVENT_COUNT, WinError.ERROR_BUSY, 53, 75, 34, 249, WinError.ERROR_SEM_TIMEOUT, 17, WinError.ERROR_JOIN_TO_JOIN, 110, 213, WinError.ERROR_SUBST_TO_JOIN, 136, WinError.ERROR_CALL_NOT_IMPLEMENTED, WinError.ERROR_INVALID_EVENT_COUNT, WinError.ERROR_PIPE_NOT_CONNECTED, 168, 93, 255}, new int[]{245, 127, 242, WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, 130, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 162, 181, 102, WinError.ERROR_CALL_NOT_IMPLEMENTED, 84, 179, WinError.ERROR_FILE_CHECKED_OUT, 251, 80, WinError.ERROR_INVALID_ORDINAL, WinError.ERROR_PIPE_LOCAL, 18, 2, 4, 68, 33, 101, WinError.ERROR_NOT_SUBSTED, 95, WinError.ERROR_BAD_DRIVER_LEVEL, 115, 44, 175, 184, 59, 25, WinError.ERROR_VIRUS_INFECTED, 98, 81, 112}, new int[]{77, WinError.ERROR_BAD_EXE_FORMAT, WinError.ERROR_NOT_SUBSTED, 31, 19, 38, 22, WinError.ERROR_INVALID_LIST_FORMAT, 247, WinError.ERROR_SEM_OWNER_DIED, 122, 2, 245, WinError.ERROR_IS_JOIN_TARGET, 242, 8, 175, 95, 100, 9, WinError.ERROR_LOCK_FAILED, WinError.ERROR_SEM_OWNER_DIED, WinError.ERROR_TOO_MANY_MODULES, WinError.ERROR_BUFFER_OVERFLOW, 57, WinError.ERROR_SEM_TIMEOUT, 21, 1, 253, 57, 54, 101, 248, 202, 69, 50, WinError.ERROR_SYSTEM_TRACE, 177, WinError.ERROR_VIRUS_DELETED, 5, 9, 5}, new int[]{245, WinError.ERROR_SEEK_ON_DEVICE, 172, WinError.ERROR_FILE_TOO_LARGE, 96, 32, WinError.ERROR_INVALID_CATEGORY, 22, 238, WinError.ERROR_IS_JOIN_TARGET, 238, WinError.ERROR_PIPE_BUSY, 205, WinError.ERROR_INVALID_STARTING_CODESEG, 237, 87, 191, WinError.ERROR_SEM_USER_LIMIT, 16, WinError.ERROR_IS_JOIN_PATH, WinError.ERROR_INVALID_VERIFY_SWITCH, 23, 37, 90, WinError.ERROR_BUSY, 205, 131, 88, WinError.ERROR_CALL_NOT_IMPLEMENTED, 100, 66, WinError.ERROR_JOIN_TO_JOIN, WinError.ERROR_INVALID_FLAG_NUMBER, 240, 82, 44, 176, 87, WinError.ERROR_SEM_NOT_FOUND, WinError.ERROR_IS_JOIN_PATH, 160, 175, 69, 213, 92, 253, WinError.ERROR_VIRUS_INFECTED, 19}, new int[]{175, 9, WinError.ERROR_FILE_TOO_LARGE, 238, 12, 17, WinError.ERROR_FILE_CHECKED_OUT, WinError.ERROR_META_EXPANSION_TOO_LONG, 100, 29, 175, WinError.ERROR_BUSY, WinError.ERROR_BAD_PIPE, 192, WinError.ERROR_NESTING_NOT_ALLOWED, 235, WinError.ERROR_SYSTEM_TRACE, WinError.ERROR_BAD_THREADID_ADDR, 36, WinError.ERROR_FILE_TOO_LARGE, 38, 200, WinError.ERROR_SEEK_ON_DEVICE, 54, 228, WinError.ERROR_IS_SUBST_PATH, WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, WinError.ERROR_MORE_DATA, WinError.ERROR_INVALID_CATEGORY, 203, 29, WinError.ERROR_NO_DATA, WinError.ERROR_DIR_NOT_ROOT, 238, 22, WinError.ERROR_SYSTEM_TRACE, 201, WinError.ERROR_INVALID_CATEGORY, 62, 207, 164, 13, WinError.ERROR_NOT_SUBSTED, 245, 127, 67, 247, 28, 155, 43, 203, WinError.ERROR_DISK_CHANGE, WinError.ERROR_PIPE_NOT_CONNECTED, 53, WinError.ERROR_SAME_DRIVE, 46}, new int[]{242, 93, 169, 50, WinError.ERROR_DIR_NOT_ROOT, WinError.ERROR_THREAD_1_INACTIVE, 39, WinError.ERROR_INVALID_VERIFY_SWITCH, 202, WinError.ERROR_INVALID_STARTING_CODESEG, 201, WinError.ERROR_INVALID_STACKSEG, WinError.ERROR_SAME_DRIVE, 108, WinError.ERROR_DYNLINK_FROM_INVALID_RING, 37, 185, 112, WinError.ERROR_IS_JOINED, WinError.ERROR_BAD_PIPE, 245, 63, WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_INVALID_MODULETYPE, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, WinError.ERROR_SEM_USER_LIMIT, 185, WinError.ERROR_CHECKOUT_REQUIRED, 175, 64, WinError.ERROR_INVALID_TARGET_HANDLE, 71, 161, 44, WinError.ERROR_IS_JOIN_PATH, 6, 27, WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, 51, 63, 87, 10, 40, 130, WinError.ERROR_INVALID_STARTING_CODESEG, 17, WinUser.VK_RCONTROL, 31, 176, WinError.ERROR_BUSY, 4, WinError.ERROR_DISK_CHANGE, WinError.ERROR_NO_DATA, 7, 94, 166, WinError.ERROR_FORMS_AUTH_REQUIRED, WinError.ERROR_INVALID_LEVEL, 86, 47, 11, HttpStatus.SC_NO_CONTENT}, new int[]{WinError.ERROR_FILE_CHECKED_OUT, 228, WinError.ERROR_CANCEL_VIOLATION, 89, 251, WinError.ERROR_IS_SUBST_TARGET, WinError.ERROR_BAD_THREADID_ADDR, 56, 89, 33, WinError.ERROR_IS_JOIN_PATH, 244, WinError.ERROR_LABEL_TOO_LONG, 36, 73, 127, 213, 136, 248, WinError.ERROR_INVALID_SEGMENT_NUMBER, WinError.ERROR_MORE_DATA, WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_NOT_LOCKED, 177, 68, 122, 93, 213, 15, 160, 227, 236, 66, WinError.ERROR_SUBST_TO_SUBST, WinError.ERROR_INVALID_LIST_FORMAT, 185, 202, WinError.ERROR_LOCK_FAILED, 179, 25, WinError.ERROR_FILE_CHECKED_OUT, WinError.ERROR_NO_DATA, 96, WinError.ERROR_THREAD_1_INACTIVE, WinError.ERROR_PIPE_BUSY, 136, WinError.ERROR_FILE_TOO_LARGE, 239, 181, 241, 59, 52, 172, 25, 49, WinError.ERROR_NO_DATA, 211, WinError.ERROR_INVALID_STACKSEG, 64, 54, 108, WinError.ERROR_INVALID_LIST_FORMAT, WinError.ERROR_SEEK_ON_DEVICE, 63, 96, 103, 82, WinError.ERROR_INVALID_FLAG_NUMBER}};
    private static final int[] LOG = new int[256];
    private static final int[] ALOG = new int[255];

    static {
        int i = 1;
        for (int i2 = 0; i2 < 255; i2++) {
            ALOG[i2] = i;
            LOG[i] = i2;
            i <<= 1;
            if (i >= 256) {
                i ^= 301;
            }
        }
    }

    private ErrorCorrection() {
    }

    public static String encodeECC200(String str, SymbolInfo symbolInfo) {
        if (str.length() != symbolInfo.getDataCapacity()) {
            throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
        }
        StringBuilder sb = new StringBuilder(symbolInfo.getDataCapacity() + symbolInfo.getErrorCodewords());
        sb.append(str);
        int interleavedBlockCount = symbolInfo.getInterleavedBlockCount();
        if (interleavedBlockCount == 1) {
            sb.append(createECCBlock(str, symbolInfo.getErrorCodewords()));
        } else {
            sb.setLength(sb.capacity());
            int[] iArr = new int[interleavedBlockCount];
            int[] iArr2 = new int[interleavedBlockCount];
            int i = 0;
            while (i < interleavedBlockCount) {
                int i2 = i + 1;
                iArr[i] = symbolInfo.getDataLengthForInterleavedBlock(i2);
                iArr2[i] = symbolInfo.getErrorLengthForInterleavedBlock(i2);
                i = i2;
            }
            for (int i3 = 0; i3 < interleavedBlockCount; i3++) {
                StringBuilder sb2 = new StringBuilder(iArr[i3]);
                for (int i4 = i3; i4 < symbolInfo.getDataCapacity(); i4 += interleavedBlockCount) {
                    sb2.append(str.charAt(i4));
                }
                String strCreateECCBlock = createECCBlock(sb2.toString(), iArr2[i3]);
                int i5 = 0;
                int i6 = i3;
                while (i6 < iArr2[i3] * interleavedBlockCount) {
                    sb.setCharAt(symbolInfo.getDataCapacity() + i6, strCreateECCBlock.charAt(i5));
                    i6 += interleavedBlockCount;
                    i5++;
                }
            }
        }
        return sb.toString();
    }

    private static String createECCBlock(CharSequence charSequence, int i) {
        return createECCBlock(charSequence, 0, charSequence.length(), i);
    }

    private static String createECCBlock(CharSequence charSequence, int i, int i2, int i3) {
        int i4;
        int i5;
        int i6 = 0;
        while (true) {
            int[] iArr = FACTOR_SETS;
            if (i6 >= iArr.length) {
                i6 = -1;
                break;
            }
            if (iArr[i6] == i3) {
                break;
            }
            i6++;
        }
        if (i6 < 0) {
            throw new IllegalArgumentException("Illegal number of error correction codewords specified: ".concat(String.valueOf(i3)));
        }
        int[] iArr2 = FACTORS[i6];
        char[] cArr = new char[i3];
        for (int i7 = 0; i7 < i3; i7++) {
            cArr[i7] = 0;
        }
        for (int i8 = i; i8 < i + i2; i8++) {
            int i9 = i3 - 1;
            int iCharAt = cArr[i9] ^ charSequence.charAt(i8);
            while (i9 > 0) {
                if (iCharAt != 0 && (i5 = iArr2[i9]) != 0) {
                    char c = cArr[i9 - 1];
                    int[] iArr3 = ALOG;
                    int[] iArr4 = LOG;
                    cArr[i9] = (char) (iArr3[(iArr4[iCharAt] + iArr4[i5]) % 255] ^ c);
                } else {
                    cArr[i9] = cArr[i9 - 1];
                }
                i9--;
            }
            if (iCharAt != 0 && (i4 = iArr2[0]) != 0) {
                int[] iArr5 = ALOG;
                int[] iArr6 = LOG;
                cArr[0] = (char) iArr5[(iArr6[iCharAt] + iArr6[i4]) % 255];
            } else {
                cArr[0] = 0;
            }
        }
        char[] cArr2 = new char[i3];
        for (int i10 = 0; i10 < i3; i10++) {
            cArr2[i10] = cArr[(i3 - i10) - 1];
        }
        return String.valueOf(cArr2);
    }
}
