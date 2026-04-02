package cn.huidu.lcd.core.db.greendao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.media.f;
import android.support.v4.media.h;
import cn.huidu.lcd.core.db.entity.ProgramVisitors;
import j3.a;
import j3.e;
import org.greenrobot.greendao.database.c;
import t1.b;

/* JADX INFO: loaded from: classes.dex */
public class ProgramVisitorsDao extends a<ProgramVisitors, Long> {
    public static final String TABLENAME = "PROGRAM_VISITORS";

    public static class Properties {
        public static final e Child;
        public static final e Female;
        public static final e Id = new e(0, Long.class, "id", true, "_id");
        public static final e Male;
        public static final e Middle;
        public static final e Old;
        public static final e T1;
        public static final e T2;
        public static final e T3;
        public static final e T4;
        public static final e Young;

        static {
            Class cls = Integer.TYPE;
            Male = new e(1, cls, "male", false, "MALE");
            Female = new e(2, cls, "female", false, "FEMALE");
            Child = new e(3, cls, "child", false, "CHILD");
            Young = new e(4, cls, "young", false, "YOUNG");
            Middle = new e(5, cls, "middle", false, "MIDDLE");
            Old = new e(6, cls, "old", false, "OLD");
            T1 = new e(7, cls, "t1", false, "T1");
            T2 = new e(8, cls, "t2", false, "T2");
            T3 = new e(9, cls, "t3", false, "T3");
            T4 = new e(10, cls, "t4", false, "T4");
        }
    }

    public ProgramVisitorsDao(m3.a aVar) {
        super(aVar);
    }

    public static void createTable(org.greenrobot.greendao.database.a aVar, boolean z3) {
        ((b) aVar).r(h.a("CREATE TABLE ", z3 ? "IF NOT EXISTS " : "", "\"PROGRAM_VISITORS\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"MALE\" INTEGER NOT NULL ,\"FEMALE\" INTEGER NOT NULL ,\"CHILD\" INTEGER NOT NULL ,\"YOUNG\" INTEGER NOT NULL ,\"MIDDLE\" INTEGER NOT NULL ,\"OLD\" INTEGER NOT NULL ,\"T1\" INTEGER NOT NULL ,\"T2\" INTEGER NOT NULL ,\"T3\" INTEGER NOT NULL ,\"T4\" INTEGER NOT NULL );"));
    }

    public static void dropTable(org.greenrobot.greendao.database.a aVar, boolean z3) {
        ((b) aVar).r(android.support.v4.media.b.a(f.a("DROP TABLE "), z3 ? "IF EXISTS " : "", "\"PROGRAM_VISITORS\""));
    }

    @Override // j3.a
    public final boolean isEntityUpdateable() {
        return true;
    }

    public ProgramVisitorsDao(m3.a aVar, DaoSession daoSession) {
        super(aVar, daoSession);
    }

    @Override // j3.a
    public Long getKey(ProgramVisitors programVisitors) {
        if (programVisitors != null) {
            return programVisitors.getId();
        }
        return null;
    }

    @Override // j3.a
    public boolean hasKey(ProgramVisitors programVisitors) {
        return programVisitors.getId() != null;
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
    public final Long updateKeyAfterInsert(ProgramVisitors programVisitors, long j4) {
        programVisitors.setId(Long.valueOf(j4));
        return Long.valueOf(j4);
    }

    @Override // j3.a
    public final void bindValues(c cVar, ProgramVisitors programVisitors) {
        b bVar = (b) cVar;
        bVar.i();
        Long id = programVisitors.getId();
        if (id != null) {
            bVar.e(1, id.longValue());
        }
        bVar.e(2, programVisitors.getMale());
        bVar.e(3, programVisitors.getFemale());
        bVar.e(4, programVisitors.getChild());
        bVar.e(5, programVisitors.getYoung());
        bVar.e(6, programVisitors.getMiddle());
        bVar.e(7, programVisitors.getOld());
        bVar.e(8, programVisitors.getT1());
        bVar.e(9, programVisitors.getT2());
        bVar.e(10, programVisitors.getT3());
        bVar.e(11, programVisitors.getT4());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // j3.a
    public ProgramVisitors readEntity(Cursor cursor, int i4) {
        int i5 = i4 + 0;
        return new ProgramVisitors(cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5)), cursor.getInt(i4 + 1), cursor.getInt(i4 + 2), cursor.getInt(i4 + 3), cursor.getInt(i4 + 4), cursor.getInt(i4 + 5), cursor.getInt(i4 + 6), cursor.getInt(i4 + 7), cursor.getInt(i4 + 8), cursor.getInt(i4 + 9), cursor.getInt(i4 + 10));
    }

    @Override // j3.a
    public void readEntity(Cursor cursor, ProgramVisitors programVisitors, int i4) {
        int i5 = i4 + 0;
        programVisitors.setId(cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5)));
        programVisitors.setMale(cursor.getInt(i4 + 1));
        programVisitors.setFemale(cursor.getInt(i4 + 2));
        programVisitors.setChild(cursor.getInt(i4 + 3));
        programVisitors.setYoung(cursor.getInt(i4 + 4));
        programVisitors.setMiddle(cursor.getInt(i4 + 5));
        programVisitors.setOld(cursor.getInt(i4 + 6));
        programVisitors.setT1(cursor.getInt(i4 + 7));
        programVisitors.setT2(cursor.getInt(i4 + 8));
        programVisitors.setT3(cursor.getInt(i4 + 9));
        programVisitors.setT4(cursor.getInt(i4 + 10));
    }

    @Override // j3.a
    public final void bindValues(SQLiteStatement sQLiteStatement, ProgramVisitors programVisitors) {
        sQLiteStatement.clearBindings();
        Long id = programVisitors.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, programVisitors.getMale());
        sQLiteStatement.bindLong(3, programVisitors.getFemale());
        sQLiteStatement.bindLong(4, programVisitors.getChild());
        sQLiteStatement.bindLong(5, programVisitors.getYoung());
        sQLiteStatement.bindLong(6, programVisitors.getMiddle());
        sQLiteStatement.bindLong(7, programVisitors.getOld());
        sQLiteStatement.bindLong(8, programVisitors.getT1());
        sQLiteStatement.bindLong(9, programVisitors.getT2());
        sQLiteStatement.bindLong(10, programVisitors.getT3());
        sQLiteStatement.bindLong(11, programVisitors.getT4());
    }
}
