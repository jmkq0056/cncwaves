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
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineAccountConfigDao_Impl implements OfflineAccountConfigDao {
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<OfflineAccountConfigEntity> __deletionAdapterOfOfflineAccountConfigEntity;
    private final EntityInsertionAdapter<OfflineAccountConfigEntity> __insertionAdapterOfOfflineAccountConfigEntity;
    private final EntityDeletionOrUpdateAdapter<OfflineAccountConfigEntity> __updateAdapterOfOfflineAccountConfigEntity;

    public OfflineAccountConfigDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfOfflineAccountConfigEntity = new EntityInsertionAdapter<OfflineAccountConfigEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineAccountConfigDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR ABORT INTO `offline_config` (`account_id`,`data_blob`,`iv_blob`,`id`) VALUES (?,?,?,nullif(?, 0))";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineAccountConfigEntity entity) {
                statement.bindString(1, entity.getAccountId());
                statement.bindBlob(2, entity.getEncryptedData());
                statement.bindBlob(3, entity.getEncryptionIv());
                statement.bindLong(4, entity.getId());
            }
        };
        this.__deletionAdapterOfOfflineAccountConfigEntity = new EntityDeletionOrUpdateAdapter<OfflineAccountConfigEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineAccountConfigDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "DELETE FROM `offline_config` WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineAccountConfigEntity entity) {
                statement.bindLong(1, entity.getId());
            }
        };
        this.__updateAdapterOfOfflineAccountConfigEntity = new EntityDeletionOrUpdateAdapter<OfflineAccountConfigEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineAccountConfigDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "UPDATE OR ABORT `offline_config` SET `account_id` = ?,`data_blob` = ?,`iv_blob` = ?,`id` = ? WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineAccountConfigEntity entity) {
                statement.bindString(1, entity.getAccountId());
                statement.bindBlob(2, entity.getEncryptedData());
                statement.bindBlob(3, entity.getEncryptionIv());
                statement.bindLong(4, entity.getId());
                statement.bindLong(5, entity.getId());
            }
        };
    }

    @Override // com.stripe.offlinemode.storage.OfflineAccountConfigDao
    public Object insert(final OfflineAccountConfigEntity entity, final Continuation<? super Long> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.stripe.offlinemode.storage.OfflineAccountConfigDao_Impl.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                OfflineAccountConfigDao_Impl.this.__db.beginTransaction();
                try {
                    Long lValueOf = Long.valueOf(OfflineAccountConfigDao_Impl.this.__insertionAdapterOfOfflineAccountConfigEntity.insertAndReturnId(entity));
                    OfflineAccountConfigDao_Impl.this.__db.setTransactionSuccessful();
                    return lValueOf;
                } finally {
                    OfflineAccountConfigDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineAccountConfigDao
    public Object insertAll(final OfflineAccountConfigEntity[] entity, final Continuation<? super List<Long>> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.stripe.offlinemode.storage.OfflineAccountConfigDao_Impl.5
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                OfflineAccountConfigDao_Impl.this.__db.beginTransaction();
                try {
                    List<Long> listInsertAndReturnIdsList = OfflineAccountConfigDao_Impl.this.__insertionAdapterOfOfflineAccountConfigEntity.insertAndReturnIdsList(entity);
                    OfflineAccountConfigDao_Impl.this.__db.setTransactionSuccessful();
                    return listInsertAndReturnIdsList;
                } finally {
                    OfflineAccountConfigDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineAccountConfigDao
    public Object delete(final OfflineAccountConfigEntity entity, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineAccountConfigDao_Impl.6
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                OfflineAccountConfigDao_Impl.this.__db.beginTransaction();
                try {
                    OfflineAccountConfigDao_Impl.this.__deletionAdapterOfOfflineAccountConfigEntity.handle(entity);
                    OfflineAccountConfigDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineAccountConfigDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineAccountConfigDao
    public Object update(final OfflineAccountConfigEntity entity, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineAccountConfigDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                OfflineAccountConfigDao_Impl.this.__db.beginTransaction();
                try {
                    OfflineAccountConfigDao_Impl.this.__updateAdapterOfOfflineAccountConfigEntity.handle(entity);
                    OfflineAccountConfigDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineAccountConfigDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineAccountConfigDao
    public OfflineAccountConfigEntity getForAccountId(final String accountId) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_config WHERE account_id = ? LIMIT 1", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            return cursorQuery.moveToFirst() ? new OfflineAccountConfigEntity(cursorQuery.getString(CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID)), cursorQuery.getBlob(CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB)), cursorQuery.getBlob(CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB)), cursorQuery.getLong(CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID))) : null;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
