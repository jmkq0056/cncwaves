package j3;

import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.support.v4.media.f;
import android.util.Log;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import n3.g;
import rx.schedulers.Schedulers;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T, K> {
    public final m3.a config;
    public final org.greenrobot.greendao.database.a db;
    public final l3.a<K, T> identityScope;
    public final l3.b<T> identityScopeLong;
    public final boolean isStandardSQLite;
    public final int pkOrdinal;
    private volatile o3.a<T, K> rxDao;
    private volatile o3.a<T, K> rxDaoPlain;
    public final c session;
    public final m3.e statements;

    public a(m3.a aVar) {
        this(aVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void deleteByKeyInsideSynchronized(K k4, org.greenrobot.greendao.database.c cVar) {
        if (k4 instanceof Long) {
            ((t1.b) cVar).e(1, ((Long) k4).longValue());
        } else {
            if (k4 == 0) {
                throw new d("Cannot delete entity, key is null");
            }
            ((t1.b) cVar).g(1, k4.toString());
        }
        ((t1.b) cVar).t();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[Catch: all -> 0x003c, TryCatch #1 {all -> 0x003c, blocks: (B:10:0x0021, B:11:0x0025, B:13:0x002b, B:15:0x0038, B:19:0x0040, B:20:0x0044, B:22:0x004a, B:24:0x0053), top: B:49:0x0021, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0063 A[Catch: all -> 0x007f, TryCatch #2 {, blocks: (B:4:0x0011, B:6:0x0015, B:30:0x005f, B:32:0x0063, B:33:0x0066, B:26:0x0057, B:28:0x005b, B:29:0x005e, B:10:0x0021, B:11:0x0025, B:13:0x002b, B:15:0x0038, B:19:0x0040, B:20:0x0044, B:22:0x004a, B:24:0x0053), top: B:51:0x0011, outer: #0, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void deleteInTxInternal(java.lang.Iterable<T> r4, java.lang.Iterable<K> r5) {
        /*
            r3 = this;
            r3.assertSinglePk()
            m3.e r0 = r3.statements
            org.greenrobot.greendao.database.c r0 = r0.a()
            org.greenrobot.greendao.database.a r1 = r3.db
            t1.b r1 = (t1.b) r1
            r1.a()
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L82
            l3.a<K, T> r1 = r3.identityScope     // Catch: java.lang.Throwable -> L7f
            if (r1 == 0) goto L1e
            r1.e()     // Catch: java.lang.Throwable -> L7f
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L7f
            r1.<init>()     // Catch: java.lang.Throwable -> L7f
            goto L1f
        L1e:
            r1 = 0
        L1f:
            if (r4 == 0) goto L3e
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L3c
        L25:
            boolean r2 = r4.hasNext()     // Catch: java.lang.Throwable -> L3c
            if (r2 == 0) goto L3e
            java.lang.Object r2 = r4.next()     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r2 = r3.getKeyVerified(r2)     // Catch: java.lang.Throwable -> L3c
            r3.deleteByKeyInsideSynchronized(r2, r0)     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L25
            r1.add(r2)     // Catch: java.lang.Throwable -> L3c
            goto L25
        L3c:
            r4 = move-exception
            goto L57
        L3e:
            if (r5 == 0) goto L5f
            java.util.Iterator r4 = r5.iterator()     // Catch: java.lang.Throwable -> L3c
        L44:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L5f
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L3c
            r3.deleteByKeyInsideSynchronized(r5, r0)     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L44
            r1.add(r5)     // Catch: java.lang.Throwable -> L3c
            goto L44
        L57:
            l3.a<K, T> r5 = r3.identityScope     // Catch: java.lang.Throwable -> L7f
            if (r5 == 0) goto L5e
            r5.c()     // Catch: java.lang.Throwable -> L7f
        L5e:
            throw r4     // Catch: java.lang.Throwable -> L7f
        L5f:
            l3.a<K, T> r4 = r3.identityScope     // Catch: java.lang.Throwable -> L7f
            if (r4 == 0) goto L66
            r4.c()     // Catch: java.lang.Throwable -> L7f
        L66:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7f
            org.greenrobot.greendao.database.a r4 = r3.db     // Catch: java.lang.Throwable -> L82
            t1.b r4 = (t1.b) r4     // Catch: java.lang.Throwable -> L82
            r4.F()     // Catch: java.lang.Throwable -> L82
            if (r1 == 0) goto L77
            l3.a<K, T> r4 = r3.identityScope     // Catch: java.lang.Throwable -> L82
            if (r4 == 0) goto L77
            r4.d(r1)     // Catch: java.lang.Throwable -> L82
        L77:
            org.greenrobot.greendao.database.a r4 = r3.db
            t1.b r4 = (t1.b) r4
            r4.p()
            return
        L7f:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7f
            throw r4     // Catch: java.lang.Throwable -> L82
        L82:
            r4 = move-exception
            org.greenrobot.greendao.database.a r5 = r3.db
            t1.b r5 = (t1.b) r5
            r5.p()
            goto L8c
        L8b:
            throw r4
        L8c:
            goto L8b
        */
        throw new UnsupportedOperationException("Method not decompiled: j3.a.deleteInTxInternal(java.lang.Iterable, java.lang.Iterable):void");
    }

    private long executeInsert(T t3, org.greenrobot.greendao.database.c cVar, boolean z3) {
        long jInsertInsideTx;
        if (((t1.b) this.db).B()) {
            jInsertInsideTx = insertInsideTx(t3, cVar);
        } else {
            ((t1.b) this.db).a();
            try {
                jInsertInsideTx = insertInsideTx(t3, cVar);
                ((t1.b) this.db).F();
            } finally {
                ((t1.b) this.db).p();
            }
        }
        if (z3) {
            updateKeyAfterInsertAndAttach(t3, jInsertInsideTx, true);
        }
        return jInsertInsideTx;
    }

    private void executeInsertInTx(org.greenrobot.greendao.database.c cVar, Iterable<T> iterable, boolean z3) {
        ((t1.b) this.db).a();
        try {
            synchronized (cVar) {
                l3.a<K, T> aVar = this.identityScope;
                if (aVar != null) {
                    aVar.e();
                }
                try {
                    if (this.isStandardSQLite) {
                        SQLiteStatement sQLiteStatement = (SQLiteStatement) ((t1.b) cVar).z();
                        for (T t3 : iterable) {
                            bindValues(sQLiteStatement, t3);
                            if (z3) {
                                updateKeyAfterInsertAndAttach(t3, sQLiteStatement.executeInsert(), false);
                            } else {
                                sQLiteStatement.execute();
                            }
                        }
                    } else {
                        for (T t4 : iterable) {
                            bindValues(cVar, t4);
                            if (z3) {
                                updateKeyAfterInsertAndAttach(t4, ((t1.b) cVar).v(), false);
                            } else {
                                ((t1.b) cVar).t();
                            }
                        }
                    }
                    l3.a<K, T> aVar2 = this.identityScope;
                    if (aVar2 != null) {
                        aVar2.c();
                    }
                } catch (Throwable th) {
                    l3.a<K, T> aVar3 = this.identityScope;
                    if (aVar3 != null) {
                        aVar3.c();
                    }
                    throw th;
                }
            }
            ((t1.b) this.db).F();
        } finally {
            ((t1.b) this.db).p();
        }
    }

    private long insertInsideTx(T t3, org.greenrobot.greendao.database.c cVar) {
        synchronized (cVar) {
            if (!this.isStandardSQLite) {
                bindValues(cVar, t3);
                return ((t1.b) cVar).v();
            }
            SQLiteStatement sQLiteStatement = (SQLiteStatement) ((t1.b) cVar).z();
            bindValues(sQLiteStatement, t3);
            return sQLiteStatement.executeInsert();
        }
    }

    private void loadAllUnlockOnWindowBounds(Cursor cursor, CursorWindow cursorWindow, List<T> list) {
        int numRows = cursorWindow.getNumRows() + cursorWindow.getStartPosition();
        int i4 = 0;
        while (true) {
            list.add(loadCurrent(cursor, 0, false));
            int i5 = i4 + 1;
            if (i5 >= numRows) {
                CursorWindow cursorWindowMoveToNextUnlocked = moveToNextUnlocked(cursor);
                if (cursorWindowMoveToNextUnlocked == null) {
                    return;
                }
                numRows = cursorWindowMoveToNextUnlocked.getNumRows() + cursorWindowMoveToNextUnlocked.getStartPosition();
            } else if (!cursor.moveToNext()) {
                return;
            }
            i4 = i5 + 1;
        }
    }

    private CursorWindow moveToNextUnlocked(Cursor cursor) {
        this.identityScope.c();
        try {
            return cursor.moveToNext() ? ((CrossProcessCursor) cursor).getWindow() : null;
        } finally {
            this.identityScope.e();
        }
    }

    public void assertSinglePk() {
        if (this.config.f2577e.length == 1) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this);
        sb.append(" (");
        throw new d(android.support.v4.media.b.a(sb, this.config.f2574b, ") does not have a single-column primary key"));
    }

    public void attachEntity(T t3) {
    }

    public final void attachEntity(K k4, T t3, boolean z3) {
        attachEntity(t3);
        l3.a<K, T> aVar = this.identityScope;
        if (aVar == null || k4 == null) {
            return;
        }
        if (z3) {
            aVar.put(k4, t3);
        } else {
            aVar.a(k4, t3);
        }
    }

    public abstract void bindValues(SQLiteStatement sQLiteStatement, T t3);

    public abstract void bindValues(org.greenrobot.greendao.database.c cVar, T t3);

    public long count() {
        m3.e eVar = this.statements;
        if (eVar.f2602i == null) {
            String str = eVar.f2595b;
            int i4 = m3.d.f2593a;
            eVar.f2602i = ((t1.b) eVar.f2594a).m("SELECT COUNT(*) FROM \"" + str + '\"');
        }
        return ((t1.b) eVar.f2602i).H();
    }

    public void delete(T t3) {
        assertSinglePk();
        deleteByKey(getKeyVerified(t3));
    }

    public void deleteAll() {
        ((t1.b) this.db).r(android.support.v4.media.b.a(f.a("DELETE FROM '"), this.config.f2574b, "'"));
        l3.a<K, T> aVar = this.identityScope;
        if (aVar != null) {
            aVar.clear();
        }
    }

    public void deleteByKey(K k4) {
        assertSinglePk();
        org.greenrobot.greendao.database.c cVarA = this.statements.a();
        if (((t1.b) this.db).B()) {
            synchronized (cVarA) {
                deleteByKeyInsideSynchronized(k4, cVarA);
            }
        } else {
            ((t1.b) this.db).a();
            try {
                synchronized (cVarA) {
                    deleteByKeyInsideSynchronized(k4, cVarA);
                }
                ((t1.b) this.db).F();
            } finally {
                ((t1.b) this.db).p();
            }
        }
        l3.a<K, T> aVar = this.identityScope;
        if (aVar != null) {
            aVar.remove(k4);
        }
    }

    public void deleteByKeyInTx(Iterable<K> iterable) {
        deleteInTxInternal(null, iterable);
    }

    public void deleteInTx(Iterable<T> iterable) {
        deleteInTxInternal(iterable, null);
    }

    public boolean detach(T t3) {
        if (this.identityScope == null) {
            return false;
        }
        return this.identityScope.b(getKeyVerified(t3), t3);
    }

    public void detachAll() {
        l3.a<K, T> aVar = this.identityScope;
        if (aVar != null) {
            aVar.clear();
        }
    }

    public String[] getAllColumns() {
        return this.config.f2576d;
    }

    public org.greenrobot.greendao.database.a getDatabase() {
        return this.db;
    }

    public abstract K getKey(T t3);

    public K getKeyVerified(T t3) {
        K key = getKey(t3);
        if (key != null) {
            return key;
        }
        Objects.requireNonNull(t3, "Entity may not be null");
        throw new d("Entity has no key");
    }

    public String[] getNonPkColumns() {
        return this.config.f2578f;
    }

    public String[] getPkColumns() {
        return this.config.f2577e;
    }

    public e getPkProperty() {
        return this.config.f2579g;
    }

    public e[] getProperties() {
        return this.config.f2575c;
    }

    public c getSession() {
        return this.session;
    }

    public m3.e getStatements() {
        return this.config.f2581i;
    }

    public String getTablename() {
        return this.config.f2574b;
    }

    public abstract boolean hasKey(T t3);

    public long insert(T t3) {
        return executeInsert(t3, this.statements.c(), true);
    }

    public void insertInTx(Iterable<T> iterable) {
        insertInTx(iterable, isEntityUpdateable());
    }

    public long insertOrReplace(T t3) {
        return executeInsert(t3, this.statements.b(), true);
    }

    public void insertOrReplaceInTx(Iterable<T> iterable, boolean z3) {
        executeInsertInTx(this.statements.b(), iterable, z3);
    }

    public long insertWithoutSettingPk(T t3) {
        return executeInsert(t3, this.statements.b(), false);
    }

    public abstract boolean isEntityUpdateable();

    public T load(K k4) {
        T t3;
        assertSinglePk();
        if (k4 == null) {
            return null;
        }
        l3.a<K, T> aVar = this.identityScope;
        return (aVar == null || (t3 = aVar.get(k4)) == null) ? loadUniqueAndCloseCursor(((t1.b) this.db).D(this.statements.e(), new String[]{k4.toString()})) : t3;
    }

    public List<T> loadAll() {
        return loadAllAndCloseCursor(((t1.b) this.db).D(this.statements.d(), null));
    }

    public List<T> loadAllAndCloseCursor(Cursor cursor) {
        try {
            return loadAllFromCursor(cursor);
        } finally {
            cursor.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<T> loadAllFromCursor(android.database.Cursor r7) {
        /*
            r6 = this;
            int r0 = r7.getCount()
            if (r0 != 0) goto Lc
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            return r7
        Lc:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>(r0)
            r2 = 0
            boolean r3 = r7 instanceof android.database.CrossProcessCursor
            r4 = 0
            if (r3 == 0) goto L49
            r2 = r7
            android.database.CrossProcessCursor r2 = (android.database.CrossProcessCursor) r2
            android.database.CursorWindow r2 = r2.getWindow()
            if (r2 == 0) goto L49
            int r3 = r2.getNumRows()
            if (r3 != r0) goto L2d
            m3.b r7 = new m3.b
            r7.<init>(r2)
            r3 = 1
            goto L4a
        L2d:
            java.lang.String r3 = "Window vs. result size: "
            java.lang.StringBuilder r3 = android.support.v4.media.f.a(r3)
            int r5 = r2.getNumRows()
            r3.append(r5)
            java.lang.String r5 = "/"
            r3.append(r5)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            q0.a.f(r3)
        L49:
            r3 = 0
        L4a:
            boolean r5 = r7.moveToFirst()
            if (r5 == 0) goto L86
            l3.a<K, T> r5 = r6.identityScope
            if (r5 == 0) goto L5c
            r5.e()
            l3.a<K, T> r5 = r6.identityScope
            r5.g(r0)
        L5c:
            if (r3 != 0) goto L68
            if (r2 == 0) goto L68
            l3.a<K, T> r0 = r6.identityScope     // Catch: java.lang.Throwable -> L7d
            if (r0 == 0) goto L68
            r6.loadAllUnlockOnWindowBounds(r7, r2, r1)     // Catch: java.lang.Throwable -> L7d
            goto L75
        L68:
            java.lang.Object r0 = r6.loadCurrent(r7, r4, r4)     // Catch: java.lang.Throwable -> L7d
            r1.add(r0)     // Catch: java.lang.Throwable -> L7d
            boolean r0 = r7.moveToNext()     // Catch: java.lang.Throwable -> L7d
            if (r0 != 0) goto L68
        L75:
            l3.a<K, T> r7 = r6.identityScope
            if (r7 == 0) goto L86
            r7.c()
            goto L86
        L7d:
            r7 = move-exception
            l3.a<K, T> r0 = r6.identityScope
            if (r0 == 0) goto L85
            r0.c()
        L85:
            throw r7
        L86:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: j3.a.loadAllFromCursor(android.database.Cursor):java.util.List");
    }

    public T loadByRowId(long j4) {
        String[] strArr = {Long.toString(j4)};
        org.greenrobot.greendao.database.a aVar = this.db;
        m3.e eVar = this.statements;
        if (eVar.f2605l == null) {
            eVar.f2605l = eVar.d() + "WHERE ROWID=?";
        }
        return loadUniqueAndCloseCursor(((t1.b) aVar).D(eVar.f2605l, strArr));
    }

    public final T loadCurrent(Cursor cursor, int i4, boolean z3) {
        T tH;
        if (this.identityScopeLong != null) {
            if (i4 != 0 && cursor.isNull(this.pkOrdinal + i4)) {
                return null;
            }
            long j4 = cursor.getLong(this.pkOrdinal + i4);
            l3.b<T> bVar = this.identityScopeLong;
            if (z3) {
                tH = bVar.h(j4);
            } else {
                Reference<T> referenceA = bVar.f2456a.a(j4);
                tH = referenceA != null ? referenceA.get() : null;
            }
            if (tH != null) {
                return tH;
            }
            T entity = readEntity(cursor, i4);
            attachEntity(entity);
            if (z3) {
                this.identityScopeLong.i(j4, entity);
            } else {
                this.identityScopeLong.f2456a.b(j4, new WeakReference(entity));
            }
            return entity;
        }
        if (this.identityScope == null) {
            if (i4 != 0 && readKey(cursor, i4) == null) {
                return null;
            }
            T entity2 = readEntity(cursor, i4);
            attachEntity(entity2);
            return entity2;
        }
        K key = readKey(cursor, i4);
        if (i4 != 0 && key == null) {
            return null;
        }
        l3.a<K, T> aVar = this.identityScope;
        T tF = z3 ? aVar.get(key) : aVar.f(key);
        if (tF != null) {
            return tF;
        }
        T entity3 = readEntity(cursor, i4);
        attachEntity(key, entity3, z3);
        return entity3;
    }

    public final <O> O loadCurrentOther(a<O, ?> aVar, Cursor cursor, int i4) {
        return aVar.loadCurrent(cursor, i4, true);
    }

    public T loadUnique(Cursor cursor) {
        if (!cursor.moveToFirst()) {
            return null;
        }
        if (cursor.isLast()) {
            return loadCurrent(cursor, 0, true);
        }
        StringBuilder sbA = f.a("Expected unique result, but count was ");
        sbA.append(cursor.getCount());
        throw new d(sbA.toString());
    }

    public T loadUniqueAndCloseCursor(Cursor cursor) {
        try {
            return loadUnique(cursor);
        } finally {
            cursor.close();
        }
    }

    public g<T> queryBuilder() {
        return new g<>(this);
    }

    public List<T> queryRaw(String str, String... strArr) {
        return loadAllAndCloseCursor(((t1.b) this.db).D(this.statements.d() + str, strArr));
    }

    public n3.f<T> queryRawCreate(String str, Object... objArr) {
        return queryRawCreateListArgs(str, Arrays.asList(objArr));
    }

    public n3.f<T> queryRawCreateListArgs(String str, Collection<Object> collection) {
        return n3.f.c(this, this.statements.d() + str, collection.toArray(), -1, -1);
    }

    public abstract T readEntity(Cursor cursor, int i4);

    public abstract void readEntity(Cursor cursor, T t3, int i4);

    public abstract K readKey(Cursor cursor, int i4);

    public void refresh(T t3) {
        assertSinglePk();
        K keyVerified = getKeyVerified(t3);
        Cursor cursorD = ((t1.b) this.db).D(this.statements.e(), new String[]{keyVerified.toString()});
        try {
            if (!cursorD.moveToFirst()) {
                throw new d("Entity does not exist in the database anymore: " + t3.getClass() + " with key " + keyVerified);
            }
            if (cursorD.isLast()) {
                readEntity(cursorD, t3, 0);
                attachEntity(keyVerified, t3, true);
            } else {
                throw new d("Expected unique result, but count was " + cursorD.getCount());
            }
        } finally {
            cursorD.close();
        }
    }

    public o3.a<T, K> rx() {
        if (this.rxDao == null) {
            this.rxDao = new o3.a<>(this, Schedulers.io());
        }
        return this.rxDao;
    }

    public o3.a<T, K> rxPlain() {
        if (this.rxDaoPlain == null) {
            this.rxDaoPlain = new o3.a<>(this);
        }
        return this.rxDaoPlain;
    }

    public void save(T t3) {
        if (hasKey(t3)) {
            update(t3);
        } else {
            insert(t3);
        }
    }

    public void saveInTx(T... tArr) {
        saveInTx(Arrays.asList(tArr));
    }

    public void update(T t3) {
        assertSinglePk();
        org.greenrobot.greendao.database.c cVarF = this.statements.f();
        if (((t1.b) this.db).B()) {
            synchronized (cVarF) {
                if (this.isStandardSQLite) {
                    updateInsideSynchronized((Object) t3, (SQLiteStatement) ((t1.b) cVarF).z(), true);
                } else {
                    updateInsideSynchronized((Object) t3, cVarF, true);
                }
            }
            return;
        }
        ((t1.b) this.db).a();
        try {
            synchronized (cVarF) {
                updateInsideSynchronized((Object) t3, cVarF, true);
            }
            ((t1.b) this.db).F();
        } finally {
            ((t1.b) this.db).p();
        }
    }

    public void updateInTx(Iterable<T> iterable) {
        org.greenrobot.greendao.database.c cVarF = this.statements.f();
        ((t1.b) this.db).a();
        try {
            synchronized (cVarF) {
                l3.a<K, T> aVar = this.identityScope;
                if (aVar != null) {
                    aVar.e();
                }
                try {
                    if (this.isStandardSQLite) {
                        SQLiteStatement sQLiteStatement = (SQLiteStatement) ((t1.b) cVarF).z();
                        Iterator<T> it = iterable.iterator();
                        while (it.hasNext()) {
                            updateInsideSynchronized((Object) it.next(), sQLiteStatement, false);
                        }
                    } else {
                        Iterator<T> it2 = iterable.iterator();
                        while (it2.hasNext()) {
                            updateInsideSynchronized((Object) it2.next(), cVarF, false);
                        }
                    }
                    l3.a<K, T> aVar2 = this.identityScope;
                    if (aVar2 != null) {
                        aVar2.c();
                    }
                } catch (Throwable th) {
                    l3.a<K, T> aVar3 = this.identityScope;
                    if (aVar3 != null) {
                        aVar3.c();
                    }
                    throw th;
                }
            }
            ((t1.b) this.db).F();
            try {
                ((t1.b) this.db).p();
                e = null;
            } catch (RuntimeException e4) {
                throw e4;
            }
        } catch (RuntimeException e5) {
            e = e5;
            try {
                ((t1.b) this.db).p();
            } catch (RuntimeException e6) {
                q0.a.A("Could not end transaction (rethrowing initial exception)", e6);
                throw e;
            }
        } catch (Throwable th2) {
            try {
                ((t1.b) this.db).p();
                throw th2;
            } catch (RuntimeException e7) {
                throw e7;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateInsideSynchronized(T t3, org.greenrobot.greendao.database.c cVar, boolean z3) {
        bindValues(cVar, t3);
        int length = this.config.f2576d.length + 1;
        Object key = getKey(t3);
        if (key instanceof Long) {
            ((t1.b) cVar).e(length, ((Long) key).longValue());
        } else {
            if (key == null) {
                throw new d("Cannot update entity without key - was it inserted before?");
            }
            ((t1.b) cVar).g(length, key.toString());
        }
        ((t1.b) cVar).t();
        attachEntity(key, t3, z3);
    }

    public abstract K updateKeyAfterInsert(T t3, long j4);

    public void updateKeyAfterInsertAndAttach(T t3, long j4, boolean z3) {
        if (j4 != -1) {
            attachEntity(updateKeyAfterInsert(t3, j4), t3, z3);
        } else {
            Log.w("greenDAO", "Could not insert row (executeInsert returned -1)");
        }
    }

    public a(m3.a aVar, c cVar) {
        this.config = aVar;
        this.session = cVar;
        org.greenrobot.greendao.database.a aVar2 = aVar.f2573a;
        this.db = aVar2;
        this.isStandardSQLite = ((t1.b) aVar2).x() instanceof SQLiteDatabase;
        l3.b<T> bVar = (l3.a<K, T>) aVar.f2582j;
        this.identityScope = bVar;
        if (bVar instanceof l3.b) {
            this.identityScopeLong = bVar;
        } else {
            this.identityScopeLong = null;
        }
        this.statements = aVar.f2581i;
        e eVar = aVar.f2579g;
        this.pkOrdinal = eVar != null ? eVar.f2030a : -1;
    }

    public void deleteByKeyInTx(K... kArr) {
        deleteInTxInternal(null, Arrays.asList(kArr));
    }

    public void deleteInTx(T... tArr) {
        deleteInTxInternal(Arrays.asList(tArr), null);
    }

    public void insertInTx(T... tArr) {
        insertInTx(Arrays.asList(tArr), isEntityUpdateable());
    }

    public void saveInTx(Iterable<T> iterable) {
        Iterator<T> it = iterable.iterator();
        int i4 = 0;
        int i5 = 0;
        while (it.hasNext()) {
            if (hasKey(it.next())) {
                i4++;
            } else {
                i5++;
            }
        }
        if (i4 <= 0 || i5 <= 0) {
            if (i5 > 0) {
                insertInTx(iterable);
                return;
            } else {
                if (i4 > 0) {
                    updateInTx(iterable);
                    return;
                }
                return;
            }
        }
        ArrayList arrayList = new ArrayList(i4);
        ArrayList arrayList2 = new ArrayList(i5);
        for (T t3 : iterable) {
            if (hasKey(t3)) {
                arrayList.add(t3);
            } else {
                arrayList2.add(t3);
            }
        }
        ((t1.b) this.db).a();
        try {
            updateInTx(arrayList);
            insertInTx(arrayList2);
            ((t1.b) this.db).F();
        } finally {
            ((t1.b) this.db).p();
        }
    }

    public void insertInTx(Iterable<T> iterable, boolean z3) {
        executeInsertInTx(this.statements.c(), iterable, z3);
    }

    public void insertOrReplaceInTx(Iterable<T> iterable) {
        insertOrReplaceInTx(iterable, isEntityUpdateable());
    }

    public void insertOrReplaceInTx(T... tArr) {
        insertOrReplaceInTx(Arrays.asList(tArr), isEntityUpdateable());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateInsideSynchronized(T t3, SQLiteStatement sQLiteStatement, boolean z3) {
        bindValues(sQLiteStatement, t3);
        int length = this.config.f2576d.length + 1;
        Object key = getKey(t3);
        if (key instanceof Long) {
            sQLiteStatement.bindLong(length, ((Long) key).longValue());
        } else if (key != null) {
            sQLiteStatement.bindString(length, key.toString());
        } else {
            throw new d("Cannot update entity without key - was it inserted before?");
        }
        sQLiteStatement.execute();
        attachEntity(key, t3, z3);
    }

    public void updateInTx(T... tArr) {
        updateInTx(Arrays.asList(tArr));
    }
}
