package u0;

import android.util.Log;
import cn.huidu.lcd.core.entity.model.LocalFileInfo;
import cn.huidu.lcd.render.model.NodeTags;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.method.PlayTaskRequest;
import cn.huidu.lcd.transmit.model.playtask.FileInfo;
import cn.huidu.lcd.transmit.model.playtask.PlayTask;
import cn.huidu.lcd.transmit.model.report.ProgressInfo;
import j.v;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import l.l;
import s.m;
import v0.i;

/* JADX INFO: loaded from: classes.dex */
public class f extends s0.c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PlayTask f3559i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public v0.c f3560j;

    public f(o0.c cVar, MessageModel messageModel, PlayTaskRequest playTaskRequest) {
        super("UpdatePlayTask", cVar, messageModel);
        this.f3559i = playTaskRequest.playTask;
        this.f3433f = playTaskRequest.reportProgress;
    }

    @Override // s0.c
    public void b() {
        v0.c cVar = this.f3560j;
        if (cVar != null) {
            cVar.f3644d = true;
        }
    }

    @Override // s0.c
    public void c() throws r0.b {
        String string;
        Integer num = this.f3430c.version;
        if (num != null && num.intValue() == 1) {
            ProgressInfo progressInfo = new ProgressInfo();
            progressInfo.state = 100;
            this.f3429b.c(this.f3430c, new ResultData("kSuccess", progressInfo));
        } else {
            this.f3429b.c(this.f3430c, new ResultData("kTaskAccepted"));
        }
        e(100, 0);
        PlayTask playTask = this.f3559i;
        if (playTask.uuid == null) {
            playTask.uuid = UUID.randomUUID().toString();
        }
        List<FileInfo> list = this.f3559i.files;
        if (list == null || list.isEmpty()) {
            g(this.f3559i, new HashMap<>());
            return;
        }
        if (this.f3429b.e()) {
            this.f3429b.f(new e(this));
            return;
        }
        v0.c cVar = new v0.c(new p.b(this));
        this.f3560j = cVar;
        List<FileInfo> list2 = this.f3559i.files;
        HashMap map = new HashMap();
        if (list2 == null || list2.isEmpty()) {
            Log.d("FileDownloader", "download:  file info list is empty!");
        } else {
            cVar.f3642b = 0L;
            cVar.f3641a = cVar.a(list2);
            l lVarE = l.e();
            int i4 = 0;
            while (i4 < list2.size()) {
                FileInfo fileInfo = list2.get(i4);
                LocalFileInfo localFileInfoC = lVarE.c(fileInfo.md5);
                if (localFileInfoC != null && l.e.u(localFileInfoC.getPath())) {
                    StringBuilder sbA = android.support.v4.media.f.a("skip download: ");
                    sbA.append(localFileInfoC.getPath());
                    Log.d("FileDownloader", sbA.toString());
                    map.put(fileInfo.name, localFileInfoC.getPath());
                    cVar.f3642b += fileInfo.size;
                    list2.remove(fileInfo);
                    i4--;
                }
                i4++;
            }
            long jA = cVar.a(list2);
            File fileF = l.e().f();
            if (!fileF.exists()) {
                fileF.mkdirs();
            }
            long jA2 = m.a(fileF.getAbsolutePath());
            StringBuilder sbA2 = android.support.v4.media.f.a("checkStorageSpace resourceDir.getAbsolutePath() = ");
            sbA2.append(fileF.getAbsolutePath());
            sbA2.append(" requiredSize = ");
            sbA2.append(jA);
            sbA2.append(" availableSize = ");
            sbA2.append(jA2);
            Log.d("FileDownloader", sbA2.toString());
            if (jA > jA2) {
                throw new r0.b("kSpaceNotEnough", "space not enough, require: " + jA + ", available: " + jA2);
            }
            String str = p0.a.j().f2980k;
            for (int i5 = 0; i5 < list2.size(); i5++) {
                if (cVar.f3644d) {
                    throw new r0.b("kTaskCanceled", "task canceled");
                }
                FileInfo fileInfo2 = list2.get(i5);
                if (fileInfo2.path.startsWith("http")) {
                    string = fileInfo2.path;
                } else {
                    StringBuilder sbA3 = android.support.v4.media.f.a(str);
                    sbA3.append(fileInfo2.path);
                    string = sbA3.toString();
                }
                String str2 = string;
                l lVarE2 = l.e();
                String str3 = fileInfo2.fileType;
                Objects.requireNonNull(lVarE2);
                File file = new File("Font".equalsIgnoreCase(str3) ? l.e.j() : NodeTags.IMAGE.equalsIgnoreCase(str3) ? lVarE2.h(NodeTags.IMAGE) : NodeTags.VIDEO.equalsIgnoreCase(str3) ? lVarE2.h(NodeTags.VIDEO) : "Music".equalsIgnoreCase(str3) ? lVarE2.h("Music") : lVarE2.h("Other"), l.e.A(fileInfo2.name, fileInfo2.md5));
                cVar.d(str2, file, fileInfo2.md5, fileInfo2.size);
                String absolutePath = file.getAbsolutePath();
                map.put(fileInfo2.name, absolutePath);
                LocalFileInfo localFileInfo = new LocalFileInfo();
                localFileInfo.setPath(absolutePath);
                localFileInfo.setOriginPath(fileInfo2.path);
                localFileInfo.setName(fileInfo2.name);
                localFileInfo.setMd5(fileInfo2.md5);
                localFileInfo.setSize(fileInfo2.size);
                l.e().a(localFileInfo);
                long j4 = cVar.f3642b + fileInfo2.size;
                cVar.f3642b = j4;
                cVar.f((j4 / cVar.f3641a) * 100.0f);
            }
        }
        if (this.f3435h) {
            d("kTaskCanceled", "task canceled");
        } else {
            g(this.f3559i, map);
        }
    }

    public final void f() {
        e(200, 100);
        Integer num = this.f3430c.version;
        if (num != null && num.intValue() == 1) {
            ProgressInfo progressInfo = new ProgressInfo();
            progressInfo.state = 200;
            this.f3429b.c(this.f3430c, new ResultData("kSuccess", progressInfo));
        } else {
            this.f3429b.c(this.f3430c, new ResultData("kSuccess"));
        }
        a();
    }

    public final void g(PlayTask playTask, Map<String, String> map) {
        g3.c.b().f(new v(1));
        try {
            if (this.f3429b.e() && playTask.version == null) {
                playTask.version = String.valueOf(System.currentTimeMillis());
            }
            g3.c.b().f(new v(new i(map).n(playTask)));
            g3.c.b().f(new j.l(playTask.version));
            f();
        } catch (r0.b e4) {
            g3.c.b().f(new v(3));
            d(e4.f3358a, e4.getMessage());
        } catch (Exception e5) {
            e5.printStackTrace();
            g3.c.b().f(new v(3));
            d("kInternalError", w0.h.e(e5));
        }
    }
}
