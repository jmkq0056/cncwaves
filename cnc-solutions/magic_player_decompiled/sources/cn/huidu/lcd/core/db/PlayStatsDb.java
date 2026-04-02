package cn.huidu.lcd.core.db;

import cn.huidu.lcd.core.db.entity.PlayHistory;
import cn.huidu.lcd.core.db.entity.ProgramVisitors;
import cn.huidu.lcd.core.db.greendao.DaoSession;
import cn.huidu.lcd.core.db.greendao.PlayHistoryDao;
import j3.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import n3.g;
import n3.i;

/* JADX INFO: loaded from: classes.dex */
public class PlayStatsDb {
    private static final int MAX_COUNT = 100000;
    private static final int MAX_INSERT_COUNT_BEFORE_CLEAN = 100;
    private static final String TAG = "PlayStatsDb";
    private static int sInsertCount;

    private static synchronized void cleanOnInsert() {
        int i4 = sInsertCount + 1;
        sInsertCount = i4;
        if (i4 >= 100) {
            sInsertCount = 0;
            clearOldData();
        }
    }

    public static void clearOldData() {
        try {
            DaoSession daoSession = DaoManager.getInstance().getDaoSession();
            long jB = daoSession.queryBuilder(PlayHistory.class).b();
            if (jB <= 100000) {
                return;
            }
            g gVarQueryBuilder = daoSession.queryBuilder(PlayHistory.class);
            gVarQueryBuilder.e(" ASC", PlayHistoryDao.Properties.Timestamp);
            gVarQueryBuilder.c((int) (jB - 100000));
            List<PlayHistory> listD = gVarQueryBuilder.d();
            if (listD != null && !listD.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (PlayHistory playHistory : listD) {
                    arrayList.add(playHistory.getId());
                    if (playHistory.getVisitorsId() != null) {
                        arrayList2.add(playHistory.getVisitorsId());
                    }
                }
                daoSession.getPlayHistoryDao().deleteByKeyInTx(arrayList);
                if (arrayList2.isEmpty()) {
                    return;
                }
                daoSession.getProgramVisitorsDao().deleteByKeyInTx(arrayList2);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void deleteAll() {
        try {
            DaoSession daoSession = DaoManager.getInstance().getDaoSession();
            daoSession.deleteAll(PlayHistory.class);
            daoSession.deleteAll(ProgramVisitors.class);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static String getLastProgramId() {
        try {
            g gVarQueryBuilder = DaoManager.getInstance().getDaoSession().queryBuilder(PlayHistory.class);
            gVarQueryBuilder.e(" DESC", PlayHistoryDao.Properties.Id);
            gVarQueryBuilder.f2795g = 0;
            gVarQueryBuilder.c(1);
            List listD = gVarQueryBuilder.d();
            if (listD == null || listD.isEmpty()) {
                return null;
            }
            return ((PlayHistory) listD.get(0)).getUuid();
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static void insert(PlayHistory playHistory, ProgramVisitors programVisitors) {
        try {
            DaoSession daoSession = DaoManager.getInstance().getDaoSession();
            if (programVisitors != null) {
                playHistory.setVisitorsId(Long.valueOf(daoSession.insert(programVisitors)));
            }
            daoSession.insert(playHistory);
            cleanOnInsert();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static List<PlayHistory> query(String str, long j4, long j5, int i4) {
        try {
            g gVarQueryBuilder = DaoManager.getInstance().getDaoSession().queryBuilder(PlayHistory.class);
            if (str != null && str.length() > 0) {
                e eVar = PlayHistoryDao.Properties.Uuid;
                Objects.requireNonNull(eVar);
                gVarQueryBuilder.f(new i.b(eVar, "=?", str), new i[0]);
            }
            if (j4 > 0) {
                gVarQueryBuilder.f(PlayHistoryDao.Properties.Timestamp.a(Long.valueOf(j4)), new i[0]);
            }
            if (j5 > 0) {
                gVarQueryBuilder.f(PlayHistoryDao.Properties.Timestamp.b(Long.valueOf(j5)), new i[0]);
            }
            if (i4 > 0) {
                gVarQueryBuilder.f2794f = Integer.valueOf(i4);
            }
            return gVarQueryBuilder.d();
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
