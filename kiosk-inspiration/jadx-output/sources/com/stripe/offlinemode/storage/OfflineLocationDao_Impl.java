package com.stripe.offlinemode.storage;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineLocationDao_Impl implements OfflineLocationDao {
    private final DateTimeConverter __dateTimeConverter = new DateTimeConverter();
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<OfflineLocationEntity> __deletionAdapterOfOfflineLocationEntity;
    private final EntityInsertionAdapter<OfflineLocationEntity> __insertionAdapterOfOfflineLocationEntity;
    private final EntityDeletionOrUpdateAdapter<OfflineLocationEntity> __updateAdapterOfOfflineLocationEntity;

    public OfflineLocationDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfOfflineLocationEntity = new EntityInsertionAdapter<OfflineLocationEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR ABORT INTO `offline_location` (`stripe_location_id`,`account_id`,`data_blob`,`iv_blob`,`created_timestamp`,`last_activated_timestamp`,`id`) VALUES (?,?,?,?,?,?,nullif(?, 0))";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineLocationEntity entity) {
                statement.bindString(1, entity.getStripeLocationId());
                statement.bindString(2, entity.getAccountId());
                statement.bindBlob(3, entity.getEncryptedData());
                statement.bindBlob(4, entity.getEncryptionIv());
                statement.bindLong(5, OfflineLocationDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getCreated()));
                statement.bindLong(6, OfflineLocationDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getLastActivatedAt()));
                statement.bindLong(7, entity.getId());
            }
        };
        this.__deletionAdapterOfOfflineLocationEntity = new EntityDeletionOrUpdateAdapter<OfflineLocationEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "DELETE FROM `offline_location` WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineLocationEntity entity) {
                statement.bindLong(1, entity.getId());
            }
        };
        this.__updateAdapterOfOfflineLocationEntity = new EntityDeletionOrUpdateAdapter<OfflineLocationEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "UPDATE OR ABORT `offline_location` SET `stripe_location_id` = ?,`account_id` = ?,`data_blob` = ?,`iv_blob` = ?,`created_timestamp` = ?,`last_activated_timestamp` = ?,`id` = ? WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineLocationEntity entity) {
                statement.bindString(1, entity.getStripeLocationId());
                statement.bindString(2, entity.getAccountId());
                statement.bindBlob(3, entity.getEncryptedData());
                statement.bindBlob(4, entity.getEncryptionIv());
                statement.bindLong(5, OfflineLocationDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getCreated()));
                statement.bindLong(6, OfflineLocationDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getLastActivatedAt()));
                statement.bindLong(7, entity.getId());
                statement.bindLong(8, entity.getId());
            }
        };
    }

    @Override // com.stripe.offlinemode.storage.OfflineLocationDao
    public Object insert(final OfflineLocationEntity entity, final Continuation<? super Long> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                OfflineLocationDao_Impl.this.__db.beginTransaction();
                try {
                    Long lValueOf = Long.valueOf(OfflineLocationDao_Impl.this.__insertionAdapterOfOfflineLocationEntity.insertAndReturnId(entity));
                    OfflineLocationDao_Impl.this.__db.setTransactionSuccessful();
                    return lValueOf;
                } finally {
                    OfflineLocationDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineLocationDao
    public Object insertAll(final OfflineLocationEntity[] entity, final Continuation<? super List<Long>> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.5
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                OfflineLocationDao_Impl.this.__db.beginTransaction();
                try {
                    List<Long> listInsertAndReturnIdsList = OfflineLocationDao_Impl.this.__insertionAdapterOfOfflineLocationEntity.insertAndReturnIdsList(entity);
                    OfflineLocationDao_Impl.this.__db.setTransactionSuccessful();
                    return listInsertAndReturnIdsList;
                } finally {
                    OfflineLocationDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineLocationDao
    public Object delete(final OfflineLocationEntity entity, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.6
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                OfflineLocationDao_Impl.this.__db.beginTransaction();
                try {
                    OfflineLocationDao_Impl.this.__deletionAdapterOfOfflineLocationEntity.handle(entity);
                    OfflineLocationDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineLocationDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineLocationDao
    public Object update(final OfflineLocationEntity entity, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                OfflineLocationDao_Impl.this.__db.beginTransaction();
                try {
                    OfflineLocationDao_Impl.this.__updateAdapterOfOfflineLocationEntity.handle(entity);
                    OfflineLocationDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineLocationDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineLocationDao, com.stripe.offlinemode.storage.OfflineEntityDao
    public Flow<List<OfflineLocationEntity>> getByAccountId(final String accountId) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_location WHERE account_id = ? ORDER BY id", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{OfflineStorageConstantsKt.OFFLINE_LOCATION}, new Callable<List<OfflineLocationEntity>>() { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.8
            @Override // java.util.concurrent.Callable
            public List<OfflineLocationEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(OfflineLocationDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_LOCATION_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        int i = columnIndexOrThrow;
                        arrayList.add(new OfflineLocationEntity(cursorQuery.getString(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getBlob(columnIndexOrThrow3), cursorQuery.getBlob(columnIndexOrThrow4), OfflineLocationDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow5)), OfflineLocationDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow6)), cursorQuery.getLong(columnIndexOrThrow7)));
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

    @Override // com.stripe.offlinemode.storage.OfflineLocationDao
    public Object getByStripeLocationId(final String locationId, final Continuation<? super OfflineLocationEntity> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_location WHERE stripe_location_id = ? LIMIT 1", 1);
        if (locationId == null) {
            roomSQLiteQueryAcquire.bindNull(1);
        } else {
            roomSQLiteQueryAcquire.bindString(1, locationId);
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<OfflineLocationEntity>() { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineLocationEntity call() throws Exception {
                OfflineLocationEntity offlineLocationEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineLocationDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_LOCATION_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineLocationEntity = new OfflineLocationEntity(cursorQuery.getString(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getBlob(columnIndexOrThrow3), cursorQuery.getBlob(columnIndexOrThrow4), OfflineLocationDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow5)), OfflineLocationDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow6)), cursorQuery.getLong(columnIndexOrThrow7));
                    }
                    return offlineLocationEntity;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineLocationDao
    public Object getById(final long id, final Continuation<? super OfflineLocationEntity> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_location WHERE id = ? LIMIT 1", 1);
        roomSQLiteQueryAcquire.bindLong(1, id);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<OfflineLocationEntity>() { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineLocationEntity call() throws Exception {
                OfflineLocationEntity offlineLocationEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineLocationDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_LOCATION_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineLocationEntity = new OfflineLocationEntity(cursorQuery.getString(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getBlob(columnIndexOrThrow3), cursorQuery.getBlob(columnIndexOrThrow4), OfflineLocationDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow5)), OfflineLocationDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow6)), cursorQuery.getLong(columnIndexOrThrow7));
                    }
                    return offlineLocationEntity;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineLocationDao
    public Flow<OfflineLocationEntity> getByIdFlow(final long id) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_location WHERE id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, id);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{OfflineStorageConstantsKt.OFFLINE_LOCATION}, new Callable<OfflineLocationEntity>() { // from class: com.stripe.offlinemode.storage.OfflineLocationDao_Impl.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineLocationEntity call() throws Exception {
                OfflineLocationEntity offlineLocationEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineLocationDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_LOCATION_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineLocationEntity = new OfflineLocationEntity(cursorQuery.getString(columnIndexOrThrow), cursorQuery.getString(columnIndexOrThrow2), cursorQuery.getBlob(columnIndexOrThrow3), cursorQuery.getBlob(columnIndexOrThrow4), OfflineLocationDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow5)), OfflineLocationDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow6)), cursorQuery.getLong(columnIndexOrThrow7));
                    }
                    return offlineLocationEntity;
                } finally {
                    cursorQuery.close();
                }
            }

            protected void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
