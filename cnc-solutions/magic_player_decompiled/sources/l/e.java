package l;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.util.Log;
import cn.huidu.lcd.render.model.NodeTags;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class e {
    public static String A(String str, String str2) {
        int iLastIndexOf;
        return (str2 + ((str == null || str.length() <= 0 || (iLastIndexOf = str.lastIndexOf(".")) == -1) ? "" : str.substring(iLastIndexOf))).toLowerCase();
    }

    public static void B(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static void C(Context context) {
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setClassName("cn.huidu.lcd.player", "cn.huidu.lcd.player.PlayerActivity");
            intent.addFlags(268435456);
            intent.addFlags(67108864);
            context.startActivity(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean D(String str, File file) {
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                return true;
            } finally {
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static String a(String str) {
        String str2;
        String strSubstring;
        try {
            String[] strArrSplit = str.split("\\-|:| ");
            String str3 = strArrSplit[1];
            Objects.requireNonNull(str3);
            switch (str3) {
                case "10":
                    str2 = "M10";
                    break;
                case "20":
                    str2 = "M20";
                    break;
                case "21":
                    str2 = "M21";
                    break;
                case "30":
                    str2 = "M30";
                    break;
                case "40":
                    str2 = "40S";
                    break;
                case "41":
                    str2 = "40M";
                    break;
                case "43":
                    str2 = "133T";
                    break;
                case "44":
                    str2 = "133M";
                    break;
                default:
                    str2 = "0";
                    break;
            }
            String strE = e(strArrSplit[2] + strArrSplit[3]);
            char cCharAt = strE.charAt(2);
            if (cCharAt == '0') {
                strSubstring = strE.substring(0, 2);
            } else {
                strSubstring = cCharAt + strE.substring(0, 2);
            }
            return str2 + "-" + strSubstring + "-" + e(strArrSplit[3] + strArrSplit[4] + strArrSplit[5]).substring(1);
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static void b(File file) {
        File[] fileArrListFiles;
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            d(file2);
        }
    }

    public static boolean c(File file) {
        try {
            return file.delete();
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean d(File file) {
        File[] fileArrListFiles;
        if (!file.exists()) {
            return true;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (!d(file2)) {
                    return false;
                }
            }
        }
        return c(file);
    }

    public static String e(String str) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            for (int i4 = 0; i4 < str.length(); i4++) {
                char cCharAt = str.charAt(i4);
                if (cCharAt >= '0' && cCharAt <= '9') {
                    sb.append(cCharAt);
                } else if (Character.isUpperCase(cCharAt)) {
                    sb.append(Character.toLowerCase(cCharAt));
                } else if (Character.isLowerCase(cCharAt)) {
                    sb.append(Character.toUpperCase(cCharAt));
                }
            }
        }
        return sb.toString();
    }

    public static File f() {
        return w(n(), "Cache");
    }

    public static File g() {
        return w0.c.f3777a.getFilesDir();
    }

    public static File h(int i4) {
        switch (i4) {
            case 1:
                return s(NodeTags.IMAGE);
            case 2:
                return s(NodeTags.VIDEO);
            case 3:
                return s("Music");
            case 4:
                return s("Other");
            case 5:
                return j();
            case 6:
            case 7:
                return w(f(), "Upgrade");
            case 8:
                return w(f(), "ScreenParams");
            default:
                return w(n(), "Download");
        }
    }

    public static String i(String str) {
        int iLastIndexOf;
        return (str != null && (iLastIndexOf = str.lastIndexOf(".")) >= 0 && iLastIndexOf < str.length() + (-1)) ? str.substring(iLastIndexOf + 1) : "";
    }

    public static File j() {
        return w(n(), "Font");
    }

    public static File k() {
        return w(f(), "ImageCache");
    }

    public static File l() {
        return new File(g(), "KeepPlayerAlive");
    }

    public static File m() {
        return w(n(), "Log");
    }

    public static File n() {
        return w(new File(s.m.c()), "MagicPlayer");
    }

    public static File o() {
        return w(n(), NodeTags.PLAY_TASK);
    }

    public static String p(Context context) {
        PackageInfo packageInfoA = w0.a.a(context, "cn.huidu.lcd.player");
        if (packageInfoA != null) {
            return packageInfoA.versionName;
        }
        return null;
    }

    public static File q() {
        return w(f(), "ReadBackCache");
    }

    public static File r() {
        return w(n(), "Resource");
    }

    public static File s(String str) {
        return w(r(), str);
    }

    public static File t() {
        return w(g(), "setting");
    }

    public static boolean u(String str) {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.length() > 0;
    }

    public static boolean v(Context context) {
        return w0.a.c(context, "cn.huidu.lcd.player");
    }

    public static File w(File file, String str) {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2;
    }

    public static int x(String str) {
        try {
            String[] strArrSplit = str.split("[.]");
            int i4 = Integer.parseInt(strArrSplit[0]);
            int i5 = Integer.parseInt(strArrSplit[1]);
            return (Integer.parseInt(strArrSplit[3]) & 255) | ((Integer.parseInt(strArrSplit[2]) & 255) << 8) | ((i5 & 255) << 16) | ((i4 & 255) << 24);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static byte[] y(File file, int i4) {
        if (file == null || !file.exists()) {
            Log.d("FileUtils", "readData: file not exists: " + file);
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                do {
                    int i5 = fileInputStream.read(bArr);
                    if (i5 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i5);
                } while (byteArrayOutputStream.size() < i4);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                fileInputStream.close();
                return byteArray;
            } finally {
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String z(File file) {
        if (!file.exists()) {
            Log.d("FileUtils", "readText: file not exists: " + file);
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                do {
                    int i4 = fileInputStream.read(bArr);
                    if (i4 == -1) {
                        String string = byteArrayOutputStream.toString();
                        fileInputStream.close();
                        return string;
                    }
                    byteArrayOutputStream.write(bArr, 0, i4);
                } while (byteArrayOutputStream.size() <= 8388608);
                throw new IOException("text length out of limit!");
            } finally {
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
