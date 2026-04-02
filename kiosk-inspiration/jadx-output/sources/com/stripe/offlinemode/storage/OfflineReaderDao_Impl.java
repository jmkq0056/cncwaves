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
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineReaderDao_Impl implements OfflineReaderDao {
    private final DateTimeConverter __dateTimeConverter = new DateTimeConverter();
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<OfflineReaderEntity> __deletionAdapterOfOfflineReaderEntity;
    private final EntityInsertionAdapter<OfflineReaderEntity> __insertionAdapterOfOfflineReaderEntity;
    private final EntityDeletionOrUpdateAdapter<OfflineReaderEntity> __updateAdapterOfOfflineReaderEntity;

    public OfflineReaderDao_Impl(final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfOfflineReaderEntity = new EntityInsertionAdapter<OfflineReaderEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR ABORT INTO `reader` (`serial_number`,`last_activated_timestamp`,`created_timestamp`,`account_id`,`data_blob`,`iv_blob`,`id`) VALUES (?,?,?,?,?,?,nullif(?, 0))";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineReaderEntity entity) {
                statement.bindString(1, entity.getSerialNumber());
                statement.bindLong(2, OfflineReaderDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getLastActivatedAt()));
                statement.bindLong(3, OfflineReaderDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getCreated()));
                statement.bindString(4, entity.getAccountId());
                statement.bindBlob(5, entity.getEncryptedData());
                statement.bindBlob(6, entity.getEncryptionIv());
                statement.bindLong(7, entity.getId());
            }
        };
        this.__deletionAdapterOfOfflineReaderEntity = new EntityDeletionOrUpdateAdapter<OfflineReaderEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "DELETE FROM `reader` WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineReaderEntity entity) {
                statement.bindLong(1, entity.getId());
            }
        };
        this.__updateAdapterOfOfflineReaderEntity = new EntityDeletionOrUpdateAdapter<OfflineReaderEntity>(__db) { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "UPDATE OR ABORT `reader` SET `serial_number` = ?,`last_activated_timestamp` = ?,`created_timestamp` = ?,`account_id` = ?,`data_blob` = ?,`iv_blob` = ?,`id` = ? WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(final SupportSQLiteStatement statement, final OfflineReaderEntity entity) {
                statement.bindString(1, entity.getSerialNumber());
                statement.bindLong(2, OfflineReaderDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getLastActivatedAt()));
                statement.bindLong(3, OfflineReaderDao_Impl.this.__dateTimeConverter.toTimeMs(entity.getCreated()));
                statement.bindString(4, entity.getAccountId());
                statement.bindBlob(5, entity.getEncryptedData());
                statement.bindBlob(6, entity.getEncryptionIv());
                statement.bindLong(7, entity.getId());
                statement.bindLong(8, entity.getId());
            }
        };
    }

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao
    public Object insertAll(final OfflineReaderEntity[] reader, final Continuation<? super List<Long>> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.4
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                OfflineReaderDao_Impl.this.__db.beginTransaction();
                try {
                    List<Long> listInsertAndReturnIdsList = OfflineReaderDao_Impl.this.__insertionAdapterOfOfflineReaderEntity.insertAndReturnIdsList(reader);
                    OfflineReaderDao_Impl.this.__db.setTransactionSuccessful();
                    return listInsertAndReturnIdsList;
                } finally {
                    OfflineReaderDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao
    public Object insert(final OfflineReaderEntity reader, final Continuation<? super Long> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                OfflineReaderDao_Impl.this.__db.beginTransaction();
                try {
                    Long lValueOf = Long.valueOf(OfflineReaderDao_Impl.this.__insertionAdapterOfOfflineReaderEntity.insertAndReturnId(reader));
                    OfflineReaderDao_Impl.this.__db.setTransactionSuccessful();
                    return lValueOf;
                } finally {
                    OfflineReaderDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao
    public Object delete(final OfflineReaderEntity reader, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.6
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                OfflineReaderDao_Impl.this.__db.beginTransaction();
                try {
                    OfflineReaderDao_Impl.this.__deletionAdapterOfOfflineReaderEntity.handle(reader);
                    OfflineReaderDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineReaderDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao
    public Object update(final OfflineReaderEntity reader, final Continuation<? super Unit> $completion) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                OfflineReaderDao_Impl.this.__db.beginTransaction();
                try {
                    OfflineReaderDao_Impl.this.__updateAdapterOfOfflineReaderEntity.handle(reader);
                    OfflineReaderDao_Impl.this.__db.setTransactionSuccessful();
                    return Unit.INSTANCE;
                } finally {
                    OfflineReaderDao_Impl.this.__db.endTransaction();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao, com.stripe.offlinemode.storage.OfflineEntityDao
    public Flow<List<OfflineReaderEntity>> getByAccountId(final String accountId) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM reader WHERE account_id = ? ORDER BY id", 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{OfflineStorageConstantsKt.READER}, new Callable<List<OfflineReaderEntity>>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.8
            @Override // java.util.concurrent.Callable
            public List<OfflineReaderEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(OfflineReaderDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_SERIAL_NUMBER);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new OfflineReaderEntity(cursorQuery.getString(columnIndexOrThrow), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow2)), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow3)), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), cursorQuery.getBlob(columnIndexOrThrow6), cursorQuery.getLong(columnIndexOrThrow7)));
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

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao
    public Object getAll(final int offset, final int limit, final Continuation<? super List<OfflineReaderEntity>> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM reader ORDER BY id LIMIT ? OFFSET ?", 2);
        roomSQLiteQueryAcquire.bindLong(1, limit);
        roomSQLiteQueryAcquire.bindLong(2, offset);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<OfflineReaderEntity>>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.9
            @Override // java.util.concurrent.Callable
            public List<OfflineReaderEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(OfflineReaderDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_SERIAL_NUMBER);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new OfflineReaderEntity(cursorQuery.getString(columnIndexOrThrow), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow2)), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow3)), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), cursorQuery.getBlob(columnIndexOrThrow6), cursorQuery.getLong(columnIndexOrThrow7)));
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao
    public Object getByReaderId(final long id, final Continuation<? super OfflineReaderEntity> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM reader WHERE id = ? LIMIT 1", 1);
        roomSQLiteQueryAcquire.bindLong(1, id);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<OfflineReaderEntity>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineReaderEntity call() throws Exception {
                OfflineReaderEntity offlineReaderEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineReaderDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_SERIAL_NUMBER);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineReaderEntity = new OfflineReaderEntity(cursorQuery.getString(columnIndexOrThrow), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow2)), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow3)), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), cursorQuery.getBlob(columnIndexOrThrow6), cursorQuery.getLong(columnIndexOrThrow7));
                    }
                    return offlineReaderEntity;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao
    public Flow<OfflineReaderEntity> getByIdFlow(final long id) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM reader WHERE id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, id);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{OfflineStorageConstantsKt.READER}, new Callable<OfflineReaderEntity>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineReaderEntity call() throws Exception {
                OfflineReaderEntity offlineReaderEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineReaderDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_SERIAL_NUMBER);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineReaderEntity = new OfflineReaderEntity(cursorQuery.getString(columnIndexOrThrow), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow2)), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow3)), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), cursorQuery.getBlob(columnIndexOrThrow6), cursorQuery.getLong(columnIndexOrThrow7));
                    }
                    return offlineReaderEntity;
                } finally {
                    cursorQuery.close();
                }
            }

            protected void finalize() {
                roomSQLiteQueryAcquire.release();
            }
        });
    }

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao
    public Object getBySerialsForAccount(final String accountId, final List<String> serialNumbers, final Continuation<? super List<OfflineReaderEntity>> $completion) {
        StringBuilder sbNewStringBuilder = StringUtil.newStringBuilder();
        sbNewStringBuilder.append("SELECT * FROM reader WHERE account_id =");
        sbNewStringBuilder.append("?");
        sbNewStringBuilder.append(" AND serial_number in (");
        int size = serialNumbers.size();
        StringUtil.appendPlaceholders(sbNewStringBuilder, size);
        sbNewStringBuilder.append(")");
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire(sbNewStringBuilder.toString(), size + 1);
        roomSQLiteQueryAcquire.bindString(1, accountId);
        Iterator<String> it = serialNumbers.iterator();
        int i = 2;
        while (it.hasNext()) {
            roomSQLiteQueryAcquire.bindString(i, it.next());
            i++;
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<OfflineReaderEntity>>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.12
            @Override // java.util.concurrent.Callable
            public List<OfflineReaderEntity> call() throws Exception {
                Cursor cursorQuery = DBUtil.query(OfflineReaderDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_SERIAL_NUMBER);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(new OfflineReaderEntity(cursorQuery.getString(columnIndexOrThrow), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow2)), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow3)), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), cursorQuery.getBlob(columnIndexOrThrow6), cursorQuery.getLong(columnIndexOrThrow7)));
                    }
                    return arrayList;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    @Override // com.stripe.offlinemode.storage.OfflineReaderDao
    public Object getBySerialAndAccount(final String serialNumber, final String accountId, final Continuation<? super OfflineReaderEntity> $completion) {
        final RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM reader WHERE serial_number = ? AND account_id = ?", 2);
        roomSQLiteQueryAcquire.bindString(1, serialNumber);
        roomSQLiteQueryAcquire.bindString(2, accountId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<OfflineReaderEntity>() { // from class: com.stripe.offlinemode.storage.OfflineReaderDao_Impl.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public OfflineReaderEntity call() throws Exception {
                OfflineReaderEntity offlineReaderEntity = null;
                Cursor cursorQuery = DBUtil.query(OfflineReaderDao_Impl.this.__db, roomSQLiteQueryAcquire, false, null);
                try {
                    int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.READER_SERIAL_NUMBER);
                    int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.LAST_ACTIVATED_TS);
                    int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.CREATED_TS);
                    int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ACCOUNT_ID);
                    int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.DATA_BLOB);
                    int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ENCRYPTION_IV_BLOB);
                    int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, OfflineStorageConstantsKt.ID);
                    if (cursorQuery.moveToFirst()) {
                        offlineReaderEntity = new OfflineReaderEntity(cursorQuery.getString(columnIndexOrThrow), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow2)), OfflineReaderDao_Impl.this.__dateTimeConverter.toDate(cursorQuery.getLong(columnIndexOrThrow3)), cursorQuery.getString(columnIndexOrThrow4), cursorQuery.getBlob(columnIndexOrThrow5), cursorQuery.getBlob(columnIndexOrThrow6), cursorQuery.getLong(columnIndexOrThrow7));
                    }
                    return offlineReaderEntity;
                } finally {
                    cursorQuery.close();
                    roomSQLiteQueryAcquire.release();
                }
            }
        }, $completion);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }
}
