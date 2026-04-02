package com.stripe.core.stripeterminal.storage;

import android.database.Cursor;
import androidx.core.app.NotificationCompat;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class TraceDao_Impl implements TraceDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<TraceEntity> __insertionAdapterOfTraceEntity;
    private final MapConverters __mapConverters = new MapConverters();
    private final SharedSQLiteStatement __preparedStmtOfDeleteAll;

    public TraceDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfTraceEntity = new EntityInsertionAdapter<TraceEntity>(__db) { // from class: com.stripe.core.stripeterminal.storage.TraceDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `traces` (`startTimeMs`,`id`,`request`,`response`,`service`,`method`,`exception`,`totalTimeMs`,`sessionId`,`serialNumber`,`tags`,`uid`) VALUES (?,?,?,?,?,?,?,?,?,?,?,nullif(?, 0))";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final TraceEntity entity) {
                statement.bindLong(1, entity.getStartTimeMs());
                statement.bindString(2, entity.getId());
                if (entity.getRequest() == null) {
                    statement.bindNull(3);
                } else {
                    statement.bindString(3, entity.getRequest());
                }
                if (entity.getResponse() == null) {
                    statement.bindNull(4);
                } else {
                    statement.bindString(4, entity.getResponse());
                }
                statement.bindString(5, entity.getService());
                statement.bindString(6, entity.getMethod());
                if (entity.getException() == null) {
                    statement.bindNull(7);
                } else {
                    statement.bindString(7, entity.getException());
                }
                if (entity.getTotalTimeMs() == null) {
                    statement.bindNull(8);
                } else {
                    statement.bindLong(8, entity.getTotalTimeMs().longValue());
                }
                if (entity.getSessionId() == null) {
                    statement.bindNull(9);
                } else {
                    statement.bindString(9, entity.getSessionId());
                }
                if (entity.getSerialNumber() == null) {
                    statement.bindNull(10);
                } else {
                    statement.bindString(10, entity.getSerialNumber());
                }
                String strFromStringStringMap = TraceDao_Impl.this.__mapConverters.fromStringStringMap(entity.getTags());
                if (strFromStringStringMap == null) {
                    statement.bindNull(11);
                } else {
                    statement.bindString(11, strFromStringStringMap);
                }
                statement.bindLong(12, entity.getUid());
            }
        };
        this.__preparedStmtOfDeleteAll = new SharedSQLiteStatement(__db) { // from class: com.stripe.core.stripeterminal.storage.TraceDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM traces";
            }
        };
    }

    @Override // com.stripe.core.stripeterminal.storage.TraceDao
    public void insert(final TraceEntity traceEntity) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfTraceEntity.insert(traceEntity);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.stripe.core.stripeterminal.storage.TraceDao
    public void insertAll(final List<TraceEntity> traceEntityList) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfTraceEntity.insert(traceEntityList);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.stripe.core.stripeterminal.storage.TraceDao
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

    @Override // com.stripe.core.stripeterminal.storage.TraceDao
    public List<TraceEntity> getAll() throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM traces", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "startTimeMs");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "request");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "response");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, NotificationCompat.CATEGORY_SERVICE);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, FirebaseAnalytics.Param.METHOD);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "exception");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "totalTimeMs");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "sessionId");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "serialNumber");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "tags");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "uid");
            roomSQLiteQuery = roomSQLiteQueryAcquire;
            try {
                ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    int i = columnIndexOrThrow;
                    arrayList.add(new TraceEntity(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.isNull(columnIndexOrThrow4) ? null : cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getString(columnIndexOrThrow5), cursorQuery.getString(columnIndexOrThrow6), cursorQuery.isNull(columnIndexOrThrow7) ? null : cursorQuery.getString(columnIndexOrThrow7), cursorQuery.isNull(columnIndexOrThrow8) ? null : Long.valueOf(cursorQuery.getLong(columnIndexOrThrow8)), cursorQuery.isNull(columnIndexOrThrow9) ? null : cursorQuery.getString(columnIndexOrThrow9), cursorQuery.isNull(columnIndexOrThrow10) ? null : cursorQuery.getString(columnIndexOrThrow10), this.__mapConverters.toStringStringMap(cursorQuery.isNull(columnIndexOrThrow11) ? null : cursorQuery.getString(columnIndexOrThrow11)), cursorQuery.getLong(columnIndexOrThrow12)));
                    columnIndexOrThrow = i;
                }
                cursorQuery.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursorQuery.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
