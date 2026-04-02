package cn.huidu.lcd.core.db;

import android.support.v4.media.f;
import android.util.Log;
import cn.huidu.lcd.core.db.entity.OperateLog;
import cn.huidu.lcd.core.db.greendao.OperateLogDao;
import j3.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import n3.g;
import n3.i;

/* JADX INFO: loaded from: classes.dex */
public class OperateLogDb {
    private static final int MAX_INSERT_COUNT_BEFORE_CLEAN = 100;
    private static final int MAX_LOG_COUNT = 100000;
    private static final String TAG = "OperateLogDbHelper";
    private static int sInsertCount;

    private static synchronized boolean addInsertCountOrClean() {
        int i4 = sInsertCount + 1;
        sInsertCount = i4;
        if (i4 < 100) {
            return false;
        }
        sInsertCount = 0;
        return true;
    }

    public static void clearOldData() {
        try {
            DaoManager.getInstance().getDatabase().execSQL("delete from OPERATE_LOG where (select count(_id) from OPERATE_LOG) > 100000 and  DATE in (select DATE from OPERATE_LOG order by DATE desc limit  (select count(_id) from OPERATE_LOG) offset 100000)");
        } catch (Exception e4) {
            StringBuilder sbA = f.a("clearOldLog: ");
            sbA.append(e4.getMessage());
            Log.d(TAG, sbA.toString());
        }
    }

    public static void insert(String str, String str2) {
        OperateLog operateLog = new OperateLog();
        operateLog.setOperate(str);
        operateLog.setLog(str2);
        operateLog.setDate(System.currentTimeMillis());
        try {
            DaoManager.getInstance().getDaoSession().insert(operateLog);
            if (addInsertCountOrClean()) {
                clearOldData();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static List<OperateLog> query(int i4) {
        ArrayList arrayList = new ArrayList();
        try {
            g gVarQueryBuilder = DaoManager.getInstance().getDaoSession().queryBuilder(OperateLog.class);
            gVarQueryBuilder.e(" DESC", OperateLogDao.Properties.Date);
            gVarQueryBuilder.f2794f = Integer.valueOf(i4);
            List listD = gVarQueryBuilder.d();
            if (listD != null) {
                arrayList.addAll(listD);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return arrayList;
    }

    public static List<OperateLog> query(long j4, long j5, int i4) {
        ArrayList arrayList = new ArrayList();
        try {
            g gVarQueryBuilder = DaoManager.getInstance().getDaoSession().queryBuilder(OperateLog.class);
            if (j4 > 0 && j5 > 0) {
                e eVar = OperateLogDao.Properties.Date;
                Long lValueOf = Long.valueOf(j4);
                Long lValueOf2 = Long.valueOf(j5);
                Objects.requireNonNull(eVar);
                gVarQueryBuilder.f(new i.b(eVar, " BETWEEN ? AND ?", new Object[]{lValueOf, lValueOf2}), new i[0]);
            } else if (j4 > 0) {
                gVarQueryBuilder.f(OperateLogDao.Properties.Date.a(Long.valueOf(j4)), new i[0]);
            } else if (j5 > 0) {
                gVarQueryBuilder.f(OperateLogDao.Properties.Date.b(Long.valueOf(j5)), new i[0]);
            }
            if (i4 > 0) {
                gVarQueryBuilder.f2794f = Integer.valueOf(i4);
            }
            gVarQueryBuilder.e(" DESC", OperateLogDao.Properties.Date);
            List listD = gVarQueryBuilder.d();
            if (listD != null) {
                arrayList.addAll(listD);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return arrayList;
    }
}
