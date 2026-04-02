package s0;

import androidx.annotation.NonNull;
import cn.huidu.lcd.core.db.OperateLogDb;
import cn.huidu.lcd.transmit.model.MessageModel;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public abstract void a(MessageModel messageModel, o0.c cVar);

    public abstract boolean b();

    @NonNull
    public Object c(MessageModel messageModel) throws r0.b {
        Object obj = messageModel.ask;
        if (obj != null) {
            return obj;
        }
        throw new r0.b("kIllegalMessage", "ask cannot be null");
    }

    @NonNull
    public <T> T d(MessageModel messageModel, Class<T> cls) throws r0.b {
        Object obj = messageModel.ask;
        if (obj != null) {
            return (T) q0.a.t(obj, cls, "ask");
        }
        throw new r0.b("kIllegalMessage", "ask cannot be null");
    }

    public void e(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        OperateLogDb.insert(str, str2);
    }
}
