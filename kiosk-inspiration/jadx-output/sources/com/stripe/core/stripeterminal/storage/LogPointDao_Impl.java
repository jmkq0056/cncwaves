package com.stripe.core.stripeterminal.storage;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class LogPointDao_Impl implements LogPointDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<LogPointEntity> __insertionAdapterOfLogPointEntity;
    private final LogLevelConverters __logLevelConverters = new LogLevelConverters();
    private final SharedSQLiteStatement __preparedStmtOfDeleteAll;

    public LogPointDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfLogPointEntity = new EntityInsertionAdapter<LogPointEntity>(__db) { // from class: com.stripe.core.stripeterminal.storage.LogPointDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `logpoints` (`message`,`exception`,`loglevel`,`timeOffsetMs`,`traceId`,`uid`) VALUES (?,?,?,?,?,nullif(?, 0))";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final LogPointEntity entity) {
                if (entity.getMessage() == null) {
                    statement.bindNull(1);
                } else {
                    statement.bindString(1, entity.getMessage());
                }
                if (entity.getException() == null) {
                    statement.bindNull(2);
                } else {
                    statement.bindString(2, entity.getException());
                }
                statement.bindLong(3, LogPointDao_Impl.this.__logLevelConverters.fromLogLevel(entity.getLogLevel()));
                statement.bindLong(4, entity.getOffsetMs());
                statement.bindString(5, entity.getTraceId());
                statement.bindLong(6, entity.getUid());
            }
        };
        this.__preparedStmtOfDeleteAll = new SharedSQLiteStatement(__db) { // from class: com.stripe.core.stripeterminal.storage.LogPointDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM logpoints";
            }
        };
    }

    @Override // com.stripe.core.stripeterminal.storage.LogPointDao
    public void insert(final LogPointEntity logPoint) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfLogPointEntity.insert(logPoint);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.stripe.core.stripeterminal.storage.LogPointDao
    public void insertAll(final List<LogPointEntity> logPointEntityList) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfLogPointEntity.insert(logPointEntityList);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.stripe.core.stripeterminal.storage.LogPointDao
    public void deleteAll() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement supportSQLiteStatementAcquire = this.__preparedStmtOfDeleteAll.acquire();
        try {
            this.__db.beginTransaction();
            try {
                supportSQLiteStatementAcquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfDeleteAll.release(supportSQLiteStatementAcquire);
        }
    }

    @Override // com.stripe.core.stripeterminal.storage.LogPointDao
    public List<LogPointEntity> getAll() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM logpoints", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "message");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "exception");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "loglevel");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "timeOffsetMs");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "traceId");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uid");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new LogPointEntity(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), this.__logLevelConverters.toLogLevel(cursorQuery.getInt(columnIndexOrThrow3)), cursorQuery.getInt(columnIndexOrThrow4), cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getLong(columnIndexOrThrow6)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override // com.stripe.core.stripeterminal.storage.LogPointDao
    public List<LogPointEntity> getLogPointsForTrace(final String traceId) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM logpoints WHERE traceId = ?", 1);
        roomSQLiteQueryAcquire.bindString(1, traceId);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "message");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "exception");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "loglevel");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "timeOffsetMs");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "traceId");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uid");
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                arrayList.add(new LogPointEntity(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.isNull(columnIndexOrThrow2) ? null : cursorQuery.getString(columnIndexOrThrow2), this.__logLevelConverters.toLogLevel(cursorQuery.getInt(columnIndexOrThrow3)), cursorQuery.getInt(columnIndexOrThrow4), cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getLong(columnIndexOrThrow6)));
            }
            return arrayList;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
