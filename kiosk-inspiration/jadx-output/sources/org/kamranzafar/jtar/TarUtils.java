package org.kamranzafar.jtar;

import java.io.File;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes5.dex */
public class TarUtils {
    public static long calculateTarSize(File file) {
        return tarSize(file) + RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
    }

    private static long tarSize(File file) {
        long jTarSize;
        if (file.isFile()) {
            return entrySize(file.length());
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return 512L;
        }
        long j = 0;
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                jTarSize = entrySize(file2.length());
            } else {
                jTarSize = tarSize(file2);
            }
            j += jTarSize;
        }
        return j;
    }

    private static long entrySize(long j) {
        long j2 = j + 512;
        long j3 = j2 % 512;
        return j3 > 0 ? j2 + (512 - j3) : j2;
    }

    public static String trim(String str, char c) {
        StringBuffer stringBuffer = new StringBuffer(str);
        for (int i = 0; i < stringBuffer.length() && stringBuffer.charAt(i) == c; i++) {
            stringBuffer.deleteCharAt(i);
        }
        for (int length = stringBuffer.length() - 1; length >= 0 && stringBuffer.charAt(length) == c; length--) {
            stringBuffer.deleteCharAt(length);
        }
        return stringBuffer.toString();
    }
}
