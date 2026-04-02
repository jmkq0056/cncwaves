package j3;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import n3.g;
import rx.schedulers.Schedulers;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private final org.greenrobot.greendao.database.a db;
    private final Map<Class<?>, a<?, ?>> entityToDao = new HashMap();
    private volatile o3.b rxTxIo;
    private volatile o3.b rxTxPlain;

    public c(org.greenrobot.greendao.database.a aVar) {
        this.db = aVar;
    }

    public <V> V callInTx(Callable<V> callable) {
        ((t1.b) this.db).a();
        try {
            V vCall = callable.call();
            ((t1.b) this.db).F();
            return vCall;
        } finally {
            ((t1.b) this.db).p();
        }
    }

    public <V> V callInTxNoException(Callable<V> callable) {
        ((t1.b) this.db).a();
        try {
            try {
                V vCall = callable.call();
                ((t1.b) this.db).F();
                return vCall;
            } catch (Exception e4) {
                throw new d("Callable failed", e4);
            }
        } finally {
            ((t1.b) this.db).p();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void delete(T t3) {
        getDao(t3.getClass()).delete(t3);
    }

    public <T> void deleteAll(Class<T> cls) {
        getDao(cls).deleteAll();
    }

    public Collection<a<?, ?>> getAllDaos() {
        return Collections.unmodifiableCollection(this.entityToDao.values());
    }

    public a<?, ?> getDao(Class<? extends Object> cls) {
        a<?, ?> aVar = this.entityToDao.get(cls);
        if (aVar != null) {
            return aVar;
        }
        throw new d("No DAO registered for " + cls);
    }

    public org.greenrobot.greendao.database.a getDatabase() {
        return this.db;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> long insert(T t3) {
        return getDao(t3.getClass()).insert(t3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> long insertOrReplace(T t3) {
        return getDao(t3.getClass()).insertOrReplace(t3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T, K> T load(Class<T> cls, K k4) {
        return (T) getDao(cls).load(k4);
    }

    public <T, K> List<T> loadAll(Class<T> cls) {
        return (List<T>) getDao(cls).loadAll();
    }

    public <T> g<T> queryBuilder(Class<T> cls) {
        return (g<T>) getDao(cls).queryBuilder();
    }

    public <T, K> List<T> queryRaw(Class<T> cls, String str, String... strArr) {
        return (List<T>) getDao(cls).queryRaw(str, strArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void refresh(T t3) {
        getDao(t3.getClass()).refresh(t3);
    }

    public <T> void registerDao(Class<T> cls, a<T, ?> aVar) {
        this.entityToDao.put(cls, aVar);
    }

    public void runInTx(Runnable runnable) {
        ((t1.b) this.db).a();
        try {
            runnable.run();
            ((t1.b) this.db).F();
        } finally {
            ((t1.b) this.db).p();
        }
    }

    public o3.b rxTx() {
        if (this.rxTxIo == null) {
            this.rxTxIo = new o3.b(this, Schedulers.io());
        }
        return this.rxTxIo;
    }

    public o3.b rxTxPlain() {
        if (this.rxTxPlain == null) {
            this.rxTxPlain = new o3.b(this);
        }
        return this.rxTxPlain;
    }

    public k3.c startAsyncSession() {
        return new k3.c(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void update(T t3) {
        getDao(t3.getClass()).update(t3);
    }
}
