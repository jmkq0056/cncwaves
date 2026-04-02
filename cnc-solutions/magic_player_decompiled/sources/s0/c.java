package s0;

import android.os.SystemClock;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.report.ProgressInfo;
import org.eclipse.jetty.http.HttpStatus;
import w0.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o0.c f3429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MessageModel f3430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ProgressInfo f3431d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3433f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f3434g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3435h;

    public c(String str, o0.c cVar, MessageModel messageModel) {
        this.f3428a = str;
        this.f3429b = cVar;
        this.f3430c = messageModel;
        ProgressInfo progressInfo = new ProgressInfo();
        this.f3431d = progressInfo;
        progressInfo.taskType = this.f3428a;
    }

    public void a() {
        this.f3432e = false;
        d dVarB = d.b();
        synchronized (dVarB) {
            if (((c) dVarB.f3437a) == this) {
                dVarB.f3437a = null;
            }
            dVarB.f3438b.remove(this);
        }
    }

    public void b() {
    }

    public abstract void c();

    public void d(String str, String str2) {
        e(HttpStatus.BAD_REQUEST_400, this.f3431d.progress);
        ResultData resultData = new ResultData();
        resultData.result = str;
        resultData.errorMsg = str2;
        this.f3429b.c(this.f3430c, resultData);
        a();
    }

    public void e(int i4, int i5) {
        ProgressInfo progressInfo = this.f3431d;
        int i6 = progressInfo.progress;
        int i7 = progressInfo.state;
        progressInfo.state = i4;
        progressInfo.progress = i5;
        if (i4 != i7 || i5 != i6) {
            a.b.a("setTaskState: ", i4, ", ", i5, "MessageTask");
        }
        if (this.f3433f) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - this.f3434g > 5000 || i4 != i7) {
                this.f3434g = jElapsedRealtime;
                MessageModel messageModel = new MessageModel();
                MessageModel messageModel2 = this.f3430c;
                messageModel.version = messageModel2.version;
                messageModel.uuid = messageModel2.uuid;
                messageModel.tag = messageModel2.tag;
                messageModel.module = "Task";
                messageModel.report = this.f3431d;
                this.f3429b.d(messageModel);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3432e = true;
        try {
            c();
        } catch (r0.b e4) {
            d(e4.f3358a, e4.getMessage());
        } catch (Throwable th) {
            String strE = h.e(th);
            s.h.a(strE);
            d("kInternalError", strE);
        }
    }
}
