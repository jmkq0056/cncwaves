package v0;

import cn.huidu.lcd.core.db.PlayStatsDb;
import cn.huidu.lcd.core.db.VisitorStatsDb;
import cn.huidu.lcd.core.db.entity.PlayHistory;
import cn.huidu.lcd.core.db.entity.ProgramVisitors;
import cn.huidu.lcd.core.db.entity.VisitorStats;
import cn.huidu.lcd.transmit.model.readback.GetOperateLogOptions;
import cn.huidu.lcd.transmit.model.readback.GetPlayStatsOptions;
import cn.huidu.lcd.transmit.model.readback.PlayStatsInfo;
import cn.huidu.lcd.transmit.model.readback.VisitorStatsInfo;
import java.io.File;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class j {
    public static List<PlayStatsInfo> a(GetPlayStatsOptions getPlayStatsOptions) {
        long time;
        ProgramVisitors visitors;
        long time2 = 0;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            String str = getPlayStatsOptions.startDate;
            time = str != null ? simpleDateFormat.parse(str).getTime() : 0L;
            try {
                String str2 = getPlayStatsOptions.endDate;
                if (str2 != null) {
                    time2 = simpleDateFormat.parse(str2).getTime();
                }
            } catch (Exception e4) {
                e = e4;
                e.printStackTrace();
            }
        } catch (Exception e5) {
            e = e5;
            time = 0;
        }
        long j4 = time2;
        ArrayList arrayList = new ArrayList();
        List<PlayHistory> listQuery = PlayStatsDb.query(getPlayStatsOptions.uuid, time, j4, getPlayStatsOptions.limit);
        if (listQuery != null) {
            for (int i4 = 0; i4 < listQuery.size(); i4++) {
                PlayHistory playHistory = listQuery.get(i4);
                PlayStatsInfo playStatsInfo = new PlayStatsInfo();
                playStatsInfo.uuid = playHistory.getUuid();
                playStatsInfo.time = playHistory.getTimestamp();
                playStatsInfo.duration = playHistory.getDuration();
                playStatsInfo.ver = playHistory.getVersion();
                if (getPlayStatsOptions.location && playHistory.getLat() != 0.0d && playHistory.getLng() != 0.0d) {
                    playStatsInfo.lat = Double.valueOf(playHistory.getLat());
                    playStatsInfo.lng = Double.valueOf(playHistory.getLng());
                }
                if (getPlayStatsOptions.visitors && (visitors = playHistory.getVisitors()) != null) {
                    if (visitors.getFemale() + visitors.getMale() > 0) {
                        PlayStatsInfo.VisitorInfo visitorInfo = new PlayStatsInfo.VisitorInfo();
                        playStatsInfo.visitors = visitorInfo;
                        visitorInfo.byGender = visitors.getMale() + "," + visitors.getFemale();
                        playStatsInfo.visitors.byAge = visitors.getChild() + "," + visitors.getYoung() + "," + visitors.getMiddle() + "," + visitors.getOld();
                        playStatsInfo.visitors.byStayTime = visitors.getT1() + "," + visitors.getT2() + "," + visitors.getT3() + "," + visitors.getT4();
                    }
                }
                arrayList.add(playStatsInfo);
            }
        }
        return arrayList;
    }

    public static List<VisitorStatsInfo> b(GetOperateLogOptions getOperateLogOptions) {
        long time;
        long time2 = 0;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            String str = getOperateLogOptions.startDate;
            time = str != null ? simpleDateFormat.parse(str).getTime() : 0L;
            try {
                String str2 = getOperateLogOptions.endDate;
                if (str2 != null) {
                    time2 = simpleDateFormat.parse(str2).getTime();
                }
            } catch (ParseException e4) {
                e = e4;
                e.printStackTrace();
            }
        } catch (ParseException e5) {
            e = e5;
            time = 0;
        }
        ArrayList arrayList = new ArrayList();
        List<VisitorStats> listQuery = VisitorStatsDb.query(time, time2, getOperateLogOptions.limit);
        if (listQuery != null) {
            for (int i4 = 0; i4 < listQuery.size(); i4++) {
                VisitorStats visitorStats = listQuery.get(i4);
                VisitorStatsInfo visitorStatsInfo = new VisitorStatsInfo();
                visitorStatsInfo.time = visitorStats.getTime();
                visitorStatsInfo.duration = visitorStats.getDuration();
                visitorStatsInfo.byGender = visitorStats.getMale() + "," + visitorStats.getFemale();
                visitorStatsInfo.byAge = visitorStats.getChild() + "," + visitorStats.getYoung() + "," + visitorStats.getMiddle() + "," + visitorStats.getOld();
                visitorStatsInfo.byStayTime = visitorStats.getT1() + "," + visitorStats.getT2() + "," + visitorStats.getT3() + "," + visitorStats.getT4();
                arrayList.add(visitorStatsInfo);
            }
        }
        return arrayList;
    }

    public static <T> File c(List<T> list, String str) throws Throwable {
        ZipOutputStream zipOutputStream;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            if (arrayList2.size() >= 5000) {
                arrayList.add(arrayList2);
                arrayList2 = new ArrayList();
            }
            arrayList2.add(list.get(i5));
        }
        arrayList.add(arrayList2);
        File file = new File(l.e.q(), str);
        try {
            try {
                zipOutputStream = new ZipOutputStream(new FileOutputStream(file));
                while (i4 < arrayList.size()) {
                    try {
                        String strY = q0.a.y(arrayList.get(i4));
                        StringBuilder sb = new StringBuilder();
                        i4++;
                        sb.append(i4);
                        sb.append(".json");
                        zipOutputStream.putNextEntry(new ZipEntry(sb.toString()));
                        zipOutputStream.write(strY.getBytes());
                        zipOutputStream.closeEntry();
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                        throw new r0.b("kInternalError", "zip error: " + e.getMessage());
                    } catch (Throwable th) {
                        th = th;
                        l.e.B(zipOutputStream);
                        throw th;
                    }
                }
                l.e.B(zipOutputStream);
                return file;
            } catch (Throwable th2) {
                th = th2;
                zipOutputStream = null;
            }
        } catch (Exception e5) {
            e = e5;
        }
    }
}
