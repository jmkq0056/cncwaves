package t0;

import android.location.Location;
import android.location.LocationManager;
import android.media.AudioManager;
import android.text.TextUtils;
import android.util.Log;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.extra.TagControl;
import cn.huidu.lcd.transmit.model.MessageModel;
import cn.huidu.lcd.transmit.model.ResultData;
import cn.huidu.lcd.transmit.model.method.GetRequest;
import cn.huidu.lcd.transmit.model.method.PlayTaskRequest;
import cn.huidu.lcd.transmit.model.method.ScreenParamRequest;
import cn.huidu.lcd.transmit.model.method.SettingResult;
import cn.huidu.lcd.transmit.model.method.TaskRequest;
import cn.huidu.lcd.transmit.model.report.LocationInfo;
import cn.huidu.lcd.transmit.model.report.ProgressInfo;
import cn.huidu.lcd.transmit.model.setting.AdvancedSettings;
import cn.huidu.lcd.transmit.model.setting.BrightnessInfo;
import cn.huidu.lcd.transmit.model.setting.DeviceLockInfo;
import cn.huidu.lcd.transmit.model.setting.EthernetInfo;
import cn.huidu.lcd.transmit.model.setting.FaceDetectInfo;
import cn.huidu.lcd.transmit.model.setting.PlayRecordInfo;
import cn.huidu.lcd.transmit.model.setting.PlayerSettings;
import cn.huidu.lcd.transmit.model.setting.PowerOnOffInfo;
import cn.huidu.lcd.transmit.model.setting.ScreenOnOffInfo;
import cn.huidu.lcd.transmit.model.setting.TagControlInfo;
import cn.huidu.lcd.transmit.model.setting.TimeInfo;
import cn.huidu.lcd.transmit.model.setting.TimedRebootInfo;
import cn.huidu.lcd.transmit.model.setting.VolumeInfo;
import cn.huidu.lcd.transmit.model.setting.WebLockInfo;
import cn.huidu.lcd.transmit.model.setting.WifiInfo;
import j.o;
import j.p;
import j.r;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import n.n;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xbill.DNS.Flags;
import q.j;
import v0.k;
import v0.m;
import v1.s;

/* JADX INFO: loaded from: classes.dex */
public class a extends s0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3524a;

    public a(int i4) {
        this.f3524a = i4;
    }

    @Override // s0.b
    public void a(MessageModel messageModel, o0.c cVar) throws r0.b {
        ResultData resultDataF;
        boolean z3;
        Element elementP;
        boolean zW = false;
        Document document = null;
        switch (this.f3524a) {
            case 0:
                Log.d("CommandHandler", "handleMessage::");
                String string = c(messageModel).toString();
                String strSubstring = messageModel.log;
                if (strSubstring != null) {
                    if (strSubstring.length() > 16) {
                        strSubstring = strSubstring.substring(0, 16);
                    }
                    e(string, strSubstring);
                }
                s0.d.b().e(new u0.c(cVar, messageModel, string));
                return;
            case 1:
                boolean z4 = true;
                Log.d("GetHandler", "handleMessage: ");
                GetRequest getRequest = (GetRequest) d(messageModel, GetRequest.class);
                List<String> list = getRequest.list;
                if (list == null || list.isEmpty()) {
                    throw new r0.b("kInvalidParams", "Get list cannot be empty");
                }
                s sVar = new s();
                for (String str : getRequest.list) {
                    Object objI = i(str);
                    if (objI == null) {
                        z4 = false;
                    }
                    sVar.put(str, objI);
                }
                ResultData resultData = new ResultData();
                resultData.result = z4 ? "kSuccess" : "kError";
                resultData.data = sVar;
                resultData.timestamp = Long.valueOf(h.a.S());
                cVar.c(messageModel, resultData);
                return;
            case 2:
                Log.d("PlayTaskHandler", "handleMessage::");
                PlayTaskRequest playTaskRequest = (PlayTaskRequest) d(messageModel, PlayTaskRequest.class);
                if (playTaskRequest.playTask == null && playTaskRequest.tagControl == null) {
                    throw new r0.b("kInvalidParams", "play task and tag control is null");
                }
                TagControlInfo tagControlInfo = playTaskRequest.tagControl;
                if (tagControlInfo != null) {
                    TagControl tagControlH = h0.g.h();
                    if (tagControlH == null) {
                        tagControlH = new TagControl();
                    }
                    tagControlH.setEnable(tagControlInfo.enable);
                    tagControlH.setShowTags(tagControlInfo.showTags);
                    tagControlH.setHideTags(tagControlInfo.hideTags);
                    File file = new File(h0.g.d(0), "TagControl.xml");
                    Document documentD = q0.a.d();
                    if (documentD != null && (elementP = y0.a.p(null, tagControlH, documentD)) != null) {
                        documentD.appendChild(elementP);
                        document = documentD;
                    }
                    if (document == null) {
                        z3 = true;
                    } else {
                        z3 = true;
                        zW = q0.a.w(document, file, true);
                    }
                    if (!zW) {
                        throw new r0.b("kInternalError", "save config failed");
                    }
                    if (playTaskRequest.playTask == null) {
                        o oVar = new o();
                        oVar.f1954b = z3;
                        g3.c.b().f(oVar);
                        cVar.c(messageModel, new ResultData("kSuccess"));
                        return;
                    }
                }
                e("UpdatePlayTask", messageModel.log);
                s0.d.b().e(new u0.f(cVar, messageModel, playTaskRequest));
                return;
            case 3:
                Log.d("ScreenParamHandler", "handleMessage: ");
                ScreenParamRequest screenParamRequest = (ScreenParamRequest) d(messageModel, ScreenParamRequest.class);
                if (TextUtils.isEmpty(screenParamRequest.paramData)) {
                    if (screenParamRequest.paramFile == null) {
                        throw new r0.b("kInvalidParams", "file info is null or illegal");
                    }
                    if (cVar.e()) {
                        if (TextUtils.isEmpty(screenParamRequest.paramFile.name)) {
                            throw new r0.b("kInvalidParams", "file name cannot be null");
                        }
                    } else if (TextUtils.isEmpty(screenParamRequest.paramFile.path)) {
                        throw new r0.b("kInvalidParams", "file path cannot be null");
                    }
                }
                e("UpdateScreenParam", messageModel.log);
                s0.d.b().e(new u0.h(cVar, messageModel, screenParamRequest));
                return;
            case 4:
                Log.d("SetHandler", "handleMessage: ");
                s sVar2 = (s) c(messageModel);
                s sVar3 = new s();
                s sVar4 = s.this;
                s.e eVar = sVar4.f3692e.f3704d;
                int i4 = sVar4.f3691d;
                boolean z5 = true;
                while (true) {
                    s.e eVar2 = sVar4.f3692e;
                    if (!(eVar != eVar2)) {
                        ResultData resultData2 = new ResultData();
                        resultData2.result = z5 ? "kSuccess" : "kError";
                        resultData2.data = sVar3;
                        resultData2.timestamp = Long.valueOf(h.a.S());
                        cVar.c(messageModel, resultData2);
                        return;
                    }
                    if (eVar == eVar2) {
                        throw new NoSuchElementException();
                    }
                    if (sVar4.f3691d != i4) {
                        throw new ConcurrentModificationException();
                    }
                    s.e eVar3 = eVar.f3704d;
                    Object obj = eVar.f3706f;
                    String string2 = obj.toString();
                    s.e eVarC = sVar2.c(obj);
                    SettingResult settingResultH = h(string2, eVarC != null ? eVarC.f3707g : null, messageModel.log);
                    sVar3.put(string2, settingResultH);
                    if (!"kSuccess".equals(settingResultH.result)) {
                        z5 = false;
                    }
                    eVar = eVar3;
                }
                break;
            default:
                Log.d("TaskHandler", "handleMessage: ");
                TaskRequest taskRequest = (TaskRequest) d(messageModel, TaskRequest.class);
                if (TextUtils.isEmpty(taskRequest.action)) {
                    throw new r0.b("kInvalidParams", "action cannot be null");
                }
                if (TextUtils.isEmpty(taskRequest.taskType)) {
                    throw new r0.b("kInvalidParams", "taskType cannot be null");
                }
                String str2 = taskRequest.action;
                Objects.requireNonNull(str2);
                if (str2.equals(TaskRequest.CANCEL)) {
                    resultDataF = f(taskRequest.taskType);
                } else {
                    if (!str2.equals("report")) {
                        throw new r0.b("kNotImplemented", "Unsupported action: " + taskRequest.action);
                    }
                    resultDataF = j(taskRequest.taskType);
                }
                cVar.c(messageModel, resultDataF);
                return;
        }
    }

    @Override // s0.b
    public boolean b() {
        switch (this.f3524a) {
            case 0:
            case 2:
            case 3:
            case 4:
                return true;
            case 1:
            default:
                return false;
        }
    }

    public ResultData f(String str) {
        s0.d dVarB = s0.d.b();
        synchronized (dVarB) {
            boolean z3 = false;
            for (int size = dVarB.f3438b.size() - 1; size >= 0; size--) {
                s0.c cVar = dVarB.f3438b.get(size);
                if (str.equals(cVar.f3428a)) {
                    cVar.f3435h = true;
                    try {
                        cVar.b();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    z3 = true;
                }
            }
            if (!z3) {
                throw new r0.b("kExecuteFailed", "task not found, may be finished");
            }
        }
        return new ResultData("kSuccess");
    }

    public String g(String str) {
        return androidx.appcompat.view.a.a("Set", str);
    }

    public SettingResult h(String str, Object obj, String str2) {
        SettingResult settingResult = new SettingResult();
        try {
            m(str, obj, str2);
            settingResult.result = "kSuccess";
        } catch (r0.b e4) {
            settingResult.result = e4.f3358a;
            settingResult.errorMsg = e4.getMessage();
        }
        return settingResult;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public Object i(String str) {
        Object obj;
        Objects.requireNonNull(str);
        byte b4 = -1;
        switch (str.hashCode()) {
            case -1984987966:
                if (str.equals("Mobile")) {
                    b4 = 0;
                }
                break;
            case -1938329210:
                if (str.equals("VersionInfo")) {
                    b4 = 1;
                }
                break;
            case -1875532501:
                if (str.equals("PowerOnOff")) {
                    b4 = 2;
                }
                break;
            case -1727016134:
                if (str.equals("Volume")) {
                    b4 = 3;
                }
                break;
            case -1653340047:
                if (str.equals("Brightness")) {
                    b4 = 4;
                }
                break;
            case -1520650172:
                if (str.equals("DeviceInfo")) {
                    b4 = 5;
                }
                break;
            case -1520559935:
                if (str.equals("DeviceLock")) {
                    b4 = 6;
                }
                break;
            case -1407135105:
                if (str.equals("WebLock")) {
                    b4 = 7;
                }
                break;
            case -1354714121:
                if (str.equals("Ethernet")) {
                    b4 = 8;
                }
                break;
            case -946957497:
                if (str.equals("PlayTaskInfo")) {
                    b4 = 9;
                }
                break;
            case -761165627:
                if (str.equals("PlayRecord")) {
                    b4 = 10;
                }
                break;
            case -273083428:
                if (str.equals("NetworkInfo")) {
                    b4 = Flags.CD;
                }
                break;
            case -205981873:
                if (str.equals("PlayerInfo")) {
                    b4 = 12;
                }
                break;
            case 2606829:
                if (str.equals("Time")) {
                    b4 = 13;
                }
                break;
            case 2694997:
                if (str.equals("WiFi")) {
                    b4 = 14;
                }
                break;
            case 105703971:
                if (str.equals("LocationInfo")) {
                    b4 = 15;
                }
                break;
            case 1070470724:
                if (str.equals("PlayerSettings")) {
                    b4 = 16;
                }
                break;
            case 1095299270:
                if (str.equals("TelephonyInfo")) {
                    b4 = 17;
                }
                break;
            case 1141968297:
                if (str.equals("StorageInfo")) {
                    b4 = 18;
                }
                break;
            case 1575771994:
                if (str.equals("ScreenInfo")) {
                    b4 = 19;
                }
                break;
            case 1609810404:
                if (str.equals("ScreenOnOff")) {
                    b4 = 20;
                }
                break;
            case 1668778629:
                if (str.equals("AdvancedSettings")) {
                    b4 = 21;
                }
                break;
            case 1706954140:
                if (str.equals("TimedReboot")) {
                    b4 = 22;
                }
                break;
            case 2126236544:
                if (str.equals("FaceDetect")) {
                    b4 = 23;
                }
                break;
        }
        switch (b4) {
            case 0:
            default:
                return null;
            case 1:
                return k.h();
            case 2:
                return m.f();
            case 3:
                return m.j();
            case 4:
                return m.a();
            case 5:
                return k.a();
            case 6:
                return m.b();
            case 7:
                n nVar = (n) m.n(n.class);
                WebLockInfo webLockInfo = new WebLockInfo();
                webLockInfo.locked = nVar.f2685c;
                obj = webLockInfo;
                break;
            case 8:
                return m.c();
            case 9:
                PlayTaskNode playTaskNodeF = h0.g.f(0);
                if (playTaskNodeF == null) {
                    return null;
                }
                return v0.f.l(playTaskNodeF);
            case 10:
                return m.e();
            case 11:
                return k.c();
            case 12:
                return k.d();
            case 13:
                return m.h();
            case 14:
                return m.l();
            case 15:
                LocationInfo locationInfo = new LocationInfo();
                try {
                    Location lastKnownLocation = ((LocationManager) w0.c.f3777a.getSystemService("location")).getLastKnownLocation("gps");
                    if (lastKnownLocation == null) {
                        return null;
                    }
                    locationInfo.time = lastKnownLocation.getTime();
                    locationInfo.latitude = lastKnownLocation.getLatitude();
                    locationInfo.longitude = lastKnownLocation.getLongitude();
                    if (lastKnownLocation.hasAltitude()) {
                        locationInfo.altitude = Double.valueOf(lastKnownLocation.getAltitude());
                    }
                    if (lastKnownLocation.hasSpeed()) {
                        locationInfo.speed = Float.valueOf(lastKnownLocation.getSpeed());
                    }
                    obj = locationInfo;
                    if (lastKnownLocation.hasBearing()) {
                        locationInfo.bearing = Float.valueOf(lastKnownLocation.getBearing());
                        obj = locationInfo;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    obj = locationInfo;
                }
                break;
            case 16:
                n.a aVar = (n.a) m.n(n.a.class);
                PlayerSettings playerSettings = new PlayerSettings();
                playerSettings.syncPlay = Boolean.valueOf(aVar.f2608e == 1);
                playerSettings.playMode = h.a.F(aVar.f2608e);
                playerSettings.enableInteraction = Boolean.valueOf(aVar.f2609f);
                playerSettings.enablePlayResume = Boolean.valueOf(aVar.f2610g);
                playerSettings.autoBackDelay = Integer.valueOf(aVar.f2613j);
                playerSettings.enableDualScreen = Boolean.valueOf(aVar.f2614k);
                playerSettings.autoPlayHdmiIn = Boolean.valueOf(aVar.f2615l);
                playerSettings.enableDLNA = Boolean.valueOf(aVar.f2617n);
                obj = playerSettings;
                break;
            case 17:
                return k.g();
            case 18:
                return k.f();
            case 19:
                return k.e();
            case 20:
                return m.g();
            case 21:
                AdvancedSettings advancedSettings = new AdvancedSettings();
                advancedSettings.deviceName = ((n.d) m.n(n.d.class)).f2631c;
                n.a aVar2 = (n.a) m.n(n.a.class);
                advancedSettings.storageLocation = (String) Arrays.asList("local", "sdcard", "usb").get(aVar2.f2606c);
                advancedSettings.screenRotation = (String) Arrays.asList("0", "90", "180", "270").get(aVar2.f2607d);
                advancedSettings.dlna = Boolean.valueOf(aVar2.f2617n);
                advancedSettings.miracast = Boolean.valueOf(aVar2.f2618o);
                advancedSettings.airPlay = Boolean.valueOf(aVar2.f2619p);
                return advancedSettings;
            case 22:
                return m.i();
            case 23:
                return m.d();
        }
        return obj;
    }

    public ResultData j(String str) {
        ProgressInfo progressInfo;
        s0.d dVarB = s0.d.b();
        synchronized (dVarB) {
            int i4 = 0;
            while (true) {
                if (i4 >= dVarB.f3438b.size()) {
                    progressInfo = new ProgressInfo(str);
                    break;
                }
                s0.c cVar = dVarB.f3438b.get(i4);
                if (str.equals(cVar.f3428a)) {
                    progressInfo = cVar.f3431d;
                    break;
                }
                i4++;
            }
        }
        return new ResultData("kSuccess", progressInfo);
    }

    public void k(Object obj) throws r0.b {
        m.p((AdvancedSettings) q0.a.t(obj, AdvancedSettings.class, "AdvancedSettings"));
    }

    public void l(Object obj) throws r0.b {
        boolean z3;
        BrightnessInfo brightnessInfo = (BrightnessInfo) q0.a.t(obj, BrightnessInfo.class, "Brightness");
        List<BrightnessInfo.LightInfoItem> list = brightnessInfo.ploys;
        if (list != null && list.size() > 0) {
            z3 = false;
        } else {
            if (TextUtils.isEmpty(brightnessInfo.value)) {
                throw new r0.b("kInvalidParams", "no valid brightness value and ploys");
            }
            z3 = true;
        }
        j jVar = new j(w0.c.f3777a);
        o.f fVarC = jVar.c();
        if (fVarC == null) {
            fVarC = new o.f();
        }
        fVarC.f2837a = z3;
        if (z3) {
            int i4 = Integer.parseInt(brightnessInfo.value);
            if (i4 < 0 || i4 > 100) {
                throw new r0.b("kInvalidParams", "brightness out of range (0-100)");
            }
            fVarC.f2838b = i4;
        } else {
            ArrayList arrayList = new ArrayList();
            for (BrightnessInfo.LightInfoItem lightInfoItem : brightnessInfo.ploys) {
                String str = lightInfoItem.time;
                int i5 = lightInfoItem.brightness;
                if (TextUtils.isEmpty(str)) {
                    throw new r0.b("kInvalidParams", "time cannot be empty");
                }
                if (i5 < 0 || i5 > 100) {
                    throw new r0.b("kInvalidParams", "brightness out of range (0-100)");
                }
                o.a aVar = new o.a();
                aVar.f2804a = str;
                aVar.f2806c = String.valueOf(i5);
                arrayList.add(aVar);
            }
            fVarC.f2839c = arrayList;
        }
        if (jVar.h(fVarC) == null) {
            throw new r0.b("kInternalError", "save config failed");
        }
        if (z3) {
            q.b bVar = new q.b(w0.c.f3777a);
            bVar.e(bVar.b(fVarC.f2838b));
        }
        r rVar = new r();
        rVar.f1962b = true;
        g3.c.b().f(rVar);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void m(String str, Object obj, String str2) throws r0.b {
        Objects.requireNonNull(str);
        str.hashCode();
        byte b4 = -1;
        switch (str.hashCode()) {
            case -1984987966:
                if (str.equals("Mobile")) {
                    b4 = 0;
                }
                break;
            case -1875532501:
                if (str.equals("PowerOnOff")) {
                    b4 = 1;
                }
                break;
            case -1727016134:
                if (str.equals("Volume")) {
                    b4 = 2;
                }
                break;
            case -1653340047:
                if (str.equals("Brightness")) {
                    b4 = 3;
                }
                break;
            case -1520559935:
                if (str.equals("DeviceLock")) {
                    b4 = 4;
                }
                break;
            case -1407135105:
                if (str.equals("WebLock")) {
                    b4 = 5;
                }
                break;
            case -1354714121:
                if (str.equals("Ethernet")) {
                    b4 = 6;
                }
                break;
            case -761165627:
                if (str.equals("PlayRecord")) {
                    b4 = 7;
                }
                break;
            case 2606829:
                if (str.equals("Time")) {
                    b4 = 8;
                }
                break;
            case 2694997:
                if (str.equals("WiFi")) {
                    b4 = 9;
                }
                break;
            case 1070470724:
                if (str.equals("PlayerSettings")) {
                    b4 = 10;
                }
                break;
            case 1609810404:
                if (str.equals("ScreenOnOff")) {
                    b4 = Flags.CD;
                }
                break;
            case 1668778629:
                if (str.equals("AdvancedSettings")) {
                    b4 = 12;
                }
                break;
            case 1706954140:
                if (str.equals("TimedReboot")) {
                    b4 = 13;
                }
                break;
            case 2126236544:
                if (str.equals("FaceDetect")) {
                    b4 = 14;
                }
                break;
        }
        switch (b4) {
            case 0:
                q(obj);
                break;
            case 1:
                t(obj);
                break;
            case 2:
                x(obj);
                break;
            case 3:
                l(obj);
                break;
            case 4:
                n(obj);
                break;
            case 5:
                y(obj);
                break;
            case 6:
                o(obj);
                break;
            case 7:
                r(obj);
                break;
            case 8:
                v(obj);
                break;
            case 9:
                z(obj);
                break;
            case 10:
                s(obj);
                break;
            case 11:
                u(obj);
                break;
            case 12:
                k(obj);
                break;
            case 13:
                w(obj);
                break;
            case 14:
                p(obj);
                break;
            default:
                throw new r0.b("kNotImplemented", androidx.appcompat.view.a.a("Unsupported setting: ", str));
        }
        e(g(str), str2);
    }

    public void n(Object obj) throws r0.b {
        m.q((DeviceLockInfo) q0.a.t(obj, DeviceLockInfo.class, "DeviceLock"));
    }

    public void o(Object obj) throws r0.b {
        EthernetInfo ethernetInfo = (EthernetInfo) q0.a.t(obj, EthernetInfo.class, "Ethernet");
        if (!h.a.d0(ethernetInfo.ip)) {
            throw new r0.b("kInvalidParams", "invalid ip");
        }
        if (!h.a.d0(ethernetInfo.mask)) {
            throw new r0.b("kInvalidParams", "invalid mask");
        }
        if (!h.a.d0(ethernetInfo.gateway)) {
            throw new r0.b("kInvalidParams", "invalid gateway");
        }
        if (!h.a.d0(ethernetInfo.dns)) {
            throw new r0.b("kInvalidParams", "invalid dns");
        }
        f.f fVarA = f.e.a(w0.c.f3777a);
        f.g gVar = new f.g();
        gVar.f1622a = ethernetInfo.dhcp;
        gVar.f1623b = ethernetInfo.ip;
        gVar.f1624c = ethernetInfo.mask;
        gVar.f1625d = ethernetInfo.gateway;
        gVar.f1626e = ethernetInfo.dns;
        fVarA.f(gVar);
    }

    public void p(Object obj) throws r0.b {
        FaceDetectInfo faceDetectInfo = (FaceDetectInfo) q0.a.t(obj, FaceDetectInfo.class, "FaceDetect");
        n.f fVar = (n.f) m.n(n.f.class);
        fVar.f2636c = faceDetectInfo.enable;
        fVar.f2637d = faceDetectInfo.countVisitors;
        fVar.f2638e = faceDetectInfo.reportVisitors;
        fVar.f2639f = faceDetectInfo.reportInterval;
        FaceDetectInfo.PreviewInfo previewInfo = faceDetectInfo.preview;
        if (previewInfo != null) {
            fVar.f2640g = true;
            fVar.f2641h = previewInfo.width;
            fVar.f2642i = previewInfo.height;
            fVar.f2643j = previewInfo.alignment;
            fVar.f2644k = previewInfo.showFaceRect;
            fVar.f2645l = previewInfo.showFaceInfo;
            fVar.f2646m = previewInfo.showVisitors;
        } else {
            fVar.f2640g = false;
        }
        m.o(fVar);
        s0.e.a().b(fVar);
        g3.c.b().f(new p(fVar));
    }

    public void q(Object obj) throws r0.b {
        throw new r0.b("kNotImplemented", null);
    }

    public void r(Object obj) throws r0.b {
        PlayRecordInfo playRecordInfo = (PlayRecordInfo) q0.a.t(obj, PlayRecordInfo.class, "PlayRecord");
        n.j jVar = (n.j) m.n(n.j.class);
        jVar.f2660c = playRecordInfo.enable;
        jVar.f2661d = playRecordInfo.autoReport;
        jVar.f2662e = playRecordInfo.reportTime;
        m.o(jVar);
        s0.e.a().c(jVar);
    }

    public void s(Object obj) throws r0.b {
        PlayerSettings playerSettings = (PlayerSettings) q0.a.t(obj, PlayerSettings.class, "PlayerSettings");
        n.a aVar = (n.a) m.n(n.a.class);
        int i4 = aVar.f2608e;
        Boolean bool = playerSettings.syncPlay;
        if (bool != null) {
            i4 = bool.booleanValue() ? 1 : 0;
        }
        String str = playerSettings.playMode;
        if (str != null) {
            i4 = "synchronous".equals(str) ? 1 : "balance".equals(str) ? 2 : "singleCycle".equals(str) ? 3 : 0;
        }
        o oVar = new o();
        if (i4 != aVar.f2608e) {
            oVar.f1953a = true;
            aVar.f2608e = i4;
        }
        Boolean bool2 = playerSettings.enableInteraction;
        if (bool2 != null && bool2.booleanValue() != aVar.f2609f) {
            oVar.f1958f = true;
            aVar.f2609f = playerSettings.enableInteraction.booleanValue();
        }
        Boolean bool3 = playerSettings.enablePlayResume;
        if (bool3 != null && bool3.booleanValue() != aVar.f2610g) {
            oVar.f1959g = true;
            aVar.f2610g = playerSettings.enablePlayResume.booleanValue();
            l.c cVarA = l.c.a();
            boolean zBooleanValue = playerSettings.enablePlayResume.booleanValue();
            synchronized (cVarA) {
                cVarA.K = zBooleanValue;
            }
        }
        Integer num = playerSettings.autoBackDelay;
        if (num != null && num.intValue() != aVar.f2613j) {
            if (aVar.f2609f) {
                oVar.f1958f = true;
            }
            aVar.f2613j = playerSettings.autoBackDelay.intValue();
        }
        Boolean bool4 = playerSettings.enableDualScreen;
        if (bool4 != null && bool4.booleanValue() != aVar.f2614k) {
            oVar.f1957e = true;
            aVar.f2614k = playerSettings.enableDualScreen.booleanValue();
        }
        Boolean bool5 = playerSettings.autoPlayHdmiIn;
        if (bool5 != null && bool5.booleanValue() != aVar.f2615l) {
            oVar.f1956d = true;
            aVar.f2615l = playerSettings.autoPlayHdmiIn.booleanValue();
        }
        Boolean bool6 = playerSettings.enableDLNA;
        if (bool6 != null && bool6.booleanValue() != aVar.f2617n) {
            aVar.f2617n = playerSettings.enableDLNA.booleanValue();
        }
        m.o(aVar);
        if (oVar.f1953a || oVar.f1954b || oVar.f1955c || oVar.f1956d || oVar.f1957e || oVar.f1958f || oVar.f1959g) {
            g3.c.b().f(oVar);
        }
    }

    public void t(Object obj) throws r0.b {
        PowerOnOffInfo powerOnOffInfo = (PowerOnOffInfo) q0.a.t(obj, PowerOnOffInfo.class, "PowerOnOff");
        j jVar = new j(w0.c.f3777a);
        ArrayList arrayList = new ArrayList();
        if (powerOnOffInfo.ploys.size() > 0) {
            Iterator<PowerOnOffInfo.PowerOnOffInfoItem> it = powerOnOffInfo.ploys.iterator();
            while (it.hasNext()) {
                PowerOnOffInfo.PowerOnOffInfoItem next = it.next();
                String str = next.timeOn;
                String str2 = next.timeOff;
                boolean z3 = next.isWeek;
                boolean z4 = next.playOnMonday;
                boolean z5 = next.playOnTuesday;
                boolean z6 = next.playOnWednesday;
                boolean z7 = next.playOnThursday;
                boolean z8 = next.playOnFriday;
                boolean z9 = next.playOnSaturday;
                boolean z10 = next.playOnSunday;
                boolean z11 = next.isDate;
                String str3 = next.dateOn;
                String str4 = next.dateOff;
                Iterator<PowerOnOffInfo.PowerOnOffInfoItem> it2 = it;
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    throw new r0.b("kInvalidParams", "time on and off cannot be empty");
                }
                if (z11 && (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4))) {
                    throw new r0.b("kInvalidParams", "date on and off cannot be empty");
                }
                o.d dVar = new o.d();
                dVar.f2820a = str;
                dVar.f2821b = str2;
                dVar.f2822c = z3;
                if (z3) {
                    dVar.f2823d = z4;
                    dVar.f2824e = z5;
                    dVar.f2825f = z6;
                    dVar.f2826g = z7;
                    dVar.f2827h = z8;
                    dVar.f2828i = z9;
                    dVar.f2829j = z10;
                }
                dVar.f2830k = z11;
                if (z11) {
                    dVar.f2831l = str3;
                    dVar.f2832m = str4;
                }
                arrayList.add(dVar);
                it = it2;
            }
        }
        if (jVar.i(arrayList) == null) {
            throw new r0.b("kInternalError", "save config failed");
        }
        r rVar = new r();
        rVar.f1964d = true;
        g3.c.b().f(rVar);
    }

    public void u(Object obj) throws r0.b {
        ScreenOnOffInfo screenOnOffInfo = (ScreenOnOffInfo) q0.a.t(obj, ScreenOnOffInfo.class, "ScreenOnOff");
        j jVar = new j(w0.c.f3777a);
        ArrayList arrayList = new ArrayList();
        if (screenOnOffInfo.ploys.size() > 0) {
            for (ScreenOnOffInfo.ScreenOnOffItem screenOnOffItem : screenOnOffInfo.ploys) {
                String str = screenOnOffItem.on;
                String str2 = screenOnOffItem.off;
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    throw new r0.b("kInvalidParams", "on and off cannot be empty");
                }
                o.e eVar = new o.e();
                eVar.f2834a = screenOnOffItem.on;
                eVar.f2835b = screenOnOffItem.off;
                arrayList.add(eVar);
            }
        }
        if (jVar.j(arrayList) == null) {
            throw new r0.b("kInternalError", "save config failed");
        }
        r rVar = new r();
        rVar.f1963c = true;
        g3.c.b().f(rVar);
    }

    public void v(Object obj) throws r0.b {
        m.r((TimeInfo) q0.a.t(obj, TimeInfo.class, "Time"));
    }

    public void w(Object obj) throws r0.b {
        TimedRebootInfo timedRebootInfo = (TimedRebootInfo) q0.a.t(obj, TimedRebootInfo.class, "TimedReboot");
        if (timedRebootInfo.enable && TextUtils.isEmpty(timedRebootInfo.rebootTime)) {
            throw new r0.b("kInvalidParams", "rebootTime cannot be null");
        }
        n.m mVar = (n.m) m.n(n.m.class);
        mVar.f2683c = timedRebootInfo.enable;
        mVar.f2684d = timedRebootInfo.rebootTime;
        m.o(mVar);
        r rVar = new r();
        rVar.f1966f = true;
        g3.c.b().f(rVar);
    }

    public void x(Object obj) throws r0.b {
        boolean z3;
        VolumeInfo volumeInfo = (VolumeInfo) q0.a.t(obj, VolumeInfo.class, "Volume");
        List<VolumeInfo.VolumeItem> list = volumeInfo.ploys;
        if (list != null && list.size() > 0) {
            z3 = false;
        } else {
            if (TextUtils.isEmpty(volumeInfo.value)) {
                throw new r0.b("kInvalidParams", "no valid volume value and ploys");
            }
            z3 = true;
        }
        j jVar = new j(w0.c.f3777a);
        o.f fVarF = jVar.f();
        if (fVarF == null) {
            fVarF = new o.f();
        }
        fVarF.f2837a = z3;
        if (z3) {
            int i4 = Integer.parseInt(volumeInfo.value);
            if (i4 < 0 || i4 > 100) {
                throw new r0.b("kInvalidParams", "volume out of range (0-100)");
            }
            fVarF.f2838b = i4;
        } else {
            ArrayList arrayList = new ArrayList();
            for (VolumeInfo.VolumeItem volumeItem : volumeInfo.ploys) {
                String str = volumeItem.time;
                int i5 = volumeItem.volume;
                if (TextUtils.isEmpty(str)) {
                    throw new r0.b("kInvalidParams", "time cannot be empty");
                }
                if (i5 < 0 || i5 > 100) {
                    throw new r0.b("kInvalidParams", "volume out of range (0-100)");
                }
                o.a aVar = new o.a();
                aVar.f2804a = str;
                aVar.f2806c = String.valueOf(i5);
                arrayList.add(aVar);
            }
            fVarF.f2839c = arrayList;
        }
        if (jVar.k(fVarF) == null) {
            throw new r0.b("kInternalError", "save config failed");
        }
        if (z3) {
            AudioManager audioManager = (AudioManager) w0.c.f3777a.getSystemService("audio");
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            int i6 = fVarF.f2838b;
            if (cn.huidu.lcd.core.a.f337c == 103) {
                if (i6 >= 0 && i6 <= 100) {
                    streamMaxVolume = i6;
                }
                audioManager.setStreamVolume(3, streamMaxVolume, 0);
            } else {
                if (i6 == 0) {
                    streamMaxVolume = 0;
                } else {
                    if (i6 > 0 && i6 < 60) {
                        i6 /= 6;
                    } else if (i6 >= 60 && i6 < 100) {
                        i6 = (i6 / 6) - 1;
                    }
                    streamMaxVolume = i6;
                }
                audioManager.setStreamVolume(3, streamMaxVolume, 0);
            }
        }
        r rVar = new r();
        rVar.f1961a = true;
        g3.c.b().f(rVar);
    }

    public void y(Object obj) throws r0.b {
        WebLockInfo webLockInfo = (WebLockInfo) q0.a.t(obj, WebLockInfo.class, "WebLock");
        n nVar = (n) m.n(n.class);
        nVar.f2685c = webLockInfo.locked;
        m.o(nVar);
        o oVar = new o();
        oVar.f1955c = true;
        g3.c.b().f(oVar);
    }

    public void z(Object obj) throws r0.b {
        WifiInfo wifiInfo = (WifiInfo) q0.a.t(obj, WifiInfo.class, "WiFi");
        try {
            if ("ap".equals(wifiInfo.mode)) {
                WifiInfo.ApInfo apInfo = wifiInfo.ap;
                if (apInfo == null) {
                    throw new r0.b("kInvalidParams", "ap cannot be null");
                }
                m.s(apInfo);
                return;
            }
            if (!"station".equals(wifiInfo.mode)) {
                throw new r0.b("kInvalidParams", "Invalid wifi mode: " + wifiInfo.mode);
            }
            if (wifiInfo.station == null) {
                throw new r0.b("kInvalidParams", "station cannot be null");
            }
            if (wifiInfo.ap == null) {
                wifiInfo.ap = new WifiInfo.ApInfo();
            }
            WifiInfo.ApInfo apInfo2 = wifiInfo.ap;
            apInfo2.enable = false;
            m.s(apInfo2);
            m.t(wifiInfo.station);
        } catch (Exception e4) {
            throw new r0.b("kInternalError", e4.getMessage());
        }
    }
}
