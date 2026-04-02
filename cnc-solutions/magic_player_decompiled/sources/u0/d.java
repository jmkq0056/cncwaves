package u0;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Base64;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.method.ReadBackRequest;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class d extends s0.c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ReadBackRequest f3557i;

    public d(o0.c cVar, MessageModel messageModel, ReadBackRequest readBackRequest) {
        super("ReadBack", cVar, messageModel);
        this.f3557i = readBackRequest;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0363  */
    @Override // s0.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c() throws r0.b {
        /*
            Method dump skipped, instruction units count: 1286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u0.d.c():void");
    }

    public final void f(Object obj) {
        HashMap map = new HashMap();
        map.put(this.f3557i.target, obj);
        this.f3429b.c(this.f3430c, new ResultData("kSuccess", map));
        a();
    }

    public void g(String str, File file) throws r0.b {
        String strEncodeToString = null;
        if (this.f3435h) {
            d("kTaskCanceled", null);
            return;
        }
        if (this.f3557i.upload != null) {
            StringBuilder sbA = android.support.v4.media.f.a("error uploading file, server: ");
            sbA.append(this.f3557i.upload);
            throw new r0.b("kUploadFailed", sbA.toString());
        }
        if (!this.f3429b.e()) {
            this.f3429b.b(str, l.e.y(file, 33554432));
            f(str);
            return;
        }
        if (file.length() > PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID) {
            StringBuilder sbA2 = android.support.v4.media.f.a("file too large: ");
            sbA2.append(file.length());
            sbA2.append(", max size is: ");
            sbA2.append(32768);
            throw new r0.b("kFileTooLarge", sbA2.toString());
        }
        byte[] bArrY = l.e.y(file, 32768);
        if (bArrY == null) {
            throw new r0.b("kReadFileFailed", "read file failed: " + file);
        }
        try {
            strEncodeToString = Base64.encodeToString(bArrY, 2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (strEncodeToString == null) {
            throw new r0.b("kInternalError", "Base64 encoding error");
        }
        f(strEncodeToString);
    }
}
