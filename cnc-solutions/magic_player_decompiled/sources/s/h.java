package s;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import cn.huidu.lcd.transmit.model.readback.GetLogOptions;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3410a = 0;

    static {
        x0.a aVarA = x0.a.a();
        File fileW = l.e.w(l.e.m(), GetLogOptions.PLAYER_LOG);
        synchronized (aVarA) {
            aVarA.f3953c = fileW;
            aVarA.f3954d = null;
        }
    }

    public static void a(String str) {
        x0.a aVarA = x0.a.a();
        HandlerThread handlerThread = aVarA.f3951a;
        if (handlerThread == null || !handlerThread.isAlive()) {
            synchronized (aVarA) {
                if (aVarA.f3951a == null) {
                    HandlerThread handlerThread2 = new HandlerThread("LogThread");
                    aVarA.f3951a = handlerThread2;
                    handlerThread2.start();
                    aVarA.f3952b = new Handler(aVarA.f3951a.getLooper(), aVarA);
                }
            }
        }
        Message messageObtainMessage = aVarA.f3952b.obtainMessage();
        messageObtainMessage.what = 1;
        messageObtainMessage.obj = str;
        messageObtainMessage.sendToTarget();
    }
}
