package q3;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.Objects;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
public class a implements c {

    /* JADX INFO: renamed from: q3.a$a, reason: collision with other inner class name */
    public static class C0040a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ZipFile f3316a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ZipEntry f3317b;

        public C0040a(ZipFile zipFile, ZipEntry zipEntry) {
            this.f3316a = zipFile;
            this.f3317b = zipEntry;
        }
    }

    public final C0040a a(Context context, String[] strArr, String str, f fVar) {
        String[] strArr2;
        String[] strArr3;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        char c4 = 0;
        int i4 = 1;
        if (Build.VERSION.SDK_INT < 21 || (strArr3 = applicationInfo.splitSourceDirs) == null || strArr3.length == 0) {
            strArr2 = new String[]{applicationInfo.sourceDir};
        } else {
            strArr2 = new String[strArr3.length + 1];
            strArr2[0] = applicationInfo.sourceDir;
            System.arraycopy(strArr3, 0, strArr2, 1, strArr3.length);
        }
        int length = strArr2.length;
        int i5 = 0;
        ZipFile zipFile = null;
        while (i5 < length) {
            String str2 = strArr2[i5];
            int i6 = 0;
            while (true) {
                int i7 = i6 + 1;
                if (i6 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), i4);
                    break;
                } catch (IOException unused) {
                    i6 = i7;
                }
            }
            if (zipFile != null) {
                int i8 = 0;
                while (true) {
                    int i9 = i8 + 1;
                    if (i8 < 5) {
                        int length2 = strArr.length;
                        int i10 = 0;
                        while (i10 < length2) {
                            String str3 = strArr[i10];
                            StringBuilder sbA = android.support.v4.media.f.a("lib");
                            sbA.append(File.separatorChar);
                            sbA.append(str3);
                            sbA.append(File.separatorChar);
                            sbA.append(str);
                            String string = sbA.toString();
                            Object[] objArr = new Object[2];
                            objArr[c4] = string;
                            objArr[i4] = str2;
                            Objects.requireNonNull(fVar);
                            String.format(Locale.US, "Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(string);
                            if (entry != null) {
                                return new C0040a(zipFile, entry);
                            }
                            i10++;
                            c4 = 0;
                            i4 = 1;
                        }
                        i8 = i9;
                    } else {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            i5++;
            c4 = 0;
            i4 = 1;
        }
        return null;
    }
}
