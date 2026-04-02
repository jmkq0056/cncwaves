package x0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.media.f;
import android.text.format.DateFormat;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class a implements Handler.Callback {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile a f3950e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HandlerThread f3951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Handler f3952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public File f3953c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0056a f3954d;

    /* JADX INFO: renamed from: x0.a$a, reason: collision with other inner class name */
    public static class C0056a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3955a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f3956b = SystemClock.elapsedRealtime();

        public C0056a(String str) {
            this.f3955a = str;
        }
    }

    public static a a() {
        if (f3950e == null) {
            synchronized (a.class) {
                if (f3950e == null) {
                    f3950e = new a();
                }
            }
        }
        return f3950e;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0181 -> B:72:0x019b). Please report as a decompilation issue!!! */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) throws Throwable {
        String absolutePath;
        boolean z3;
        BufferedOutputStream bufferedOutputStream;
        if (message.what == 1) {
            C0056a c0056a = this.f3954d;
            BufferedOutputStream bufferedOutputStream2 = null;
            if (c0056a == null || SystemClock.elapsedRealtime() - c0056a.f3956b >= 18000000) {
                File file = this.f3953c;
                if (file == null) {
                    Log.d("LogService", "getLogFilePath: log dir is null!");
                } else if (file.exists() || file.mkdirs()) {
                    ArrayList arrayList = new ArrayList();
                    File[] fileArrListFiles = file.listFiles();
                    if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                        for (File file2 : fileArrListFiles) {
                            if (!file2.isDirectory()) {
                                int i4 = 0;
                                while (true) {
                                    if (i4 >= arrayList.size()) {
                                        z3 = false;
                                        break;
                                    }
                                    if (file2.lastModified() > ((File) arrayList.get(i4)).lastModified()) {
                                        arrayList.add(i4, file2);
                                        z3 = true;
                                        break;
                                    }
                                    i4++;
                                }
                                if (!z3) {
                                    arrayList.add(file2);
                                }
                            }
                        }
                    }
                    while (arrayList.size() > 9) {
                        File file3 = (File) arrayList.remove(arrayList.size() - 1);
                        boolean zDelete = file3.delete();
                        StringBuilder sbA = f.a("delete log file: ");
                        sbA.append(file3.getName());
                        sbA.append(" > ");
                        sbA.append(zDelete);
                        Log.d("LogService", sbA.toString());
                    }
                    StringBuilder sbA2 = f.a("/log_");
                    sbA2.append((Object) DateFormat.format("yyyyMMdd", new Date()));
                    sbA2.append(".txt");
                    absolutePath = new File(file, sbA2.toString()).getAbsolutePath();
                    Log.d("LogService", "getLogFilePath: create log path: " + absolutePath);
                    this.f3954d = new C0056a(absolutePath);
                } else {
                    StringBuilder sbA3 = f.a("getLogFilePath: create log dir fail! = ");
                    sbA3.append(this.f3953c.getAbsolutePath());
                    Log.e("LogService", sbA3.toString());
                }
                absolutePath = null;
            } else {
                absolutePath = c0056a.f3955a;
            }
            if (absolutePath != null) {
                String str = (String) message.obj;
                Log.d("LogService", String.valueOf(str));
                String str2 = DateFormat.format("yyyy-MM-dd HH:mm:ss", new Date()).toString() + ": " + str + "\n";
                File file4 = new File(absolutePath);
                try {
                    try {
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                if (file4.length() > 10485760) {
                    Log.w("LogService", "write log failed, log file is too large.");
                } else {
                    try {
                        bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file4, true));
                    } catch (Exception e5) {
                        e = e5;
                    }
                    try {
                        bufferedOutputStream.write(str2.getBytes());
                        bufferedOutputStream.close();
                    } catch (Exception e6) {
                        e = e6;
                        bufferedOutputStream2 = bufferedOutputStream;
                        e.printStackTrace();
                        if (bufferedOutputStream2 != null) {
                            bufferedOutputStream2.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedOutputStream2 = bufferedOutputStream;
                        Throwable th3 = th;
                        if (bufferedOutputStream2 == null) {
                            throw th3;
                        }
                        try {
                            bufferedOutputStream2.close();
                            throw th3;
                        } catch (IOException e7) {
                            e7.printStackTrace();
                            throw th3;
                        }
                    }
                }
            } else {
                Log.d("LogService", message.obj.toString());
            }
        }
        return true;
    }
}
