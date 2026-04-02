package t0;

import android.util.Log;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.method.SetConfigReply;
import cn.huidu.lcd.transmit.model.method.SetConfigRequest;
import cn.huidu.lcd.transmit.model.setting.AdvancedSettings;
import cn.huidu.lcd.transmit.model.setting.DeviceLockInfo;
import cn.huidu.lcd.transmit.model.setting.TimeInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import v0.m;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class c extends s0.b {

    public class a extends z1.a<List<SetConfigRequest>> {
        public a(c cVar) {
        }
    }

    @Override // s0.b
    public void a(MessageModel messageModel, o0.c cVar) {
        SetConfigReply setConfigReply;
        Log.d("ConfigSetHandler", "handleMessage::");
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
            SetConfigRequest setConfigRequest = (SetConfigRequest) listZ0.get(i4);
            String str = messageModel.log;
            if (setConfigRequest.set == null) {
                setConfigReply = null;
            } else {
                SetConfigReply setConfigReply2 = new SetConfigReply();
                String str2 = setConfigRequest.set;
                setConfigReply2.set = str2;
                try {
                    f(str2, setConfigRequest.config);
                    e("Set" + setConfigRequest.set, str);
                    setConfigReply2.result = "kSuccess";
                } catch (r0.b e4) {
                    setConfigReply2.result = e4.f3358a;
                }
                setConfigReply = setConfigReply2;
            }
            if (setConfigReply == null || !"kSuccess".equals(setConfigReply.result)) {
                z3 = false;
            }
            if (setConfigReply != null) {
                arrayList.add(setConfigReply);
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
        return true;
    }

    public final void f(String str, Object obj) throws r0.b {
        Objects.requireNonNull(str);
        switch (str) {
            case "DeviceLock":
                m.q((DeviceLockInfo) h.a.A0(obj, DeviceLockInfo.class));
                return;
            case "Time":
                m.r((TimeInfo) h.a.A0(obj, TimeInfo.class));
                return;
            case "AdvancedSettings":
                m.p((AdvancedSettings) h.a.A0(obj, AdvancedSettings.class));
                return;
            default:
                throw new r0.b("kNotImplemented", "Unsupported setting type!");
        }
    }
}
