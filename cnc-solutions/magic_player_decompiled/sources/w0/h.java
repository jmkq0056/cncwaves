package w0;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b4 : bArr) {
            int i4 = b4 & 255;
            if (i4 < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i4));
        }
        return sb.toString();
    }

    public static String b(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b4 : bArr) {
            String hexString = Integer.toHexString(b4 & 255);
            if (hexString.length() == 1) {
                sb.append("0");
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static String c(String str) {
        try {
            return Base64.encodeToString(str.getBytes(), 2);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static int d(Calendar calendar) {
        int i4 = calendar.get(11);
        return (((i4 * 60) + calendar.get(12)) * 60) + calendar.get(13);
    }

    public static String e(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String f(File file) {
        if (!file.isFile() || !file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[1024];
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                while (true) {
                    int i4 = fileInputStream.read(bArr);
                    if (i4 == -1) {
                        fileInputStream.close();
                        return b(messageDigest.digest());
                    }
                    messageDigest.update(bArr, 0, i4);
                }
            } finally {
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String g(byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            try {
                return b(MessageDigest.getInstance("MD5").digest(bArr));
            } catch (NoSuchAlgorithmException e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }

    public static void h(Throwable th) {
        Log.w("System.err", th.getClass().getName() + ": " + th.getMessage());
    }

    public static void i(File file, File file2) throws IOException {
        if (!file2.exists()) {
            file2.mkdirs();
        }
        ZipFile zipFile = new ZipFile(file);
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            if (!zipEntryNextElement.isDirectory()) {
                File file3 = new File(file2, zipEntryNextElement.getName());
                File parentFile = file3.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                }
                String absolutePath = file3.getAbsolutePath();
                InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(absolutePath);
                    try {
                        byte[] bArr = new byte[1048576];
                        while (true) {
                            int i4 = inputStream.read(bArr);
                            if (i4 <= 0) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, i4);
                            }
                        }
                        fileOutputStream.getFD().sync();
                        fileOutputStream.close();
                        inputStream.close();
                    } finally {
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
        }
    }

    public static void j(File file, ZipOutputStream zipOutputStream, String str, FileFilter fileFilter) throws IOException {
        String string;
        if (TextUtils.isEmpty(str)) {
            string = file.getName();
        } else {
            StringBuilder sbA = android.support.v4.media.g.a(str, "/");
            sbA.append(file.getName());
            string = sbA.toString();
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                j(file2, zipOutputStream, string, fileFilter);
            }
            return;
        }
        if (fileFilter != null && !fileFilter.accept(file)) {
            return;
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 1048576);
        try {
            zipOutputStream.putNextEntry(new ZipEntry(string));
            byte[] bArr = new byte[1048576];
            while (true) {
                int i4 = bufferedInputStream.read(bArr);
                if (i4 == -1) {
                    zipOutputStream.flush();
                    zipOutputStream.closeEntry();
                    bufferedInputStream.close();
                    return;
                }
                zipOutputStream.write(bArr, 0, i4);
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
