package v0;

import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import b2.e;
import cn.huidu.lcd.transmit.model.setting.AdvancedSettings;
import cn.huidu.lcd.transmit.model.setting.BrightnessInfo;
import cn.huidu.lcd.transmit.model.setting.DeviceLockInfo;
import cn.huidu.lcd.transmit.model.setting.EthernetInfo;
import cn.huidu.lcd.transmit.model.setting.FaceDetectInfo;
import cn.huidu.lcd.transmit.model.setting.PlayRecordInfo;
import cn.huidu.lcd.transmit.model.setting.PowerOnOffInfo;
import cn.huidu.lcd.transmit.model.setting.ScreenOnOffInfo;
import cn.huidu.lcd.transmit.model.setting.TimeInfo;
import cn.huidu.lcd.transmit.model.setting.TimedRebootInfo;
import cn.huidu.lcd.transmit.model.setting.VolumeInfo;
import cn.huidu.lcd.transmit.model.setting.WifiInfo;
import com.google.android.material.datepicker.UtcDates;
import com.thanosfisherman.wifiutils.wifiConnect.WifiConnectionReceiver;
import com.thanosfisherman.wifiutils.wifiScan.WifiScanReceiver;
import com.thanosfisherman.wifiutils.wifiState.WifiStateReceiver;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import n.o;
import r.e;

/* JADX INFO: loaded from: classes.dex */
public class m {

    public class a implements d2.a {
        @Override // d2.a
        public void a() {
            Log.d("SettingUtils", "connect wifi success: ");
        }

        @Override // d2.a
        public void b(@NonNull com.thanosfisherman.wifiutils.wifiConnect.a aVar) {
            Log.d("SettingUtils", "connect wifi failed: " + aVar);
        }
    }

    public static BrightnessInfo a() {
        Application application = w0.c.f3777a;
        q.b bVar = new q.b(application);
        BrightnessInfo brightnessInfo = new BrightnessInfo();
        boolean z3 = true;
        int iD = bVar.d(bVar.c());
        ArrayList arrayList = new ArrayList();
        o.f fVarC = new q.j(application).c();
        if (fVarC != null) {
            z3 = fVarC.f2837a;
            iD = fVarC.f2838b;
            for (o.a aVar : fVarC.f2839c) {
                BrightnessInfo.LightInfoItem lightInfoItem = new BrightnessInfo.LightInfoItem();
                lightInfoItem.time = aVar.f2804a;
                lightInfoItem.brightness = Integer.parseInt(aVar.f2806c);
                arrayList.add(lightInfoItem);
            }
        }
        brightnessInfo.value = z3 ? String.valueOf(iD) : null;
        if (z3) {
            arrayList = null;
        }
        brightnessInfo.ploys = arrayList;
        return brightnessInfo;
    }

    public static DeviceLockInfo b() {
        n.e eVar = (n.e) n(n.e.class);
        DeviceLockInfo deviceLockInfo = new DeviceLockInfo();
        deviceLockInfo.enable = eVar.f2634c;
        return deviceLockInfo;
    }

    public static EthernetInfo c() {
        f.g gVarA = f.e.a(w0.c.f3777a).a();
        EthernetInfo ethernetInfo = new EthernetInfo();
        ethernetInfo.dhcp = gVarA.f1622a;
        ethernetInfo.ip = gVarA.f1623b;
        ethernetInfo.mask = gVarA.f1624c;
        ethernetInfo.gateway = gVarA.f1625d;
        ethernetInfo.dns = gVarA.f1626e;
        ethernetInfo.mac = q.g.a();
        return ethernetInfo;
    }

    public static FaceDetectInfo d() {
        n.f fVar = (n.f) n(n.f.class);
        FaceDetectInfo faceDetectInfo = new FaceDetectInfo();
        faceDetectInfo.enable = fVar.f2636c;
        faceDetectInfo.cameraCount = 0;
        faceDetectInfo.countVisitors = fVar.f2637d;
        faceDetectInfo.reportVisitors = fVar.f2638e;
        faceDetectInfo.reportInterval = fVar.f2639f;
        if (fVar.f2640g) {
            FaceDetectInfo.PreviewInfo previewInfo = new FaceDetectInfo.PreviewInfo();
            faceDetectInfo.preview = previewInfo;
            previewInfo.width = fVar.f2641h;
            previewInfo.height = fVar.f2642i;
            previewInfo.alignment = fVar.f2643j;
            previewInfo.showFaceRect = fVar.f2644k;
            previewInfo.showFaceInfo = fVar.f2645l;
            previewInfo.showVisitors = fVar.f2646m;
        }
        return faceDetectInfo;
    }

    public static PlayRecordInfo e() {
        n.j jVar = (n.j) n(n.j.class);
        PlayRecordInfo playRecordInfo = new PlayRecordInfo();
        playRecordInfo.enable = jVar.f2660c;
        playRecordInfo.autoReport = jVar.f2661d;
        playRecordInfo.reportTime = jVar.f2662e;
        return playRecordInfo;
    }

    public static PowerOnOffInfo f() throws Throwable {
        q.j jVar = new q.j(w0.c.f3777a);
        PowerOnOffInfo powerOnOffInfo = new PowerOnOffInfo();
        ArrayList arrayList = new ArrayList();
        List<o.d> listD = jVar.d();
        if (listD != null) {
            for (o.d dVar : listD) {
                PowerOnOffInfo.PowerOnOffInfoItem powerOnOffInfoItem = new PowerOnOffInfo.PowerOnOffInfoItem();
                powerOnOffInfoItem.timeOn = dVar.f2820a;
                powerOnOffInfoItem.timeOff = dVar.f2821b;
                powerOnOffInfoItem.isWeek = dVar.f2822c;
                powerOnOffInfoItem.playOnMonday = dVar.f2823d;
                powerOnOffInfoItem.playOnTuesday = dVar.f2824e;
                powerOnOffInfoItem.playOnWednesday = dVar.f2825f;
                powerOnOffInfoItem.playOnThursday = dVar.f2826g;
                powerOnOffInfoItem.playOnFriday = dVar.f2827h;
                powerOnOffInfoItem.playOnSaturday = dVar.f2828i;
                powerOnOffInfoItem.playOnSunday = dVar.f2829j;
                powerOnOffInfoItem.isDate = dVar.f2830k;
                powerOnOffInfoItem.dateOn = dVar.f2831l;
                powerOnOffInfoItem.dateOff = dVar.f2832m;
                arrayList.add(powerOnOffInfoItem);
            }
        }
        powerOnOffInfo.ploys = arrayList;
        return powerOnOffInfo;
    }

    public static ScreenOnOffInfo g() throws Throwable {
        q.j jVar = new q.j(w0.c.f3777a);
        ScreenOnOffInfo screenOnOffInfo = new ScreenOnOffInfo();
        ArrayList arrayList = new ArrayList();
        List<o.e> listE = jVar.e();
        if (listE != null) {
            for (o.e eVar : listE) {
                ScreenOnOffInfo.ScreenOnOffItem screenOnOffItem = new ScreenOnOffInfo.ScreenOnOffItem();
                screenOnOffItem.on = eVar.f2834a;
                screenOnOffItem.off = eVar.f2835b;
                arrayList.add(screenOnOffItem);
            }
        }
        screenOnOffInfo.ploys = arrayList;
        return screenOnOffInfo;
    }

    public static TimeInfo h() {
        n.l lVar = (n.l) n(n.l.class);
        boolean z3 = lVar.f2672c;
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        String str = simpleDateFormat.format(date);
        TimeZone timeZone = TimeZone.getDefault();
        String id = timeZone.getID();
        String strK = h.a.k(timeZone.getOffset(date.getTime()));
        String strK2 = h.a.k(timeZone.getRawOffset());
        TimeInfo.NtpInfo ntpInfo = new TimeInfo.NtpInfo();
        ArrayList arrayList = new ArrayList();
        ntpInfo.ntpHost = arrayList;
        arrayList.add(lVar.f2674e);
        ntpInfo.correctInterval = lVar.f2675f;
        TimeInfo.RFInfo rFInfo = new TimeInfo.RFInfo();
        rFInfo.syncInterDevice = lVar.f2678i;
        rFInfo.channel = lVar.f2679j;
        rFInfo.groupNo = lVar.f2680k;
        rFInfo.certainty = lVar.f2681l;
        e.b bVar = r.e.d().f3349j;
        TimeInfo.NtpTimeInfo ntpTimeInfo = new TimeInfo.NtpTimeInfo();
        ntpTimeInfo.refHost = bVar.f3354a;
        ntpTimeInfo.time = bVar.f3355b;
        ntpTimeInfo.certainty = bVar.f3357d;
        TimeInfo timeInfo = new TimeInfo();
        timeInfo.auto = z3;
        int i4 = lVar.f2682m;
        timeInfo.sync = i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? i4 != 5 ? null : "rf" : "gps" : "mutual" : "ntp" : "auto" : "none";
        timeInfo.dateTime = str;
        TimeInfo.TimeZone timeZone2 = new TimeInfo.TimeZone();
        timeInfo.timeZone = timeZone2;
        timeZone2.timeZoneId = id;
        timeZone2.timeZoneOffset = androidx.appcompat.view.a.a(UtcDates.UTC, strK);
        timeInfo.timeZone.rawOffset = androidx.appcompat.view.a.a(UtcDates.UTC, strK2);
        timeInfo.ntp = ntpInfo;
        timeInfo.syncInterDevice = Integer.valueOf(lVar.f2676g);
        timeInfo.lastUpdate = ntpTimeInfo;
        timeInfo.rfEnable = lVar.f2677h;
        timeInfo.rfInfo = rFInfo;
        return timeInfo;
    }

    public static TimedRebootInfo i() {
        n.m mVar = (n.m) n(n.m.class);
        TimedRebootInfo timedRebootInfo = new TimedRebootInfo();
        timedRebootInfo.enable = mVar.f2683c;
        timedRebootInfo.rebootTime = mVar.f2684d;
        return timedRebootInfo;
    }

    public static VolumeInfo j() {
        Application application = w0.c.f3777a;
        AudioManager audioManager = (AudioManager) application.getSystemService("audio");
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        VolumeInfo volumeInfo = new VolumeInfo();
        boolean z3 = true;
        int streamVolume = audioManager != null ? audioManager.getStreamVolume(3) : 0;
        if (cn.huidu.lcd.core.a.f337c != 103) {
            streamMaxVolume = streamVolume < 16 ? new int[]{0, 6, 13, 20, 26, 33, 40, 46, 53, 60, 66, 73, 80, 86, 93, 100}[streamVolume] : 100;
        } else if (streamVolume >= 0 && streamVolume <= 100) {
            streamMaxVolume = streamVolume;
        }
        ArrayList arrayList = new ArrayList();
        o.f fVarF = new q.j(application).f();
        if (fVarF != null) {
            z3 = fVarF.f2837a;
            streamMaxVolume = fVarF.f2838b;
            for (o.a aVar : fVarF.f2839c) {
                VolumeInfo.VolumeItem volumeItem = new VolumeInfo.VolumeItem();
                volumeItem.time = aVar.f2804a;
                volumeItem.volume = Integer.parseInt(aVar.f2806c);
                arrayList.add(volumeItem);
            }
        }
        volumeInfo.value = z3 ? String.valueOf(streamMaxVolume) : null;
        if (z3) {
            arrayList = null;
        }
        volumeInfo.ploys = arrayList;
        return volumeInfo;
    }

    public static WifiInfo.ApInfo k(o oVar) {
        WifiInfo.ApInfo apInfo = new WifiInfo.ApInfo();
        boolean z3 = oVar.f2686c;
        apInfo.enable = z3;
        if (z3) {
            apInfo.ssid = oVar.f2687d;
            if (oVar.f2688e == 0) {
                apInfo.enableRandomPwd = Boolean.TRUE;
                apInfo.password = oVar.f2691h;
                apInfo.pwdResetMinutes = Integer.valueOf(oVar.f2689f);
            } else {
                apInfo.password = oVar.f2690g;
            }
            int i4 = oVar.f2692i;
            apInfo.icon = i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? null : "right|bottom" : "right|top" : "left|bottom" : "left|top";
        }
        return apInfo;
    }

    public static WifiInfo l() {
        WifiInfo wifiInfo = new WifiInfo();
        try {
            o oVar = (o) n(o.class);
            if (oVar.f2686c) {
                wifiInfo.mode = "ap";
            } else {
                wifiInfo.mode = "station";
            }
            wifiInfo.ap = k(oVar);
            wifiInfo.station = m();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return wifiInfo;
    }

    public static WifiInfo.StationInfo m() {
        WifiInfo.StationInfo stationInfo = new WifiInfo.StationInfo();
        WifiManager wifiManager = (WifiManager) w0.c.f3777a.getApplicationContext().getSystemService("wifi");
        stationInfo.enable = wifiManager.isWifiEnabled();
        android.net.wifi.WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        if (connectionInfo == null) {
            return stationInfo;
        }
        String ssid = connectionInfo.getSSID();
        if ("<unknown ssid>".equals(ssid)) {
            stationInfo.ssid = "";
        } else if (ssid == null || ssid.length() <= 2 || !ssid.startsWith("\"") || !ssid.endsWith("\"")) {
            stationInfo.ssid = ssid;
        } else {
            stationInfo.ssid = ssid.substring(1, ssid.length() - 1);
        }
        stationInfo.ip = h.a.i(connectionInfo.getIpAddress());
        DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
        stationInfo.dhcp = Boolean.valueOf(dhcpInfo.leaseDuration != 0);
        stationInfo.mask = h.a.i(dhcpInfo.netmask);
        stationInfo.gateway = h.a.i(dhcpInfo.gateway);
        stationInfo.dns = h.a.i(dhcpInfo.dns1);
        stationInfo.mac = connectionInfo.getMacAddress();
        return stationInfo;
    }

    public static <T extends n.b> T n(Class<T> cls) {
        return (T) l.b.c().a(cls);
    }

    public static void o(n.b bVar) throws r0.b {
        if (!l.b.c().d(bVar)) {
            throw new r0.b("kInternalError", "save config failed");
        }
    }

    public static void p(AdvancedSettings advancedSettings) throws r0.b {
        if (!TextUtils.isEmpty(advancedSettings.deviceName)) {
            n.d dVar = (n.d) n(n.d.class);
            dVar.f2631c = advancedSettings.deviceName;
            l.c.a().i(advancedSettings.deviceName);
            o(dVar);
        }
        n.a aVar = (n.a) n(n.a.class);
        if (!TextUtils.isEmpty(advancedSettings.storageLocation)) {
            int iIndexOf = Arrays.asList("local", "sdcard", "usb").indexOf(advancedSettings.storageLocation);
            if (iIndexOf == -1) {
                throw new r0.b("kInvalidParams", "illegal storageLocation type");
            }
            aVar.f2606c = iIndexOf;
            l.l.e().i(iIndexOf);
        }
        if (!TextUtils.isEmpty(advancedSettings.screenRotation)) {
            int iIndexOf2 = Arrays.asList("0", "90", "180", "270").indexOf(advancedSettings.screenRotation);
            if (iIndexOf2 == -1) {
                throw new r0.b("kInvalidParams", "illegal screenRotation type");
            }
            aVar.f2607d = iIndexOf2;
        }
        j.c cVar = new j.c();
        Boolean bool = advancedSettings.dlna;
        boolean z3 = true;
        if (bool != null && bool.booleanValue() != aVar.f2617n) {
            cVar.f1932a = true;
            aVar.f2617n = advancedSettings.dlna.booleanValue();
            l.c cVarA = l.c.a();
            boolean zBooleanValue = advancedSettings.dlna.booleanValue();
            synchronized (cVarA) {
                cVarA.L = zBooleanValue;
            }
        }
        Boolean bool2 = advancedSettings.miracast;
        if (bool2 != null && bool2.booleanValue() != aVar.f2618o) {
            cVar.f1933b = true;
            aVar.f2618o = advancedSettings.miracast.booleanValue();
            l.c cVarA2 = l.c.a();
            boolean zBooleanValue2 = advancedSettings.miracast.booleanValue();
            synchronized (cVarA2) {
                cVarA2.M = zBooleanValue2;
            }
        }
        Boolean bool3 = advancedSettings.airPlay;
        if (bool3 != null && bool3.booleanValue() != aVar.f2619p) {
            cVar.f1934c = true;
            aVar.f2619p = advancedSettings.airPlay.booleanValue();
            l.c cVarA3 = l.c.a();
            boolean zBooleanValue3 = advancedSettings.airPlay.booleanValue();
            synchronized (cVarA3) {
                cVarA3.N = zBooleanValue3;
            }
        }
        o(aVar);
        if (!cVar.f1932a && !cVar.f1933b && !cVar.f1934c) {
            z3 = false;
        }
        if (z3) {
            g3.c.b().f(cVar);
        }
    }

    public static void q(DeviceLockInfo deviceLockInfo) throws r0.b {
        n.e eVar = (n.e) n(n.e.class);
        boolean z3 = deviceLockInfo.enable;
        eVar.f2634c = z3;
        if (z3) {
            eVar.f2635d = deviceLockInfo.password;
        }
        o(eVar);
        l.c cVarA = l.c.a();
        boolean z4 = deviceLockInfo.enable;
        String str = deviceLockInfo.password;
        if (z4 == cVarA.f2319y && (str == null || str.equals(cVarA.f2320z))) {
            return;
        }
        cVarA.f2319y = z4;
        cVarA.f2320z = str;
        cVarA.d();
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void r(cn.huidu.lcd.transmit.model.setting.TimeInfo r11) throws r0.b {
        /*
            Method dump skipped, instruction units count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.m.r(cn.huidu.lcd.transmit.model.setting.TimeInfo):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void s(cn.huidu.lcd.transmit.model.setting.WifiInfo.ApInfo r9) throws r0.b {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.m.s(cn.huidu.lcd.transmit.model.setting.WifiInfo$ApInfo):void");
    }

    public static void t(WifiInfo.StationInfo stationInfo) {
        if (!stationInfo.enable) {
            ((WifiManager) w0.c.f3777a.getApplicationContext().getSystemService("wifi")).setWifiEnabled(false);
            return;
        }
        if (TextUtils.isEmpty(stationInfo.ssid) || TextUtils.isEmpty(stationInfo.password)) {
            return;
        }
        Application application = w0.c.f3777a;
        b2.e eVar = new b2.e(application);
        String str = stationInfo.ssid;
        String str2 = stationInfo.password;
        eVar.f250g = str;
        eVar.f251h = str2;
        eVar.f246c = 10000L;
        eVar.f248e.f1396d = 10000L;
        eVar.f253j = new a();
        WifiStateReceiver wifiStateReceiver = eVar.f247d;
        if (wifiStateReceiver != null) {
            try {
                application.unregisterReceiver(wifiStateReceiver);
            } catch (IllegalArgumentException unused) {
            }
        }
        Context context = eVar.f245b;
        WifiScanReceiver wifiScanReceiver = eVar.f249f;
        if (wifiScanReceiver != null) {
            try {
                context.unregisterReceiver(wifiScanReceiver);
            } catch (IllegalArgumentException unused2) {
            }
        }
        Context context2 = eVar.f245b;
        WifiConnectionReceiver wifiConnectionReceiver = eVar.f248e;
        if (wifiConnectionReceiver != null) {
            try {
                context2.unregisterReceiver(wifiConnectionReceiver);
            } catch (IllegalArgumentException unused3) {
            }
        }
        eVar.f254k = null;
        if (eVar.f244a.isWifiEnabled()) {
            ((e.a) eVar.f255l).a();
            return;
        }
        if (!eVar.f244a.setWifiEnabled(true)) {
            ((e.c) eVar.f256m).a(com.thanosfisherman.wifiutils.wifiConnect.a.COULD_NOT_ENABLE_WIFI);
            return;
        }
        Context context3 = eVar.f245b;
        WifiStateReceiver wifiStateReceiver2 = eVar.f247d;
        IntentFilter intentFilter = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");
        if (wifiStateReceiver2 != null) {
            try {
                context3.registerReceiver(wifiStateReceiver2, intentFilter);
            } catch (Exception unused4) {
            }
        }
    }
}
