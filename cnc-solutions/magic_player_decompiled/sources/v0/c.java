package v0;

import android.os.SystemClock;
import android.util.Log;
import cn.huidu.lcd.transmit.model.playtask.FileInfo;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f3641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f3643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3644d;

    public interface a {
    }

    public c(a aVar) {
        this.f3643c = aVar;
    }

    public final long a(List<FileInfo> list) {
        Iterator<FileInfo> it = list.iterator();
        long j4 = 0;
        while (it.hasNext()) {
            j4 += it.next().size;
        }
        return j4;
    }

    public final void b(String str, File file, String str2, long j4) throws r0.b {
        long length = file.length();
        if (j4 > 0 && length != j4) {
            l.e.c(file);
            throw new r0.b("kFileCheckError", "download failed: " + str + ", file size check error: " + j4 + " -> " + length);
        }
        String strF = w0.h.f(file);
        if (str2 == null || str2.equals(strF)) {
            return;
        }
        l.e.c(file);
        throw new r0.b("kFileCheckError", "download failed: " + str + ", md5 check error: " + str2 + " -> " + strF);
    }

    public void c(String str, String str2, String str3, long j4) throws r0.b {
        this.f3642b = 0L;
        this.f3641a = j4 > 0 ? j4 : 1L;
        if (!str.startsWith("http")) {
            str = android.support.v4.media.b.a(new StringBuilder(), p0.a.j().f2980k, str);
        }
        d(str, new File(str2), str3, j4);
    }

    public final void d(String str, File file, String str2, long j4) throws r0.b {
        long length = file.exists() ? file.length() : 0L;
        try {
            if (length != j4) {
                if (length > j4) {
                    l.e.c(file);
                    Log.d("FileDownloader", "delete file which exists size 0 greater than server provided size " + j4);
                }
                e(str, file, 0);
                b(str, file, str2, j4);
                return;
            }
            try {
                b(str, file, str2, j4);
                Log.d("FileDownloader", "file is actually downloaded: " + file);
                return;
            } catch (r0.b unused) {
            }
            b(str, file, str2, j4);
            return;
        } catch (r0.b e4) {
            if (length <= 0) {
                throw e4;
            }
            s.h.a("file check error, download again: " + str);
            e(str, file, 0);
            b(str, file, str2, j4);
            return;
        }
        length = 0;
        e(str, file, 0);
    }

    public final void e(String str, File file, int i4) throws r0.b {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        try {
            v0.a.a(str, file, file.exists() ? file.length() : 0L, new b(this, atomicBoolean));
        } catch (Exception e4) {
            e4.printStackTrace();
            if (!atomicBoolean.get() && i4 >= 10) {
                throw new r0.b("kDownloadFailed", "download failed: " + str + ", retry count: " + i4 + ", stack trace: \n" + w0.h.e(e4));
            }
            int i5 = i4 + 1;
            StringBuilder sbA = android.support.v4.media.f.a("download failed with error: ");
            sbA.append(e4.getClass().getSimpleName());
            sbA.append("|");
            sbA.append(e4.getMessage());
            sbA.append(", retry times: ");
            sbA.append(i5);
            s.h.a(sbA.toString());
            SystemClock.sleep(15000L);
            if (!this.f3644d) {
                e(str, file, i5);
            }
        }
        if (this.f3644d) {
            throw new r0.b("kTaskCanceled", "task canceled");
        }
    }

    public final void f(float f4) {
        a aVar = this.f3643c;
        if (aVar != null) {
            int iRound = Math.round(f4);
            p.b bVar = (p.b) aVar;
            switch (bVar.f2922a) {
                case 15:
                    ((u0.b) bVar.f2923b).e(101, iRound);
                    break;
                case 16:
                    ((u0.f) bVar.f2923b).e(101, iRound);
                    break;
                default:
                    ((u0.h) bVar.f2923b).e(101, iRound);
                    break;
            }
        }
    }
}
