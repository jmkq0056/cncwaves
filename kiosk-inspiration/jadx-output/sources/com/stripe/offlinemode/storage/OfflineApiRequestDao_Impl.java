package com.stripe.offlinemode.storage;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineApiRequestDao_Impl implements OfflineApiRequestDao {
    private final DateTimeConverter __dateTimeConverter = new DateTimeConverter();
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<OfflineApiRequestEntity> __deletionAdapterOfOfflineApiRequestEntity;
    private final EntityInsertionAdapter<OfflineApiRequestEntity> __insertionAdapterOfOfflineApiRequestEntity;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByOfflineOrPaymentIntentId;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByRowId;
    private final SharedSQLiteStatement __preparedStmtOfDeleteOrphanedPayments;
    private final SharedSQLiteStatement __preparedStmtOfRestoreSoftDeletedPayments;
    private final SharedSQLiteStatement __preparedStmtOfUpdatePaymentIntentId;

    public OfflineApiRequestDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfOfflineApiRequestEntity = new EntityInsertionAdapter<OfflineApiRequestEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR ABORT INTO `offline_api_request` (`offline_id`,`connection_id`,`stripe_api_entity_id`,`account_id`,`type`,`deleted`,`data_blob`,`iv_blob`,`created_timestamp`,`id`) VALUES (?,?,?,?,?,?,?,?,?,nullif(?, 0))";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, OfflineApiRequestEntity offlineApiRequestEntity) {
                if (offlineApiRequestEntity.getOfflineId() == null) {
                    supportSQLiteStatement.bindNull(1);
                } else {
                    supportSQLiteStatement.bindString(1, offlineApiRequestEntity.getOfflineId());
                }
                supportSQLiteStatement.bindLong(2, offlineApiRequestEntity.getConnectionId());
                if (offlineApiRequestEntity.getStripeEntityId() == null) {
                    supportSQLiteStatement.bindNull(3);
                } else {
                    supportSQLiteStatement.bindString(3, offlineApiRequestEntity.getStripeEntityId());
                }
                supportSQLiteStatement.bindString(4, offlineApiRequestEntity.getAccountId());
                supportSQLiteStatement.bindString(5, OfflineApiRequestDao_Impl.this.__ApiRequestType_enumToString(offlineApiRequestEntity.getType()));
                supportSQLiteStatement.bindLong(6, offlineApiRequestEntity.getDeleted() ? 1L : 0L);
                supportSQLiteStatement.bindBlob(7, offlineApiRequestEntity.getEncryptedData());
                supportSQLiteStatement.bindBlob(8, offlineApiRequestEntity.getEncryptionIv());
                supportSQLiteStatement.bindLong(9, OfflineApiRequestDao_Impl.this.__dateTimeConverter.toTimeMs(offlineApiRequestEntity.getCreated()));
                supportSQLiteStatement.bindLong(10, offlineApiRequestEntity.getId());
            }
        };
        this.__deletionAdapterOfOfflineApiRequestEntity = new EntityDeletionOrUpdateAdapter<OfflineApiRequestEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "DELETE FROM `offline_api_request` WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineApiRequestEntity entity) {
                statement.bindLong(1, entity.getId());
            }
        };
        this.__preparedStmtOfUpdatePaymentIntentId = new SharedSQLiteStatement(__db) { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "\n            UPDATE offline_api_request\n                SET stripe_api_entity_id = ?, data_blob = ?, iv_blob = ?\n                    WHERE id = ? \n                        AND account_id = ? \n                        AND connection_id = ?\n                        AND type = ?\n                        AND (offline_id = ? OR (offline_id IS NULL AND ? IS NULL))\n        ";
            }
        };
        this.__preparedStmtOfDeleteByOfflineOrPaymentIntentId = new SharedSQLiteStatement(__db) { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM offline_api_request WHERE offline_id = ? OR stripe_api_entity_id = ?";
            }
        };
        this.__preparedStmtOfRestoreSoftDeletedPayments = new SharedSQLiteStatement(__db) { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE offline_api_request SET deleted = 0 WHERE account_id = ?";
            }
        };
        this.__preparedStmtOfDeleteOrphanedPayments = new SharedSQLiteStatement(__db) { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "\n        WITH UnProcessedOfflineIds AS (\n            SELECT offline_id \n                FROM offline_api_request \n                    WHERE account_id = ? \n                        AND type = 'PROCESS_PAYMENT_INTENT' \n                        AND offline_id IS NOT NULL\n        ), ForwardedCreateRows AS (\n            SELECT id \n                FROM offline_api_request \n                    WHERE account_id = ? \n                        AND type = 'CREATE_PAYMENT_INTENT' \n                        AND NOT (stripe_api_entity_id IS NULL OR stripe_api_entity_id = '')\n        )\n        DELETE \n            FROM offline_api_request \n                WHERE id IN ForwardedCreateRows \n                    AND created_timestamp < ? \n                    AND offline_id NOT IN UnProcessedOfflineIds\n        ";
            }
        };
        this.__preparedStmtOfDeleteByRowId = new SharedSQLiteStatement(__db) { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM offline_api_request WHERE id = ?";
            }
        };
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object insert(final OfflineApiRequestEntity entity, final Continuation<? super Long> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                OfflineApiRequestDao_Impl.this.__db.beginTransaction();
                try {
                    Long lValueOf = Long.valueOf(OfflineApiRequestDao_Impl.this.__insertionAdapterOfOfflineApiRequestEntity.insertAndReturnId(entity));
                    OfflineApiRequestDao_Impl.this.__db.setTransactionSuccessful();
                    return lValueOf;
                } finally {
                    OfflineApiRequestDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object insertAll(final OfflineApiRequestEntity[] entity, final Continuation<? super List<Long>> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.9
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                OfflineApiRequestDao_Impl.this.__db.beginTransaction();
                try {
                    List<Long> listInsertAndReturnIdsList = OfflineApiRequestDao_Impl.this.__insertionAdapterOfOfflineApiRequestEntity.insertAndReturnIdsList(entity);
                    OfflineApiRequestDao_Impl.this.__db.setTransactionSuccessful();
                    return listInsertAndReturnIdsList;
                } finally {
                    OfflineApiRequestDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object delete(final OfflineApiRequestEntity entity, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.10
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                OfflineApiRequestDao_Impl.this.__db.beginTransaction();
                try {
                    OfflineApiRequestDao_Impl.this.__deletionAdapterOfOfflineApiRequestEntity.handle(entity);
                    OfflineApiRequestDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineApiRequestDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object updatePaymentIntentId(final long rowId, final String accountId, final String offlineId, final long connectionId, final OfflineApiRequest.ApiRequestType type, final String intentId, final byte[] data, final byte[] iv, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.11
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = OfflineApiRequestDao_Impl.this.__preparedStmtOfUpdatePaymentIntentId.acquire();
                String str = intentId;
                if (str == null) {
                    supportSQLiteStatementAcquire.bindNull(1);
                } else {
                    supportSQLiteStatementAcquire.bindString(1, str);
                }
                supportSQLiteStatementAcquire.bindBlob(2, data);
                supportSQLiteStatementAcquire.bindBlob(3, iv);
                supportSQLiteStatementAcquire.bindLong(4, rowId);
                supportSQLiteStatementAcquire.bindString(5, accountId);
                supportSQLiteStatementAcquire.bindLong(6, connectionId);
                supportSQLiteStatementAcquire.bindString(7, OfflineApiRequestDao_Impl.this.__ApiRequestType_enumToString(type));
                String str2 = offlineId;
                if (str2 == null) {
                    supportSQLiteStatementAcquire.bindNull(8);
                } else {
                    supportSQLiteStatementAcquire.bindString(8, str2);
                }
                String str3 = offlineId;
                if (str3 == null) {
                    supportSQLiteStatementAcquire.bindNull(9);
                } else {
                    supportSQLiteStatementAcquire.bindString(9, str3);
                }
                try {
                    OfflineApiRequestDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        OfflineApiRequestDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        OfflineApiRequestDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    OfflineApiRequestDao_Impl.this.__preparedStmtOfUpdatePaymentIntentId.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object deleteByOfflineOrPaymentIntentId(final String id, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.12
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = OfflineApiRequestDao_Impl.this.__preparedStmtOfDeleteByOfflineOrPaymentIntentId.acquire();
                supportSQLiteStatementAcquire.bindString(1, id);
                supportSQLiteStatementAcquire.bindString(2, id);
                try {
                    OfflineApiRequestDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        OfflineApiRequestDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        OfflineApiRequestDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    OfflineApiRequestDao_Impl.this.__preparedStmtOfDeleteByOfflineOrPaymentIntentId.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object restoreSoftDeletedPayments(final String accountId, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.13
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = OfflineApiRequestDao_Impl.this.__preparedStmtOfRestoreSoftDeletedPayments.acquire();
                supportSQLiteStatementAcquire.bindString(1, accountId);
                try {
                    OfflineApiRequestDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        OfflineApiRequestDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        OfflineApiRequestDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    OfflineApiRequestDao_Impl.this.__preparedStmtOfRestoreSoftDeletedPayments.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object deleteOrphanedPayments(final String accountId, final Date createdBefore, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.14
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = OfflineApiRequestDao_Impl.this.__preparedStmtOfDeleteOrphanedPayments.acquire();
                supportSQLiteStatementAcquire.bindString(1, accountId);
                supportSQLiteStatementAcquire.bindString(2, accountId);
                supportSQLiteStatementAcquire.bindLong(3, OfflineApiRequestDao_Impl.this.__dateTimeConverter.toTimeMs(createdBefore));
                try {
                    OfflineApiRequestDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        OfflineApiRequestDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        OfflineApiRequestDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    OfflineApiRequestDao_Impl.this.__preparedStmtOfDeleteOrphanedPayments.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object deleteByRowId(final long id, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.15
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                SupportSQLiteStatement supportSQLiteStatementAcquire = OfflineApiRequestDao_Impl.this.__preparedStmtOfDeleteByRowId.acquire();
                supportSQLiteStatementAcquire.bindLong(1, id);
                try {
                    OfflineApiRequestDao_Impl.this.__db.beginTransaction();
                    try {
                        supportSQLiteStatementAcquire.executeUpdateDelete();
                        OfflineApiRequestDao_Impl.this.__db.setTransactionSuccessful();
                        return Unit.INSTANCE;
                    } finally {
                        OfflineApiRequestDao_Impl.this.__db.endTransaction();
                    }
                } finally {
                    OfflineApiRequestDao_Impl.this.__preparedStmtOfDeleteByRowId.release(supportSQLiteStatementAcquire);
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Flow<List<OfflineApiRequestEntity>> getByAccountId(final String accountId) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_api_request WHERE account_id = ? ORDER BY id", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{OfflineStorageConstantsKt.OFFLINE_API_REQUEST}, new Callable<List<OfflineApiRequestEntity>>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.16
            @Override // java.util.concurrent.Callable
            public List<OfflineApiRequestEntity> call() throws Exception {
                String str = null;
                Cursor cursorQuery = DBUtil.query(OfflineApiRequestDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.OFFLINE_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CONNECTION_ID);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_ENTITY_ID);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "type");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DELETED);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        int i = columnIndexOrThrow2;
                        arrayList.add(new OfflineApiRequestEntity(cursorQuery.isNull(columnIndexOrThrow) ? str : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? str : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), OfflineApiRequestDao_Impl.this.__ApiRequestType_stringToEnum(cursorQuery.getString(columnIndexOrThrow5)), cursorQuery.getInt(columnIndexOrThrow6) != 0, cursorQuery.getBlob(columnIndexOrThrow7), cursorQuery.getBlob(columnIndexOrThrow8), OfflineApiRequestDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow9)), cursorQuery.getLong(columnIndexOrThrow10)));
                        columnIndexOrThrow2 = i;
                        str = null;
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

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object getAll(final int limit, final int offset, final String accountId, final Continuation<? super List<OfflineApiRequestEntity>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_api_request WHERE account_id = ? ORDER BY id LIMIT ? OFFSET ?", 3);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        roomSQLiteQueryAcquire.bindLong(2, limit);
        roomSQLiteQueryAcquire.bindLong(3, offset);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<OfflineApiRequestEntity>>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.17
            @Override // java.util.concurrent.Callable
            public List<OfflineApiRequestEntity> call() throws Exception {
                String str = null;
                Cursor cursorQuery = DBUtil.query(OfflineApiRequestDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.OFFLINE_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CONNECTION_ID);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_ENTITY_ID);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "type");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DELETED);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        int i = columnIndexOrThrow2;
                        arrayList.add(new OfflineApiRequestEntity(cursorQuery.isNull(columnIndexOrThrow) ? str : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? str : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), OfflineApiRequestDao_Impl.this.__ApiRequestType_stringToEnum(cursorQuery.getString(columnIndexOrThrow5)), cursorQuery.getInt(columnIndexOrThrow6) != 0, cursorQuery.getBlob(columnIndexOrThrow7), cursorQuery.getBlob(columnIndexOrThrow8), OfflineApiRequestDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow9)), cursorQuery.getLong(columnIndexOrThrow10)));
                        columnIndexOrThrow2 = i;
                        str = null;
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Flow<OfflineApiRequestEntity> fetchNextPaymentToForward(final String accountId) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("\n            SELECT *\n                FROM offline_api_request\n                    WHERE account_id = ?\n                        AND deleted = 0\n                        AND ((type != 'CREATE_PAYMENT_INTENT' AND type != 'CREATE_SETUP_INTENT')\n                            OR stripe_api_entity_id IS NULL OR stripe_api_entity_id = ''\n                            OR offline_id IS NULL OR offline_id = ''\n                        ) \n                    ORDER BY id\n                    LIMIT 1\n        ", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{OfflineStorageConstantsKt.OFFLINE_API_REQUEST}, new Callable<OfflineApiRequestEntity>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.18
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineApiRequestEntity call() throws Exception {
                OfflineApiRequestEntity offlineApiRequestEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineApiRequestDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.OFFLINE_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CONNECTION_ID);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_ENTITY_ID);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "type");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DELETED);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineApiRequestEntity = new OfflineApiRequestEntity(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), OfflineApiRequestDao_Impl.this.__ApiRequestType_stringToEnum(cursorQuery.getString(columnIndexOrThrow5)), cursorQuery.getInt(columnIndexOrThrow6) != 0, cursorQuery.getBlob(columnIndexOrThrow7), cursorQuery.getBlob(columnIndexOrThrow8), OfflineApiRequestDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow9)), cursorQuery.getLong(columnIndexOrThrow10));
                    }
                    return offlineApiRequestEntity;
                } finally {
                    cursorQuery.close();
                }
            }

            protected void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Flow<List<OfflineApiRequestEntity>> fetchUnconfirmedOfflineIntents(final String accountId) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("\n            SELECT *\n                FROM offline_api_request\n                    WHERE account_id = ?\n                        AND deleted = 0\n                        AND (type = 'PROCESS_PAYMENT_INTENT' OR type = 'CONFIRM_SETUP_INTENT')\n        ", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{OfflineStorageConstantsKt.OFFLINE_API_REQUEST}, new Callable<List<OfflineApiRequestEntity>>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.19
            @Override // java.util.concurrent.Callable
            public List<OfflineApiRequestEntity> call() throws Exception {
                String str = null;
                Cursor cursorQuery = DBUtil.query(OfflineApiRequestDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.OFFLINE_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CONNECTION_ID);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_ENTITY_ID);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "type");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DELETED);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        int i = columnIndexOrThrow2;
                        arrayList.add(new OfflineApiRequestEntity(cursorQuery.isNull(columnIndexOrThrow) ? str : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? str : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), OfflineApiRequestDao_Impl.this.__ApiRequestType_stringToEnum(cursorQuery.getString(columnIndexOrThrow5)), cursorQuery.getInt(columnIndexOrThrow6) != 0, cursorQuery.getBlob(columnIndexOrThrow7), cursorQuery.getBlob(columnIndexOrThrow8), OfflineApiRequestDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow9)), cursorQuery.getLong(columnIndexOrThrow10)));
                        columnIndexOrThrow2 = i;
                        str = null;
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

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public List<OfflineApiRequestEntity> fetchUnconfirmedOfflineIntentsWithoutFlow(final String accountId) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("\n            SELECT *\n                FROM offline_api_request\n                    WHERE account_id = ?\n                        AND deleted = 0\n                         AND (type = 'PROCESS_PAYMENT_INTENT' OR type = 'CONFIRM_SETUP_INTENT')\n        ", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        this.__db.assertNotSuspendingTransaction();
        String str = null;
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.OFFLINE_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CONNECTION_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_ENTITY_ID);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "type");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DELETED);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                try {
                    arrayList.add(new OfflineApiRequestEntity(cursorQuery.isNull(columnIndexOrThrow) ? str : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? str : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), __ApiRequestType_stringToEnum(cursorQuery.getString(columnIndexOrThrow5)), cursorQuery.getInt(columnIndexOrThrow6) != 0, cursorQuery.getBlob(columnIndexOrThrow7), cursorQuery.getBlob(columnIndexOrThrow8), this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow9)), cursorQuery.getLong(columnIndexOrThrow10)));
                    roomSQLiteQueryAcquire = roomSQLiteQuery;
                    str = null;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            }
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public List<OfflineApiRequestEntity> fetchUnconfirmedSetupIntents(final String accountId) throws Throwable {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("\n            SELECT *\n                FROM offline_api_request\n                    WHERE account_id = ?\n                        AND deleted = 0\n                        AND type = 'CONFIRM_SETUP_INTENT'\n        ", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        this.__db.assertNotSuspendingTransaction();
        String str = null;
        Cursor cursorQuery = DBUtil.query(this.__db, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.OFFLINE_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CONNECTION_ID);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_ENTITY_ID);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "type");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DELETED);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                roomSQLiteQuery = roomSQLiteQueryAcquire;
                try {
                    arrayList.add(new OfflineApiRequestEntity(cursorQuery.isNull(columnIndexOrThrow) ? str : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? str : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), __ApiRequestType_stringToEnum(cursorQuery.getString(columnIndexOrThrow5)), cursorQuery.getInt(columnIndexOrThrow6) != 0, cursorQuery.getBlob(columnIndexOrThrow7), cursorQuery.getBlob(columnIndexOrThrow8), this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow9)), cursorQuery.getLong(columnIndexOrThrow10)));
                    roomSQLiteQueryAcquire = roomSQLiteQuery;
                    str = null;
                } catch (Throwable th) {
                    th = th;
                    cursorQuery.close();
                    roomSQLiteQuery.release();
                    throw th;
                }
            }
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = roomSQLiteQueryAcquire;
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object hasMoreRequestsAfter(final String entityId, final long rowId, final String accountId, final Continuation<? super Boolean> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(" \n            SELECT EXISTS (\n                SELECT * \n                    FROM offline_api_request \n                        WHERE id >? \n                            AND account_id =? \n                            AND (offline_id =? OR stripe_api_entity_id =?)\n                )\n        ", 4);
        roomSQLiteQueryAcquire.bindLong(1, rowId);
        roomSQLiteQueryAcquire.bindString(2, accountId);
        roomSQLiteQueryAcquire.bindString(3, entityId);
        roomSQLiteQueryAcquire.bindString(4, entityId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<Boolean>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.20
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                boolean zValueOf;
                Cursor cursorQuery = DBUtil.query(OfflineApiRequestDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        zValueOf = Boolean.valueOf(cursorQuery.getInt(0) != 0);
                    } else {
                        zValueOf = false;
                    }
                    return zValueOf;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object getPaymentIntentIdForOfflineId(final String offlineId, final Continuation<? super String> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT stripe_api_entity_id FROM offline_api_request WHERE offline_id = ?", 1);
        roomSQLiteQueryAcquire.bindString(1, offlineId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<String>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.21
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                String string = null;
                Cursor cursorQuery = DBUtil.query(OfflineApiRequestDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    if (cursorQuery.moveToFirst() && !cursorQuery.isNull(0)) {
                        string = cursorQuery.getString(0);
                    }
                    return string;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object getConnectionIds(final String accountId, final Continuation<? super List<Long>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT DISTINCT connection_id FROM offline_api_request WHERE account_id = ?", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<Long>>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.22
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(OfflineApiRequestDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
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

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object getByOfflineIdAndType(final String offlineId, final OfflineApiRequest.ApiRequestType type, final Continuation<? super OfflineApiRequestEntity> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM offline_api_request WHERE offline_id = ? AND type = ?", 2);
        roomSQLiteQueryAcquire.bindString(1, offlineId);
        roomSQLiteQueryAcquire.bindString(2, __ApiRequestType_enumToString(type));
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<OfflineApiRequestEntity>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.23
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineApiRequestEntity call() throws Exception {
                OfflineApiRequestEntity offlineApiRequestEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineApiRequestDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.OFFLINE_ID);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CONNECTION_ID);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.STRIPE_ENTITY_ID);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "type");
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DELETED);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineApiRequestEntity = new OfflineApiRequestEntity(cursorQuery.isNull(columnIndexOrThrow) ? null : cursorQuery.getString(columnIndexOrThrow), cursorQuery.getLong(columnIndexOrThrow2), cursorQuery.isNull(columnIndexOrThrow3) ? null : cursorQuery.getString(columnIndexOrThrow3), cursorQuery.getString(columnIndexOrThrow4), OfflineApiRequestDao_Impl.this.__ApiRequestType_stringToEnum(cursorQuery.getString(columnIndexOrThrow5)), cursorQuery.getInt(columnIndexOrThrow6) != 0, cursorQuery.getBlob(columnIndexOrThrow7), cursorQuery.getBlob(columnIndexOrThrow8), OfflineApiRequestDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow9)), cursorQuery.getLong(columnIndexOrThrow10));
                    }
                    return offlineApiRequestEntity;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Flow<Long> getMostRecentRowId(final String accountId) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT MAX(id) FROM offline_api_request WHERE deleted = 0 AND account_id = ?", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{OfflineStorageConstantsKt.OFFLINE_API_REQUEST}, new Callable<Long>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.24
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                Long lValueOf = null;
                Cursor cursorQuery = DBUtil.query(OfflineApiRequestDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    if (cursorQuery.moveToFirst() && !cursorQuery.isNull(0)) {
                        lValueOf = Long.valueOf(cursorQuery.getLong(0));
                    }
                    return lValueOf;
                } finally {
                    cursorQuery.close();
                }
            }

            protected void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // com.stripe.offlinemode.storage.OfflineApiRequestDao
    public Object softDeleteByIntentId(final String[] paymentIds, final Continuation<? super Integer> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Integer>() { // from class: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl.25
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
                sbNewStringBuilder.append("UPDATE offline_api_request SET deleted = 1 WHERE offline_id in (");
                int length = paymentIds.length;
                StringUtil.appendPlaceholders(sbNewStringBuilder, length);
                sbNewStringBuilder.append(") OR stripe_api_entity_id in (");
                StringUtil.appendPlaceholders(sbNewStringBuilder, paymentIds.length);
                sbNewStringBuilder.append(")");
                SupportSQLiteStatement supportSQLiteStatementCompileStatement = OfflineApiRequestDao_Impl.this.__db.compileStatement(sbNewStringBuilder.toString());
                int i = 1;
                for (String str : paymentIds) {
                    supportSQLiteStatementCompileStatement.bindString(i, str);
                    i++;
                }
                int i2 = length + 1;
                for (String str2 : paymentIds) {
                    supportSQLiteStatementCompileStatement.bindString(i2, str2);
                    i2++;
                }
                OfflineApiRequestDao_Impl.this.__db.beginTransaction();
                try {
                    Integer numValueOf = Integer.valueOf(supportSQLiteStatementCompileStatement.executeUpdateDelete());
                    OfflineApiRequestDao_Impl.this.__db.setTransactionSuccessful();
                    return numValueOf;
                } finally {
                    OfflineApiRequestDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.OfflineApiRequestDao_Impl$26, reason: invalid class name */
    static /* synthetic */ class AnonymousClass26 {
        static final /* synthetic */ int[] $SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType;

        static {
            int[] iArr = new int[OfflineApiRequest.ApiRequestType.values().length];
            $SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType = iArr;
            try {
                iArr[OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType[OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType[OfflineApiRequest.ApiRequestType.CREATE_SETUP_INTENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType[OfflineApiRequest.ApiRequestType.CONFIRM_SETUP_INTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String __ApiRequestType_enumToString(final OfflineApiRequest.ApiRequestType _value) {
        int i = AnonymousClass26.$SwitchMap$com$stripe$proto$model$offline_mode$OfflineApiRequest$ApiRequestType[_value.ordinal()];
        if (i == 1) {
            return "CREATE_PAYMENT_INTENT";
        }
        if (i == 2) {
            return "PROCESS_PAYMENT_INTENT";
        }
        if (i == 3) {
            return "CREATE_SETUP_INTENT";
        }
        if (i == 4) {
            return "CONFIRM_SETUP_INTENT";
        }
        throw new IllegalArgumentException("Can't convert enum to string, unknown enum value: " + _value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OfflineApiRequest.ApiRequestType __ApiRequestType_stringToEnum(final String _value) {
        _value.hashCode();
        switch (_value) {
            case "PROCESS_PAYMENT_INTENT":
                return OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT;
            case "CONFIRM_SETUP_INTENT":
                return OfflineApiRequest.ApiRequestType.CONFIRM_SETUP_INTENT;
            case "CREATE_SETUP_INTENT":
                return OfflineApiRequest.ApiRequestType.CREATE_SETUP_INTENT;
            case "CREATE_PAYMENT_INTENT":
                return OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT;
            default:
                throw new IllegalArgumentException("Can't convert value to enum, unknown value: " + _value);
        }
    }
}
