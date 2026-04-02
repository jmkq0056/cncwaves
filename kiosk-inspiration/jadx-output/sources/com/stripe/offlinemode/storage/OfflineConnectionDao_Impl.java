package com.stripe.offlinemode.storage;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineConnectionDao_Impl implements OfflineConnectionDao {
    private final DateTimeConverter __dateTimeConverter = new DateTimeConverter();
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<OfflineConnectionEntity> __deletionAdapterOfOfflineConnectionEntity;
    private final EntityInsertionAdapter<OfflineConnectionEntity> __insertionAdapterOfOfflineConnectionEntity;
    private final EntityDeletionOrUpdateAdapter<OfflineConnectionEntity> __updateAdapterOfOfflineConnectionEntity;

    public OfflineConnectionDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfOfflineConnectionEntity = new EntityInsertionAdapter<OfflineConnectionEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR ABORT INTO `offline_connection` (`reader_id`,`location_id`,`account_id`,`data_blob`,`iv_blob`,`created_timestamp`,`id`) VALUES (?,?,?,?,?,?,nullif(?, 0))";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineConnectionEntity entity) {
                statement.bindLong(1, entity.getReaderId());
                statement.bindLong(2, entity.getLocationId());
                statement.bindString(3, entity.getAccountId());
                statement.bindBlob(4, entity.getEncryptedData());
                statement.bindBlob(5, entity.getEncryptionIv());
                statement.bindLong(6, OfflineConnectionDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getCreated()));
                statement.bindLong(7, entity.getId());
            }
        };
        this.__deletionAdapterOfOfflineConnectionEntity = new EntityDeletionOrUpdateAdapter<OfflineConnectionEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "DELETE FROM `offline_connection` WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineConnectionEntity entity) {
                statement.bindLong(1, entity.getId());
            }
        };
        this.__updateAdapterOfOfflineConnectionEntity = new EntityDeletionOrUpdateAdapter<OfflineConnectionEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "UPDATE OR ABORT `offline_connection` SET `reader_id` = ?,`location_id` = ?,`account_id` = ?,`data_blob` = ?,`iv_blob` = ?,`created_timestamp` = ?,`id` = ? WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineConnectionEntity entity) {
                statement.bindLong(1, entity.getReaderId());
                statement.bindLong(2, entity.getLocationId());
                statement.bindString(3, entity.getAccountId());
                statement.bindBlob(4, entity.getEncryptedData());
                statement.bindBlob(5, entity.getEncryptionIv());
                statement.bindLong(6, OfflineConnectionDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getCreated()));
                statement.bindLong(7, entity.getId());
                statement.bindLong(8, entity.getId());
            }
        };
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao
    public Object insert(final OfflineConnectionEntity entity, final Continuation<? super Long> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                OfflineConnectionDao_Impl.this.__db.beginTransaction();
                try {
                    Long lValueOf = Long.valueOf(OfflineConnectionDao_Impl.this.__insertionAdapterOfOfflineConnectionEntity.insertAndReturnId(entity));
                    OfflineConnectionDao_Impl.this.__db.setTransactionSuccessful();
                    return lValueOf;
                } finally {
                    OfflineConnectionDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao
    public Object insertAll(final OfflineConnectionEntity[] entity, final Continuation<? super List<Long>> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.5
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                OfflineConnectionDao_Impl.this.__db.beginTransaction();
                try {
                    List<Long> listInsertAndReturnIdsList = OfflineConnectionDao_Impl.this.__insertionAdapterOfOfflineConnectionEntity.insertAndReturnIdsList(entity);
                    OfflineConnectionDao_Impl.this.__db.setTransactionSuccessful();
                    return listInsertAndReturnIdsList;
                } finally {
                    OfflineConnectionDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao
    public Object delete(final OfflineConnectionEntity entity, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.6
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                OfflineConnectionDao_Impl.this.__db.beginTransaction();
                try {
                    OfflineConnectionDao_Impl.this.__deletionAdapterOfOfflineConnectionEntity.handle(entity);
                    OfflineConnectionDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineConnectionDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao
    public Object update(final OfflineConnectionEntity entity, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                OfflineConnectionDao_Impl.this.__db.beginTransaction();
                try {
                    OfflineConnectionDao_Impl.this.__updateAdapterOfOfflineConnectionEntity.handle(entity);
                    OfflineConnectionDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineConnectionDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao, com.stripe.offlinemode.storage.OfflineEntityDao
    public Flow<List<OfflineConnectionEntity>> getByAccountId(final String accountId) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_connection WHERE account_id = ? ORDER BY id", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{OfflineStorageConstantsKt.OFFLINE_CONNECTION}, new Callable<List<OfflineConnectionEntity>>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.8
            @Override // java.util.concurrent.Callable
            public List<OfflineConnectionEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(OfflineConnectionDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "location_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        int i = columnIndexOrThrow;
                        arrayList.add(new OfflineConnectionEntity(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getBlob(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), OfflineConnectionDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow6)), cursorQuery.getLong(columnIndexOrThrow7)));
                        columnIndexOrThrow = i;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                }
            }

            protected void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao
    public Object getAll(final int limit, final int offset, final Continuation<? super List<OfflineConnectionEntity>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_connection ORDER BY id LIMIT ? OFFSET ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, limit);
        roomSQLiteQueryAcquire.bindLong(2, offset);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<OfflineConnectionEntity>>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.9
            @Override // java.util.concurrent.Callable
            public List<OfflineConnectionEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(OfflineConnectionDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "location_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        int i = columnIndexOrThrow;
                        arrayList.add(new OfflineConnectionEntity(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getBlob(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), OfflineConnectionDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow6)), cursorQuery.getLong(columnIndexOrThrow7)));
                        columnIndexOrThrow = i;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao
    public Object getById(final long id, final Continuation<? super OfflineConnectionEntity> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_connection WHERE id = ? LIMIT 1", 1);
        roomSQLiteQueryAcquire.bindLong(1, id);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<OfflineConnectionEntity>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineConnectionEntity call() throws Exception {
                OfflineConnectionEntity offlineConnectionEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineConnectionDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "location_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineConnectionEntity = new OfflineConnectionEntity(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getBlob(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), OfflineConnectionDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow6)), cursorQuery.getLong(columnIndexOrThrow7));
                    }
                    return offlineConnectionEntity;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao
    public Object getMostRecentConnectionForReader(final long readerId, final Continuation<? super OfflineConnectionEntity> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("\n        WITH MostRecentId AS (SELECT MAX(id) FROM offline_connection WHERE reader_id = ?)\n        SELECT * FROM offline_connection WHERE id IN MostRecentId\n    ", 1);
        roomSQLiteQueryAcquire.bindLong(1, readerId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<OfflineConnectionEntity>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineConnectionEntity call() throws Exception {
                OfflineConnectionEntity offlineConnectionEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineConnectionDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "location_id");
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineConnectionEntity = new OfflineConnectionEntity(cursorQuery.getLong(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getBlob(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), OfflineConnectionDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow6)), cursorQuery.getLong(columnIndexOrThrow7));
                    }
                    return offlineConnectionEntity;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao
    public Object getMostRecentConnectionIdForEachReader(final String accountId, final Continuation<? super List<Long>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT MAX(id) FROM offline_connection WHERE account_id = ? GROUP BY reader_id", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<Long>>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.12
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(OfflineConnectionDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(Long.valueOf(cursorQuery.getLong(0)));
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineConnectionDao
    public Object retainByIds(final String accountId, final Set<Long> idsToRetain, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineConnectionDao_Impl.13
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
                sbNewStringBuilder.append("DELETE FROM offline_connection WHERE account_id = ");
                sbNewStringBuilder.append("?");
                sbNewStringBuilder.append(" AND id NOT IN (");
                StringUtil.appendPlaceholders(sbNewStringBuilder, idsToRetain.size());
                sbNewStringBuilder.append(")");
                SupportSQLiteStatement supportSQLiteStatementCompileStatement = OfflineConnectionDao_Impl.this.__db.compileStatement(sbNewStringBuilder.toString());
                supportSQLiteStatementCompileStatement.bindString(1, accountId);
                Iterator it = idsToRetain.iterator();
                int i = 2;
                while (it.hasNext()) {
                    supportSQLiteStatementCompileStatement.bindLong(i, ((Long) it.next()).longValue());
                    i++;
                }
                OfflineConnectionDao_Impl.this.__db.beginTransaction();
                try {
                    supportSQLiteStatementCompileStatement.executeUpdateDelete();
                    OfflineConnectionDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineConnectionDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
