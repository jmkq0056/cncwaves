package q;

import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import cn.huidu.lcd.core.util.VendorStorageIO;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Locale;
import java.util.regex.Pattern;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class e {
    public static String a(int i4) {
        String str = SystemProperties.get("ro.product.hd_model");
        if (i4 == 38) {
            return "M10";
        }
        if (i4 == 39) {
            return "3288S".equals(str) ? "3288S" : "M21".equals(str) ? "M21" : "M20";
        }
        switch (i4) {
            case 101:
                return "M30";
            case 102:
                return "40M".equals(str) ? "40M" : "40S";
            case 103:
                return "972S";
            case 104:
                return "3566S";
            case 105:
                return "3568S";
            case 106:
                return "3399F";
            case 107:
                return "133T";
            case 108:
                return "133M";
            default:
                return "HD";
        }
    }

    public static boolean b(String str, int i4) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (i4 == 38) {
            return str.startsWith("M10");
        }
        if (i4 == 39) {
            return str.startsWith("M20") || str.startsWith("M21") || str.startsWith("3288S");
        }
        switch (i4) {
            case 101:
                return str.startsWith("M30");
            case 102:
                return str.startsWith("40S") || str.startsWith("40M");
            case 103:
                return str.startsWith("972S");
            case 104:
                return str.startsWith("3566S");
            case 105:
                return str.startsWith("3568S");
            case 106:
                return str.startsWith("3399F");
            case 107:
                return str.startsWith("133T");
            case 108:
                return str.startsWith("133M");
            default:
                return true;
        }
    }

    public static String c(int i4) {
        String strA = a(i4);
        int iRandom = (int) (Math.random() * 10000.0d);
        StringBuilder sbA = android.support.v4.media.g.a(strA, "-FF-A");
        sbA.append(String.format(Locale.ENGLISH, "%04d", Integer.valueOf(iRandom)));
        return sbA.toString();
    }

    public static String d() throws Throwable {
        byte[] bArr;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        int i4 = 16;
        if (cn.huidu.lcd.core.a.f341g.equals("1")) {
            byte[] bArr2 = new byte[16];
            if (!VendorStorageIO.read(5, bArr2)) {
                return null;
            }
            int i5 = 0;
            while (true) {
                if (i5 >= 16) {
                    break;
                }
                if (bArr2[i5] == 0) {
                    i4 = i5;
                    break;
                }
                i5++;
            }
            return new String(bArr2, 0, i4);
        }
        try {
            try {
                bArr = new byte[16];
                fileInputStream = new FileInputStream(cn.huidu.lcd.core.a.f339e);
            } catch (Exception e4) {
                e = e4;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileInputStream.skip(256L);
            fileInputStream.read(bArr, 0, 16);
            int i6 = 0;
            while (true) {
                if (i6 >= 16) {
                    i6 = -1;
                    break;
                }
                if (bArr[i6] == 0) {
                    break;
                }
                i6++;
            }
            if (i6 != -1) {
                i4 = i6;
            }
            String strTrim = i4 > 0 ? new String(bArr, 0, i4).trim() : "";
            Log.d("DeviceIdUtils", "readDeviceId: " + strTrim);
            try {
                fileInputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            return strTrim;
        } catch (Exception e6) {
            e = e6;
            fileInputStream2 = fileInputStream;
            e.printStackTrace();
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            return "";
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e8) {
                    e8.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static String e() {
        w0.d.c("echo 1 > /sys/class/unifykeys/lock");
        w0.d.c("echo deviceid > /sys/class/unifykeys/name");
        d.a aVarC = w0.d.c("cat /sys/class/unifykeys/read");
        w0.d.c("echo 0 > /sys/class/unifykeys/lock");
        return aVarC.f3778a == 0 ? Pattern.compile("\\s*|\t|\r|\n").matcher(aVarC.f3779b).replaceAll("") : "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0072 -> B:40:0x0075). Please report as a decompilation issue!!! */
    public static void f(String str) throws Throwable {
        ?? randomAccessFile;
        boolean zWrite;
        android.support.v4.media.c.a("writeDeviceId: ", str, "DeviceIdUtils");
        if ("1".equals(cn.huidu.lcd.core.a.f341g)) {
            int i4 = VendorStorageIO.f380a;
            if (str == null) {
                zWrite = false;
            } else {
                byte[] bytes = str.getBytes();
                byte[] bArr = new byte[16];
                System.arraycopy(bytes, 0, bArr, 0, bytes.length);
                zWrite = VendorStorageIO.write(5, bArr);
            }
            androidx.media.a.a(android.support.v4.media.f.a("writeDeviceId: write to vendor "), zWrite ? "success" : "failed", "DeviceIdUtils");
        }
        ?? r12 = 0;
        ?? r13 = 0;
        r12 = 0;
        try {
            try {
                try {
                    randomAccessFile = new RandomAccessFile(cn.huidu.lcd.core.a.f339e, "rw");
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = r12;
                }
            } catch (Exception e4) {
                e = e4;
            }
            try {
                randomAccessFile.seek(256L);
                byte[] bytes2 = str.getBytes();
                byte[] bArr2 = new byte[16];
                int length = bytes2.length;
                System.arraycopy(bytes2, 0, bArr2, 0, length);
                randomAccessFile.write(bArr2);
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
                r12 = length;
            } catch (Exception e5) {
                e = e5;
                r13 = randomAccessFile;
                e.printStackTrace();
                r12 = r13;
                if (r13 != 0) {
                    r13.close();
                    r12 = r13;
                }
            } catch (Throwable th2) {
                th = th2;
                if (randomAccessFile != 0) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e7) {
            e7.printStackTrace();
            r12 = r12;
        }
    }

    public static boolean g(String str) {
        String strA = android.support.v4.media.h.a("echo ", str, " > /sys/class/unifykeys/write");
        w0.d.c("echo 1 > /sys/class/unifykeys/lock");
        w0.d.c("echo deviceid > /sys/class/unifykeys/name");
        d.a aVarC = w0.d.c(strA);
        w0.d.c("echo 0 > /sys/class/unifykeys/lock");
        return aVarC.f3778a == 0;
    }
}
