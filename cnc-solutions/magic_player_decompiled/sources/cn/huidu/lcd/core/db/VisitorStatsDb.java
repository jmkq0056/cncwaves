package cn.huidu.lcd.core.db;

import cn.huidu.lcd.core.db.entity.VisitorStats;
import cn.huidu.lcd.core.db.greendao.DaoSession;
import cn.huidu.lcd.core.db.greendao.VisitorStatsDao;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n3.g;
import n3.i;

/* JADX INFO: loaded from: classes.dex */
public class VisitorStatsDb {
    private static final int MAX_COUNT = 100000;
    private static final int MAX_INSERT_COUNT_BEFORE_CLEAN = 100;
    private static final String TAG = "VisitorStatsDb";
    private static int sInsertCount;

    private static synchronized void cleanOnInsert() {
        int i4 = sInsertCount + 1;
        sInsertCount = i4;
        if (i4 >= 100) {
            sInsertCount = 0;
            clearOldData();
        }
    }

    public static synchronized void clearOldData() {
        try {
            DaoSession daoSession = DaoManager.getInstance().getDaoSession();
            long jB = daoSession.queryBuilder(VisitorStats.class).b();
            if (jB <= 100000) {
                return;
            }
            g gVarQueryBuilder = daoSession.queryBuilder(VisitorStats.class);
            gVarQueryBuilder.e(" ASC", VisitorStatsDao.Properties.Time);
            gVarQueryBuilder.c((int) (jB - 100000));
            List listD = gVarQueryBuilder.d();
            if (listD != null && !listD.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                Iterator it = listD.iterator();
                while (it.hasNext()) {
                    arrayList.add(((VisitorStats) it.next()).getId());
                }
                daoSession.getVisitorStatsDao().deleteByKeyInTx(arrayList);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void deleteAll() {
        try {
            DaoManager.getInstance().getDaoSession().deleteAll(VisitorStats.class);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void insert(VisitorStats visitorStats) {
        try {
            DaoManager.getInstance().getDaoSession().insert(visitorStats);
            cleanOnInsert();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static List<VisitorStats> query(long j4, long j5, int i4) {
        try {
            g gVarQueryBuilder = DaoManager.getInstance().getDaoSession().queryBuilder(VisitorStats.class);
            if (j4 > 0) {
                gVarQueryBuilder.f(VisitorStatsDao.Properties.Time.a(Long.valueOf(j4)), new i[0]);
            }
            if (j5 > 0) {
                gVarQueryBuilder.f(VisitorStatsDao.Properties.Time.b(Long.valueOf(j5)), new i[0]);
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
