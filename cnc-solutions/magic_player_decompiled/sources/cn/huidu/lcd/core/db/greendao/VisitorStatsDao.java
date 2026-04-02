package cn.huidu.lcd.core.db.greendao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.media.f;
import android.support.v4.media.h;
import cn.huidu.lcd.core.db.entity.VisitorStats;
import j3.a;
import j3.e;
import org.greenrobot.greendao.database.c;
import t1.b;

/* JADX INFO: loaded from: classes.dex */
public class VisitorStatsDao extends a<VisitorStats, Long> {
    public static final String TABLENAME = "VISITOR_STATS";

    public static class Properties {
        public static final e Child;
        public static final e Duration;
        public static final e Female;
        public static final e Male;
        public static final e Middle;
        public static final e Old;
        public static final e T1;
        public static final e T2;
        public static final e T3;
        public static final e T4;
        public static final e Young;
        public static final e Id = new e(0, Long.class, "id", true, "_id");
        public static final e Time = new e(1, Long.TYPE, "time", false, "TIME");

        static {
            Class cls = Integer.TYPE;
            Duration = new e(2, cls, "duration", false, "DURATION");
            Male = new e(3, cls, "male", false, "MALE");
            Female = new e(4, cls, "female", false, "FEMALE");
            Child = new e(5, cls, "child", false, "CHILD");
            Young = new e(6, cls, "young", false, "YOUNG");
            Middle = new e(7, cls, "middle", false, "MIDDLE");
            Old = new e(8, cls, "old", false, "OLD");
            T1 = new e(9, cls, "t1", false, "T1");
            T2 = new e(10, cls, "t2", false, "T2");
            T3 = new e(11, cls, "t3", false, "T3");
            T4 = new e(12, cls, "t4", false, "T4");
        }
    }

    public VisitorStatsDao(m3.a aVar) {
        super(aVar);
    }

    public static void createTable(org.greenrobot.greendao.database.a aVar, boolean z3) {
        ((b) aVar).r(h.a("CREATE TABLE ", z3 ? "IF NOT EXISTS " : "", "\"VISITOR_STATS\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"TIME\" INTEGER NOT NULL ,\"DURATION\" INTEGER NOT NULL ,\"MALE\" INTEGER NOT NULL ,\"FEMALE\" INTEGER NOT NULL ,\"CHILD\" INTEGER NOT NULL ,\"YOUNG\" INTEGER NOT NULL ,\"MIDDLE\" INTEGER NOT NULL ,\"OLD\" INTEGER NOT NULL ,\"T1\" INTEGER NOT NULL ,\"T2\" INTEGER NOT NULL ,\"T3\" INTEGER NOT NULL ,\"T4\" INTEGER NOT NULL );"));
    }

    public static void dropTable(org.greenrobot.greendao.database.a aVar, boolean z3) {
        ((b) aVar).r(android.support.v4.media.b.a(f.a("DROP TABLE "), z3 ? "IF EXISTS " : "", "\"VISITOR_STATS\""));
    }

    @Override // j3.a
    public final boolean isEntityUpdateable() {
        return true;
    }

    public VisitorStatsDao(m3.a aVar, DaoSession daoSession) {
        super(aVar, daoSession);
    }

    @Override // j3.a
    public Long getKey(VisitorStats visitorStats) {
        if (visitorStats != null) {
            return visitorStats.getId();
        }
        return null;
    }

    @Override // j3.a
    public boolean hasKey(VisitorStats visitorStats) {
        return visitorStats.getId() != null;
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
    public final Long updateKeyAfterInsert(VisitorStats visitorStats, long j4) {
        visitorStats.setId(Long.valueOf(j4));
        return Long.valueOf(j4);
    }

    @Override // j3.a
    public final void bindValues(c cVar, VisitorStats visitorStats) {
        b bVar = (b) cVar;
        bVar.i();
        Long id = visitorStats.getId();
        if (id != null) {
            bVar.e(1, id.longValue());
        }
        bVar.e(2, visitorStats.getTime());
        bVar.e(3, visitorStats.getDuration());
        bVar.e(4, visitorStats.getMale());
        bVar.e(5, visitorStats.getFemale());
        bVar.e(6, visitorStats.getChild());
        bVar.e(7, visitorStats.getYoung());
        bVar.e(8, visitorStats.getMiddle());
        bVar.e(9, visitorStats.getOld());
        bVar.e(10, visitorStats.getT1());
        bVar.e(11, visitorStats.getT2());
        bVar.e(12, visitorStats.getT3());
        bVar.e(13, visitorStats.getT4());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // j3.a
    public VisitorStats readEntity(Cursor cursor, int i4) {
        int i5 = i4 + 0;
        return new VisitorStats(cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5)), cursor.getLong(i4 + 1), cursor.getInt(i4 + 2), cursor.getInt(i4 + 3), cursor.getInt(i4 + 4), cursor.getInt(i4 + 5), cursor.getInt(i4 + 6), cursor.getInt(i4 + 7), cursor.getInt(i4 + 8), cursor.getInt(i4 + 9), cursor.getInt(i4 + 10), cursor.getInt(i4 + 11), cursor.getInt(i4 + 12));
    }

    @Override // j3.a
    public void readEntity(Cursor cursor, VisitorStats visitorStats, int i4) {
        int i5 = i4 + 0;
        visitorStats.setId(cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5)));
        visitorStats.setTime(cursor.getLong(i4 + 1));
        visitorStats.setDuration(cursor.getInt(i4 + 2));
        visitorStats.setMale(cursor.getInt(i4 + 3));
        visitorStats.setFemale(cursor.getInt(i4 + 4));
        visitorStats.setChild(cursor.getInt(i4 + 5));
        visitorStats.setYoung(cursor.getInt(i4 + 6));
        visitorStats.setMiddle(cursor.getInt(i4 + 7));
        visitorStats.setOld(cursor.getInt(i4 + 8));
        visitorStats.setT1(cursor.getInt(i4 + 9));
        visitorStats.setT2(cursor.getInt(i4 + 10));
        visitorStats.setT3(cursor.getInt(i4 + 11));
        visitorStats.setT4(cursor.getInt(i4 + 12));
    }

    @Override // j3.a
    public final void bindValues(SQLiteStatement sQLiteStatement, VisitorStats visitorStats) {
        sQLiteStatement.clearBindings();
        Long id = visitorStats.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, visitorStats.getTime());
        sQLiteStatement.bindLong(3, visitorStats.getDuration());
        sQLiteStatement.bindLong(4, visitorStats.getMale());
        sQLiteStatement.bindLong(5, visitorStats.getFemale());
        sQLiteStatement.bindLong(6, visitorStats.getChild());
        sQLiteStatement.bindLong(7, visitorStats.getYoung());
        sQLiteStatement.bindLong(8, visitorStats.getMiddle());
        sQLiteStatement.bindLong(9, visitorStats.getOld());
        sQLiteStatement.bindLong(10, visitorStats.getT1());
        sQLiteStatement.bindLong(11, visitorStats.getT2());
        sQLiteStatement.bindLong(12, visitorStats.getT3());
        sQLiteStatement.bindLong(13, visitorStats.getT4());
    }
}
