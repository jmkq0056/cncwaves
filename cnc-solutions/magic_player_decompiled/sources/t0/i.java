package t0;

import android.text.TextUtils;
import android.util.Log;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.cache.UpgradeCache;
import cn.huidu.lcd.transmit.model.method.UpgradeRequest;
import cn.huidu.lcd.transmit.model.playtask.FileInfo;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class i extends s0.b {
    @Override // s0.b
    public void a(MessageModel messageModel, o0.c cVar) throws r0.b {
        Log.d("UpgradeHandler", "handleMessage: ");
        UpgradeRequest upgradeRequest = (UpgradeRequest) d(messageModel, UpgradeRequest.class);
        if (TextUtils.isEmpty(upgradeRequest.target)) {
            throw new r0.b("kInvalidParams", "target cannot be null");
        }
        if (!"MagicPlayer".equals(upgradeRequest.target) && !"MagicServices".equals(upgradeRequest.target)) {
            StringBuilder sbA = android.support.v4.media.f.a("unsupported target: ");
            sbA.append(upgradeRequest.target);
            throw new r0.b("kNotImplemented", sbA.toString());
        }
        FileInfo upgradeFile = upgradeRequest.getUpgradeFile();
        if (upgradeFile == null) {
            throw new r0.b("kInvalidParams", "file info is null or illegal");
        }
        if (cVar.e()) {
            if (TextUtils.isEmpty(upgradeFile.name)) {
                throw new r0.b("kInvalidParams", "file name cannot be null");
            }
        } else if (TextUtils.isEmpty(upgradeFile.path)) {
            throw new r0.b("kInvalidParams", "file path cannot be null");
        }
        e(androidx.appcompat.view.a.a("Upgrade", upgradeRequest.target), messageModel.log);
        s0.d.b().e(new u0.b(cVar, messageModel, upgradeRequest));
    }

    @Override // s0.b
    public boolean b() {
        return true;
    }

    public void f(o0.c cVar) {
        String strZ = l.e.z(new File(l.e.w(l.e.f(), "Transmit"), "UpgradeCache.json"));
        UpgradeCache upgradeCache = strZ == null ? null : (UpgradeCache) h.a.A0(strZ, UpgradeCache.class);
        if (upgradeCache == null || upgradeCache.finished) {
            return;
        }
        MessageModel messageModel = new MessageModel();
        messageModel.uuid = upgradeCache.msgId;
        messageModel.tag = upgradeCache.msgTag;
        messageModel.module = "Upgrade";
        String strP = l.e.p(w0.c.f3777a);
        String str = upgradeCache.dstVersion;
        if (str == null || !str.equals(strP)) {
            StringBuilder sbA = androidx.appcompat.view.b.a("upgrade failed, current version: ", strP, ", target version: ");
            sbA.append(upgradeCache.dstVersion);
            messageModel.reply = ResultData.error("kUpgradeFailed", sbA.toString());
        } else {
            messageModel.reply = new ResultData("kSuccess");
        }
        cVar.d(messageModel);
        upgradeCache.finished = true;
        q0.a.x(upgradeCache);
    }
}
