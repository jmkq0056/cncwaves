package cn.huidu.lcd.core.db.greendao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.media.f;
import android.support.v4.media.h;
import cn.huidu.lcd.core.db.entity.OperateLog;
import j3.a;
import j3.e;
import org.greenrobot.greendao.database.c;
import t1.b;

/* JADX INFO: loaded from: classes.dex */
public class OperateLogDao extends a<OperateLog, Long> {
    public static final String TABLENAME = "OPERATE_LOG";

    public static class Properties {
        public static final e Id = new e(0, Long.class, "id", true, "_id");
        public static final e Operate = new e(1, String.class, "operate", false, "OPERATE");
        public static final e Log = new e(2, String.class, "log", false, "LOG");
        public static final e Date = new e(3, Long.TYPE, "date", false, "DATE");
    }

    public OperateLogDao(m3.a aVar) {
        super(aVar);
    }

    public static void createTable(org.greenrobot.greendao.database.a aVar, boolean z3) {
        ((b) aVar).r(h.a("CREATE TABLE ", z3 ? "IF NOT EXISTS " : "", "\"OPERATE_LOG\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"OPERATE\" TEXT,\"LOG\" TEXT,\"DATE\" INTEGER NOT NULL );"));
    }

    public static void dropTable(org.greenrobot.greendao.database.a aVar, boolean z3) {
        ((b) aVar).r(android.support.v4.media.b.a(f.a("DROP TABLE "), z3 ? "IF EXISTS " : "", "\"OPERATE_LOG\""));
    }

    @Override // j3.a
    public final boolean isEntityUpdateable() {
        return true;
    }

    public OperateLogDao(m3.a aVar, DaoSession daoSession) {
        super(aVar, daoSession);
    }

    @Override // j3.a
    public Long getKey(OperateLog operateLog) {
        if (operateLog != null) {
            return operateLog.getId();
        }
        return null;
    }

    @Override // j3.a
    public boolean hasKey(OperateLog operateLog) {
        return operateLog.getId() != null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // j3.a
    public Long readKey(Cursor cursor, int i4) {
        int i5 = i4 + 0;
        if (cursor.isNull(i5)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i5));
    }

    @Override // j3.a
    public final Long updateKeyAfterInsert(OperateLog operateLog, long j4) {
        operateLog.setId(Long.valueOf(j4));
        return Long.valueOf(j4);
    }

    @Override // j3.a
    public final void bindValues(c cVar, OperateLog operateLog) {
        b bVar = (b) cVar;
        bVar.i();
        Long id = operateLog.getId();
        if (id != null) {
            bVar.e(1, id.longValue());
        }
        String operate = operateLog.getOperate();
        if (operate != null) {
            bVar.g(2, operate);
        }
        String log = operateLog.getLog();
        if (log != null) {
            bVar.g(3, log);
        }
        bVar.e(4, operateLog.getDate());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // j3.a
    public OperateLog readEntity(Cursor cursor, int i4) {
        int i5 = i4 + 0;
        Long lValueOf = cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5));
        int i6 = i4 + 1;
        String string = cursor.isNull(i6) ? null : cursor.getString(i6);
        int i7 = i4 + 2;
        return new OperateLog(lValueOf, string, cursor.isNull(i7) ? null : cursor.getString(i7), cursor.getLong(i4 + 3));
    }

    @Override // j3.a
    public void readEntity(Cursor cursor, OperateLog operateLog, int i4) {
        int i5 = i4 + 0;
        operateLog.setId(cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5)));
        int i6 = i4 + 1;
        operateLog.setOperate(cursor.isNull(i6) ? null : cursor.getString(i6));
        int i7 = i4 + 2;
        operateLog.setLog(cursor.isNull(i7) ? null : cursor.getString(i7));
        operateLog.setDate(cursor.getLong(i4 + 3));
    }

    @Override // j3.a
    public final void bindValues(SQLiteStatement sQLiteStatement, OperateLog operateLog) {
        sQLiteStatement.clearBindings();
        Long id = operateLog.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String operate = operateLog.getOperate();
        if (operate != null) {
            sQLiteStatement.bindString(2, operate);
        }
        String log = operateLog.getLog();
        if (log != null) {
            sQLiteStatement.bindString(3, log);
        }
        sQLiteStatement.bindLong(4, operateLog.getDate());
    }
}
