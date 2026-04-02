package u0;

import android.app.Application;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.ActivityOptionsCompat;
import cn.huidu.lcd.core.R$anim;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.cache.UpgradeCache;
import cn.huidu.lcd.transmit.model.method.UpgradeRequest;
import cn.huidu.lcd.transmit.model.playtask.FileInfo;
import cn.huidu.lcd.transmit.model.report.ProgressInfo;
import java.io.File;
import java.util.Objects;
import w0.d;

/* JADX INFO: loaded from: classes.dex */
public class b extends s0.c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f3553i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public FileInfo f3554j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public v0.c f3555k;

    public b(o0.c cVar, MessageModel messageModel, UpgradeRequest upgradeRequest) {
        super("Upgrade", cVar, messageModel);
        this.f3553i = upgradeRequest.target;
        this.f3554j = upgradeRequest.getUpgradeFile();
        this.f3433f = upgradeRequest.reportProgress;
    }

    @Override // s0.c
    public void b() {
        v0.c cVar = this.f3555k;
        if (cVar != null) {
            cVar.f3644d = true;
        }
    }

    @Override // s0.c
    public void c() throws r0.b {
        e(100, 0);
        if (f()) {
            ProgressInfo progressInfo = new ProgressInfo();
            progressInfo.state = 100;
            this.f3429b.c(this.f3430c, new ResultData("kSuccess", progressInfo));
        } else {
            this.f3429b.c(this.f3430c, new ResultData("kTaskAccepted"));
        }
        if (this.f3429b.e()) {
            this.f3429b.f(new a(this));
            return;
        }
        String str = TextUtils.isEmpty(this.f3554j.md5) ? "UpgradeFile" : this.f3554j.md5;
        String str2 = l.e.w(l.e.f(), "Upgrade") + "/" + str + ".apk";
        File file = new File(str2);
        if (file.exists() && !str.equals(this.f3554j.md5)) {
            l.e.c(file);
        }
        v0.c cVar = new v0.c(new p.b(this));
        this.f3555k = cVar;
        FileInfo fileInfo = this.f3554j;
        cVar.c(fileInfo.path, str2, fileInfo.md5, fileInfo.size);
        if (this.f3435h) {
            d("kTaskCanceled", "task canceled");
        } else {
            h(this.f3553i, str2);
        }
    }

    public final boolean f() {
        Integer num = this.f3430c.version;
        return num != null && num.intValue() == 1;
    }

    public final void g() {
        e(102, 100);
        if (f()) {
            ProgressInfo progressInfo = new ProgressInfo();
            progressInfo.state = 102;
            this.f3429b.c(this.f3430c, new ResultData("kSuccess", progressInfo));
        }
    }

    public final void h(String str, String str2) {
        PackageInfo packageArchiveInfo;
        boolean z3;
        UpgradeCache upgradeCache = null;
        try {
            packageArchiveInfo = w0.c.f3777a.getPackageManager().getPackageArchiveInfo(str2, 16384);
        } catch (Exception unused) {
            packageArchiveInfo = null;
        }
        if (packageArchiveInfo == null || packageArchiveInfo.packageName == null) {
            d("kApkCheckError", "read apk package info failed");
            return;
        }
        Objects.requireNonNull(str);
        if (!str.equals("MagicPlayer")) {
            if (!str.equals("MagicServices")) {
                d("kNotImplemented", "unknown upgrade type: " + str);
                return;
            }
            String str3 = packageArchiveInfo.packageName;
            if (!"cn.huidu.lcd.services".equals(str3)) {
                d("kApkCheckError", "illegal package name: " + str3);
                return;
            }
            g();
            s.h.a("execute install: " + str2);
            if (!w0.b.a(str2)) {
                d("kUpgradeFailed", "install apk failed");
                return;
            }
            e(200, 100);
            if (f()) {
                ProgressInfo progressInfo = new ProgressInfo();
                progressInfo.state = 200;
                this.f3429b.c(this.f3430c, new ResultData("kSuccess", progressInfo));
            } else {
                this.f3429b.c(this.f3430c, new ResultData("kSuccess"));
            }
            a();
            return;
        }
        String str4 = packageArchiveInfo.packageName;
        if (!"cn.huidu.lcd.player".equals(str4)) {
            d("kApkCheckError", "Illegal package name: " + str4);
            return;
        }
        if (!this.f3429b.e()) {
            String str5 = packageArchiveInfo.versionName;
            upgradeCache = new UpgradeCache();
            upgradeCache.timestamp = System.currentTimeMillis();
            MessageModel messageModel = this.f3430c;
            upgradeCache.msgId = messageModel.uuid;
            upgradeCache.msgTag = messageModel.tag;
            upgradeCache.dstVersion = str5;
            upgradeCache.finished = false;
            q0.a.x(upgradeCache);
        }
        g();
        s.h.a("start apk installer: " + str2);
        Application application = w0.c.f3777a;
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setClassName("cn.huidu.lcd.services", "cn.huidu.lcd.services.InstallerActivity");
            intent.addFlags(268435456);
            intent.putExtra("apkName", "MagicPlayer");
            intent.putExtra("apkPath", str2);
            application.startActivity(intent, ActivityOptionsCompat.makeCustomAnimation(application, R$anim.fade_in, R$anim.fade_out).toBundle());
            z3 = true;
        } catch (Exception e4) {
            e4.printStackTrace();
            z3 = false;
        }
        if (!z3) {
            Log.d("ApkInstaller", "installAndStart: >>> " + str2);
            d.a aVarC = w0.d.c("pm install -r -d " + str2, "am start cn.huidu.lcd.player/cn.huidu.lcd.player.PlayerActivity");
            Log.d("ApkInstaller", "installAndStart: " + aVarC);
            z3 = aVarC.f3778a == 0;
        }
        if (!z3) {
            d("kUpgradeFailed", "cannot start apk installer");
            return;
        }
        SystemClock.sleep(90000L);
        s.h.a("waited 90 seconds player still alive..");
        if (upgradeCache != null) {
            upgradeCache.finished = true;
            q0.a.x(upgradeCache);
        }
        d("kUpgradeFailed", "install apk failed");
    }
}
