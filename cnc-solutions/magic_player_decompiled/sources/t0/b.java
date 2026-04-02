package t0;

import android.util.Log;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.method.GetConfigReply;
import cn.huidu.lcd.transmit.model.method.GetConfigRequest;
import java.util.ArrayList;
import java.util.List;
import v0.m;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class b extends s0.b {

    public class a extends z1.a<List<GetConfigRequest>> {
        public a(b bVar) {
        }
    }

    @Override // s0.b
    public void a(MessageModel messageModel, o0.c cVar) {
        GetConfigReply getConfigReply;
        Log.d("ConfigGetHandler", "handleMessage::");
        List listZ0 = h.a.z0(messageModel.ask, new a(this).f4197b);
        if (listZ0 == null) {
            cVar.c(messageModel, new ResultData("kIllegalMessage"));
            return;
        }
        ArrayList arrayList = new ArrayList();
        boolean z3 = true;
        int i4 = 0;
        while (true) {
            if (i4 >= listZ0.size()) {
                break;
            }
            String str = ((GetConfigRequest) listZ0.get(i4)).get;
            if (str == null) {
                getConfigReply = null;
            } else {
                GetConfigReply getConfigReply2 = new GetConfigReply();
                getConfigReply2.get = str;
                if (str.equals("DeviceLock")) {
                    getConfigReply2.config = m.b();
                    getConfigReply2.result = "kSuccess";
                } else if (str.equals("Time")) {
                    getConfigReply2.config = m.h();
                    getConfigReply2.result = "kSuccess";
                } else {
                    getConfigReply2.result = "kNotImplemented";
                }
                getConfigReply = getConfigReply2;
            }
            if (getConfigReply == null || !"kSuccess".equals(getConfigReply.result)) {
                z3 = false;
            }
            if (getConfigReply != null) {
                arrayList.add(getConfigReply);
            }
            i4++;
        }
        ResultData resultData = new ResultData();
        resultData.result = z3 ? "kSuccess" : "kError";
        resultData.data = arrayList;
        cVar.c(messageModel, resultData);
    }

    @Override // s0.b
    public boolean b() {
        return false;
    }
}
