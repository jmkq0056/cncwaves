package o0;

import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b {
    public static boolean a(c cVar) {
        return true;
    }

    public static boolean b(c cVar) {
        return false;
    }

    public static void c(c _this, MessageModel messageModel, ResultData resultData) {
        MessageModel messageModel2 = new MessageModel();
        messageModel2.version = messageModel.version;
        messageModel2.uuid = messageModel.uuid;
        messageModel2.module = messageModel.module;
        messageModel2.tag = messageModel.tag;
        messageModel2.reply = resultData;
        _this.d(messageModel2);
    }

    public static void d(c cVar, String str, byte[] bArr) {
    }

    public static void e(c cVar, a aVar) {
    }
}
