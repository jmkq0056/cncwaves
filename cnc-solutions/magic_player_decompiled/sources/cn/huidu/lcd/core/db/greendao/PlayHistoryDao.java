package cn.huidu.lcd.core.db.greendao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.media.f;
import android.support.v4.media.h;
import cn.huidu.lcd.core.db.entity.PlayHistory;
import cn.huidu.lcd.core.db.entity.ProgramVisitors;
import j3.a;
import j3.e;
import java.util.ArrayList;
import java.util.List;
import m3.d;
import org.greenrobot.greendao.database.c;
import t1.b;

/* JADX INFO: loaded from: classes.dex */
public class PlayHistoryDao extends a<PlayHistory, Long> {
    public static final String TABLENAME = "PLAY_HISTORY";
    private DaoSession daoSession;
    private String selectDeep;

    public static class Properties {
        public static final e Duration;
        public static final e Lat;
        public static final e Lng;
        public static final e Version;
        public static final e VisitorsId;
        public static final e Id = new e(0, Long.class, "id", true, "_id");
        public static final e Uuid = new e(1, String.class, "uuid", false, "UUID");
        public static final e Timestamp = new e(2, Long.TYPE, "timestamp", false, "TIMESTAMP");

        static {
            Class cls = Integer.TYPE;
            Duration = new e(3, cls, "duration", false, "DURATION");
            Version = new e(4, cls, "version", false, "VERSION");
            Class cls2 = Double.TYPE;
            Lat = new e(5, cls2, "lat", false, "LAT");
            Lng = new e(6, cls2, "lng", false, "LNG");
            VisitorsId = new e(7, Long.class, "visitorsId", false, "VISITORS_ID");
        }
    }

    public PlayHistoryDao(m3.a aVar) {
        super(aVar);
    }

    public static void createTable(org.greenrobot.greendao.database.a aVar, boolean z3) {
        ((b) aVar).r(h.a("CREATE TABLE ", z3 ? "IF NOT EXISTS " : "", "\"PLAY_HISTORY\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"UUID\" TEXT,\"TIMESTAMP\" INTEGER NOT NULL ,\"DURATION\" INTEGER NOT NULL ,\"VERSION\" INTEGER NOT NULL ,\"LAT\" REAL NOT NULL ,\"LNG\" REAL NOT NULL ,\"VISITORS_ID\" INTEGER);"));
    }

    public static void dropTable(org.greenrobot.greendao.database.a aVar, boolean z3) {
        ((b) aVar).r(android.support.v4.media.b.a(f.a("DROP TABLE "), z3 ? "IF EXISTS " : "", "\"PLAY_HISTORY\""));
    }

    public String getSelectDeep() {
        if (this.selectDeep == null) {
            StringBuilder sb = new StringBuilder("SELECT ");
            d.a(sb, "T", getAllColumns());
            sb.append(',');
            d.a(sb, "T0", this.daoSession.getProgramVisitorsDao().getAllColumns());
            sb.append(" FROM PLAY_HISTORY T");
            sb.append(" LEFT JOIN PROGRAM_VISITORS T0 ON T.\"VISITORS_ID\"=T0.\"_id\"");
            sb.append(' ');
            this.selectDeep = sb.toString();
        }
        return this.selectDeep;
    }

    @Override // j3.a
    public final boolean isEntityUpdateable() {
        return true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public List<PlayHistory> loadAllDeepFromCursor(Cursor cursor) {
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList(count);
        if (cursor.moveToFirst()) {
            l3.a<K, T> aVar = this.identityScope;
            if (aVar != 0) {
                aVar.e();
                this.identityScope.g(count);
            }
            do {
                try {
                    arrayList.add(loadCurrentDeep(cursor, false));
                } finally {
                    l3.a<K, T> aVar2 = this.identityScope;
                    if (aVar2 != 0) {
                        aVar2.c();
                    }
                }
            } while (cursor.moveToNext());
        }
        return arrayList;
    }

    public PlayHistory loadCurrentDeep(Cursor cursor, boolean z3) {
        PlayHistory playHistoryLoadCurrent = loadCurrent(cursor, 0, z3);
        playHistoryLoadCurrent.setVisitors((ProgramVisitors) loadCurrentOther(this.daoSession.getProgramVisitorsDao(), cursor, getAllColumns().length));
        return playHistoryLoadCurrent;
    }

    public PlayHistory loadDeep(Long l4) {
        assertSinglePk();
        if (l4 == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(getSelectDeep());
        sb.append("WHERE ");
        d.b(sb, "T", getPkColumns());
        Cursor cursorD = ((b) this.db).D(sb.toString(), new String[]{l4.toString()});
        try {
            if (!cursorD.moveToFirst()) {
                return null;
            }
            if (cursorD.isLast()) {
                return loadCurrentDeep(cursorD, true);
            }
            throw new IllegalStateException("Expected unique result, but count was " + cursorD.getCount());
        } finally {
            cursorD.close();
        }
    }

    public List<PlayHistory> loadDeepAllAndCloseCursor(Cursor cursor) {
        try {
            return loadAllDeepFromCursor(cursor);
        } finally {
            cursor.close();
        }
    }

    public List<PlayHistory> queryDeep(String str, String... strArr) {
        return loadDeepAllAndCloseCursor(((b) this.db).D(getSelectDeep() + str, strArr));
    }

    public PlayHistoryDao(m3.a aVar, DaoSession daoSession) {
        super(aVar, daoSession);
        this.daoSession = daoSession;
    }

    @Override // j3.a
    public final void attachEntity(PlayHistory playHistory) {
        super.attachEntity(playHistory);
        playHistory.__setDaoSession(this.daoSession);
    }

    @Override // j3.a
    public Long getKey(PlayHistory playHistory) {
        if (playHistory != null) {
            return playHistory.getId();
        }
        return null;
    }

    @Override // j3.a
    public boolean hasKey(PlayHistory playHistory) {
        return playHistory.getId() != null;
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
    public final Long updateKeyAfterInsert(PlayHistory playHistory, long j4) {
        playHistory.setId(Long.valueOf(j4));
        return Long.valueOf(j4);
    }

    @Override // j3.a
    public final void bindValues(c cVar, PlayHistory playHistory) {
        b bVar = (b) cVar;
        bVar.i();
        Long id = playHistory.getId();
        if (id != null) {
            bVar.e(1, id.longValue());
        }
        String uuid = playHistory.getUuid();
        if (uuid != null) {
            bVar.g(2, uuid);
        }
        bVar.e(3, playHistory.getTimestamp());
        bVar.e(4, playHistory.getDuration());
        bVar.e(5, playHistory.getVersion());
        bVar.c(6, playHistory.getLat());
        bVar.c(7, playHistory.getLng());
        Long visitorsId = playHistory.getVisitorsId();
        if (visitorsId != null) {
            bVar.e(8, visitorsId.longValue());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // j3.a
    public PlayHistory readEntity(Cursor cursor, int i4) {
        int i5 = i4 + 0;
        Long lValueOf = cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5));
        int i6 = i4 + 1;
        String string = cursor.isNull(i6) ? null : cursor.getString(i6);
        long j4 = cursor.getLong(i4 + 2);
        int i7 = cursor.getInt(i4 + 3);
        int i8 = cursor.getInt(i4 + 4);
        double d4 = cursor.getDouble(i4 + 5);
        double d5 = cursor.getDouble(i4 + 6);
        int i9 = i4 + 7;
        return new PlayHistory(lValueOf, string, j4, i7, i8, d4, d5, cursor.isNull(i9) ? null : Long.valueOf(cursor.getLong(i9)));
    }

    @Override // j3.a
    public void readEntity(Cursor cursor, PlayHistory playHistory, int i4) {
        int i5 = i4 + 0;
        playHistory.setId(cursor.isNull(i5) ? null : Long.valueOf(cursor.getLong(i5)));
        int i6 = i4 + 1;
        playHistory.setUuid(cursor.isNull(i6) ? null : cursor.getString(i6));
        playHistory.setTimestamp(cursor.getLong(i4 + 2));
        playHistory.setDuration(cursor.getInt(i4 + 3));
        playHistory.setVersion(cursor.getInt(i4 + 4));
        playHistory.setLat(cursor.getDouble(i4 + 5));
        playHistory.setLng(cursor.getDouble(i4 + 6));
        int i7 = i4 + 7;
        playHistory.setVisitorsId(cursor.isNull(i7) ? null : Long.valueOf(cursor.getLong(i7)));
    }

    @Override // j3.a
    public final void bindValues(SQLiteStatement sQLiteStatement, PlayHistory playHistory) {
        sQLiteStatement.clearBindings();
        Long id = playHistory.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String uuid = playHistory.getUuid();
        if (uuid != null) {
            sQLiteStatement.bindString(2, uuid);
        }
        sQLiteStatement.bindLong(3, playHistory.getTimestamp());
        sQLiteStatement.bindLong(4, playHistory.getDuration());
        sQLiteStatement.bindLong(5, playHistory.getVersion());
        sQLiteStatement.bindDouble(6, playHistory.getLat());
        sQLiteStatement.bindDouble(7, playHistory.getLng());
        Long visitorsId = playHistory.getVisitorsId();
        if (visitorsId != null) {
            sQLiteStatement.bindLong(8, visitorsId.longValue());
        }
    }
}
