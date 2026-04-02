package l;

import android.util.Log;
import cn.huidu.lcd.core.entity.model.LocalFileInfo;
import j.s;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile l f2356d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<LocalFileInfo> f2357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public File f2359c;

    public l() {
        ArrayList arrayList = new ArrayList();
        this.f2357a = arrayList;
        h.a.q0(this);
        List<LocalFileInfo> listB = s.d.b(new File(e.r(), "FileList.xml"));
        synchronized (arrayList) {
            arrayList.clear();
            if (listB != null) {
                arrayList.addAll(listB);
            }
        }
    }

    public static l e() {
        if (f2356d == null) {
            synchronized (l.class) {
                if (f2356d == null) {
                    f2356d = new l();
                }
            }
        }
        return f2356d;
    }

    public void a(LocalFileInfo localFileInfo) {
        LocalFileInfo localFileInfo2;
        if (localFileInfo.getPath() == null) {
            Log.d("ResourceManager", "addResource: illegal file info!");
            return;
        }
        synchronized (this.f2357a) {
            String path = localFileInfo.getPath();
            int i4 = 0;
            while (true) {
                localFileInfo2 = null;
                if (i4 >= this.f2357a.size()) {
                    break;
                }
                localFileInfo2 = this.f2357a.get(i4);
                if (path.equals(localFileInfo2.getPath())) {
                    break;
                } else {
                    i4++;
                }
            }
            if (localFileInfo2 != null) {
                Log.d("ResourceManager", "addResource: update " + path);
                localFileInfo2.setOriginPath(localFileInfo.getOriginPath());
                localFileInfo2.setName(localFileInfo.getName());
                localFileInfo2.setMd5(localFileInfo.getMd5());
                localFileInfo2.setSize(localFileInfo.getSize());
            } else {
                Log.d("ResourceManager", "addResource: add " + path);
                this.f2357a.add(localFileInfo);
            }
        }
        k();
    }

    public final void b(File file) {
        File[] fileArrListFiles;
        File[] fileArrListFiles2 = file.listFiles();
        if (fileArrListFiles2 == null || fileArrListFiles2.length == 0) {
            return;
        }
        for (File file2 : fileArrListFiles2) {
            if (file2.isDirectory() && (fileArrListFiles = file2.listFiles()) != null && fileArrListFiles.length != 0) {
                for (File file3 : fileArrListFiles) {
                    if (d(file3.getAbsolutePath()) == null) {
                        s.h.a("delete resource: " + file3);
                        e.d(file3);
                    }
                }
            }
        }
    }

    public LocalFileInfo c(String str) {
        if (str == null) {
            return null;
        }
        synchronized (this.f2357a) {
            for (LocalFileInfo localFileInfo : this.f2357a) {
                if (str.equals(localFileInfo.getMd5())) {
                    return localFileInfo;
                }
            }
            return null;
        }
    }

    public LocalFileInfo d(String str) {
        if (str == null) {
            return null;
        }
        synchronized (this.f2357a) {
            for (LocalFileInfo localFileInfo : this.f2357a) {
                if (str.equals(localFileInfo.getPath())) {
                    return localFileInfo;
                }
            }
            return null;
        }
    }

    public File f() {
        StringBuilder sbA = android.support.v4.media.f.a("getResourceDir - mResDir= ");
        sbA.append(this.f2359c);
        Log.e("zhuw", sbA.toString());
        File file = this.f2359c;
        return file != null ? file : e.r();
    }

    public final File g(int i4) {
        String strH;
        int i5 = this.f2358b;
        if (i5 == 1) {
            strH = s.m.b(w0.c.f3777a);
        } else {
            if (i5 != 2) {
                return e.r();
            }
            strH = s.m.h(w0.c.f3777a);
            if (strH == null) {
                return e.r();
            }
        }
        if (strH == null) {
            a.a.a("getResourceDir: storage not found: ", i4, "ResourceManager");
            return null;
        }
        File file = new File(strH, "Resource");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        Log.d("ResourceManager", "getResourceDir: create resource dir failed!");
        return null;
    }

    public final File h(String str) {
        File file = new File(f(), str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @org.greenrobot.eventbus.a(threadMode = ThreadMode.MAIN)
    public void handleMessage(s sVar) {
        int i4 = this.f2358b;
        if (i4 != 0) {
            this.f2359c = g(i4);
            StringBuilder sbA = android.support.v4.media.f.a("storage changed, reset resource dir: ");
            sbA.append(this.f2359c);
            Log.d("ResourceManager", sbA.toString());
        }
    }

    public void i(int i4) {
        this.f2358b = i4;
        this.f2359c = g(i4);
        StringBuilder sbA = android.support.v4.media.f.a("setStorageLocation: mResDir = ");
        sbA.append(this.f2359c);
        Log.d("ResourceManager", sbA.toString());
    }

    public void j(List<LocalFileInfo> list) {
        synchronized (this.f2357a) {
            this.f2357a.clear();
            this.f2357a.addAll(list);
        }
        k();
        File fileF = f();
        b(fileF);
        File fileR = e.r();
        if (fileR.getAbsolutePath().equals(fileF.getAbsolutePath())) {
            return;
        }
        b(fileR);
    }

    public final void k() {
        synchronized (this.f2357a) {
            s.d.c(this.f2357a, e.r());
        }
    }
}
