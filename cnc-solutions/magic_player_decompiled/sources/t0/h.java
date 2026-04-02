package t0;

import android.os.SystemClock;
import android.util.Log;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.method.SyncReply;
import cn.huidu.lcd.transmit.model.method.SyncRequest;
import cn.huidu.lcd.transmit.model.report.PlayerInfo;
import cn.huidu.lcd.transmit.model.report.ScreenInfo;
import cn.huidu.lcd.transmit.model.report.StorageInfo;
import cn.huidu.lcd.transmit.model.report.SyncDetails;
import java.util.UUID;
import v0.k;
import v0.m;

/* JADX INFO: loaded from: classes.dex */
public class h extends s0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SyncDetails f3527a = new SyncDetails();

    @Override // s0.b
    public void a(MessageModel messageModel, o0.c cVar) {
        Log.d("SyncHandler", "handleMessage: ");
        SyncRequest syncRequest = (SyncRequest) d(messageModel, SyncRequest.class);
        n.c cVar2 = (n.c) l.b.c().a(n.c.class);
        SyncReply syncReply = new SyncReply();
        syncReply.username = cVar2.f2629e;
        syncReply.settingVersion = String.valueOf(h.a.S());
        PlayTaskNode playTaskNodeF = h0.g.f(0);
        syncReply.playTaskVersion = playTaskNodeF != null ? playTaskNodeF.getVersion() : null;
        SyncDetails syncDetails = new SyncDetails();
        if (syncRequest.syncPlayTask && playTaskNodeF != null) {
            syncDetails.playTask = v0.f.l(playTaskNodeF);
        }
        if (syncRequest.syncInfoList) {
            syncDetails.device = k.a();
            syncDetails.version = k.h();
            syncDetails.storage = k.f();
            syncDetails.screen = k.e();
            syncDetails.player = k.d();
            syncDetails.network = k.c();
        }
        if (syncRequest.syncNetInfo) {
            syncDetails.wifi = m.l();
            syncDetails.ethernet = m.c();
            if (cn.huidu.lcd.core.a.a()) {
                syncDetails.telephony = k.g();
            }
        }
        if (syncRequest.syncSettings) {
            syncDetails.screenOnOff = m.g();
            syncDetails.machineOnOff = m.f();
            syncDetails.brightness = m.a();
            syncDetails.volume = m.j();
            syncDetails.time = m.h();
            syncDetails.timedReboot = m.i();
            syncDetails.playRecord = m.e();
            syncDetails.faceDetect = m.d();
        }
        syncReply.details = syncDetails;
        syncReply.deviceStatus = k.b(syncDetails.storage);
        cVar.c(messageModel, new ResultData("kSuccess", syncReply));
        SyncDetails syncDetails2 = syncReply.details;
        if (syncDetails2 != null) {
            synchronized (this.f3527a) {
                SyncDetails syncDetails3 = this.f3527a;
                syncDetails3.player = syncDetails2.player;
                syncDetails3.screen = syncDetails2.screen;
                syncDetails3.storage = syncDetails2.storage;
            }
        }
    }

    @Override // s0.b
    public boolean b() {
        return false;
    }

    public void f(o0.c cVar, boolean z3) {
        StorageInfo storageInfoF;
        Log.d("SyncHandler", "sendSyncReport: ");
        MessageModel messageModel = new MessageModel();
        messageModel.uuid = UUID.randomUUID().toString();
        messageModel.module = "Sync";
        n.c cVar2 = (n.c) l.b.c().a(n.c.class);
        SyncReply syncReply = new SyncReply();
        syncReply.username = cVar2.f2629e;
        syncReply.settingVersion = String.valueOf(h.a.S());
        PlayTaskNode playTaskNodeF = h0.g.f(0);
        SyncDetails syncDetails = null;
        syncReply.playTaskVersion = playTaskNodeF != null ? playTaskNodeF.getVersion() : null;
        syncReply.uptime = Long.valueOf(SystemClock.elapsedRealtime());
        syncReply.playerVersion = l.e.p(w0.c.f3777a);
        if (z3) {
            SyncDetails syncDetails2 = new SyncDetails();
            syncReply.changed = syncDetails2;
            syncDetails2.player = k.d();
            syncReply.changed.screen = k.e();
            storageInfoF = k.f();
            syncReply.changed.storage = storageInfoF;
        } else {
            storageInfoF = null;
        }
        syncReply.deviceStatus = k.b(storageInfoF);
        SyncDetails syncDetails3 = syncReply.changed;
        if (syncDetails3 != null) {
            synchronized (this.f3527a) {
                PlayerInfo playerInfo = syncDetails3.player;
                if (playerInfo != null) {
                    if (playerInfo.changed(this.f3527a.player)) {
                        this.f3527a.player = syncDetails3.player;
                    } else {
                        syncDetails3.player = null;
                    }
                }
                ScreenInfo screenInfo = syncDetails3.screen;
                if (screenInfo != null) {
                    if (screenInfo.changed(this.f3527a.screen)) {
                        this.f3527a.screen = syncDetails3.screen;
                    } else {
                        syncDetails3.screen = null;
                    }
                }
                StorageInfo storageInfo = syncDetails3.storage;
                if (storageInfo != null) {
                    if (storageInfo.changed(this.f3527a.storage)) {
                        this.f3527a.storage = syncDetails3.storage;
                    } else {
                        syncDetails3.storage = null;
                    }
                }
            }
            if (syncDetails3.player != null || syncDetails3.screen != null || syncDetails3.storage != null) {
                syncDetails = syncDetails3;
            }
        }
        syncReply.changed = syncDetails;
        messageModel.report = syncReply;
        cVar.d(messageModel);
    }
}
