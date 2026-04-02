package u0;

import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.method.ScreenParamRequest;
import cn.huidu.lcd.transmit.model.playtask.FileInfo;
import cn.huidu.lcd.transmit.model.report.ProgressInfo;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class h extends s0.c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FileInfo f3562i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f3563j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public v0.c f3564k;

    public h(o0.c cVar, MessageModel messageModel, ScreenParamRequest screenParamRequest) {
        super("UpdateScreenParam", cVar, messageModel);
        this.f3562i = screenParamRequest.paramFile;
        this.f3563j = screenParamRequest.paramData;
        this.f3433f = screenParamRequest.reportProgress;
    }

    @Override // s0.c
    public void b() {
        v0.c cVar = this.f3564k;
        if (cVar != null) {
            cVar.f3644d = true;
        }
    }

    @Override // s0.c
    public void c() throws r0.b {
        byte[] bArrDecode;
        Integer num = this.f3430c.version;
        boolean z3 = true;
        if (num != null && num.intValue() == 1) {
            ProgressInfo progressInfo = new ProgressInfo();
            progressInfo.state = 100;
            this.f3429b.c(this.f3430c, new ResultData("kSuccess", progressInfo));
        } else {
            this.f3429b.c(this.f3430c, new ResultData("kTaskAccepted"));
        }
        e(100, 0);
        String str = this.f3563j;
        if (str == null) {
            if (this.f3429b.e()) {
                this.f3429b.f(new g(this));
                return;
            }
            String strG = g();
            File file = new File(strG);
            if (file.exists()) {
                l.e.c(file);
            }
            v0.c cVar = new v0.c(new p.b(this));
            this.f3564k = cVar;
            FileInfo fileInfo = this.f3562i;
            cVar.c(fileInfo.path, strG, fileInfo.md5, fileInfo.size);
            if (this.f3435h) {
                d("kTaskCanceled", "task canceled");
                return;
            } else {
                f(strG);
                return;
            }
        }
        try {
            bArrDecode = Base64.decode(str, 0);
        } catch (Exception e4) {
            e4.printStackTrace();
            bArrDecode = null;
        }
        if (bArrDecode == null || bArrDecode.length == 0) {
            d("kInvalidParams", "Illegal base64 data");
            return;
        }
        String strG2 = g();
        File file2 = new File(strG2);
        if (bArrDecode.length == 0) {
            z3 = false;
        } else {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    fileOutputStream.write(bArrDecode);
                    fileOutputStream.getFD().sync();
                    fileOutputStream.close();
                } finally {
                }
            } catch (Exception e5) {
                e5.printStackTrace();
                z3 = false;
            }
        }
        if (z3) {
            f(strG2);
        } else {
            d("kWriteFileFailed", "save screen param failed");
        }
    }

    public final void f(String str) {
        e(200, 100);
        Integer num = this.f3430c.version;
        if (num != null && num.intValue() == 1) {
            ProgressInfo progressInfo = new ProgressInfo();
            progressInfo.state = 102;
            this.f3429b.c(this.f3430c, new ResultData("kSuccess", progressInfo));
        } else {
            this.f3429b.c(this.f3430c, new ResultData("kSuccess"));
        }
        a();
        SystemClock.sleep(1000L);
        String str2 = "write_lcd_param " + str;
        Log.d("UpdateScreenParamsTask", str2 + "\n" + w0.d.c(str2));
    }

    public final String g() {
        return l.e.w(l.e.f(), "ScreenParams") + "/ScreenParam";
    }
}
