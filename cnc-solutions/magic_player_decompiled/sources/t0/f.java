package t0;

import android.text.TextUtils;
import android.util.Log;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.method.ReadBackRequest;

/* JADX INFO: loaded from: classes.dex */
public class f extends s0.b {
    @Override // s0.b
    public void a(MessageModel messageModel, o0.c cVar) throws r0.b {
        Log.d("ReadBackHandler", "handleMessage::");
        ReadBackRequest readBackRequest = (ReadBackRequest) d(messageModel, ReadBackRequest.class);
        if (TextUtils.isEmpty(readBackRequest.target)) {
            throw new r0.b("kInvalidParams", "target cannot be empty");
        }
        s0.d.b().e(new u0.d(cVar, messageModel, readBackRequest));
    }

    @Override // s0.b
    public boolean b() {
        return false;
    }
}
