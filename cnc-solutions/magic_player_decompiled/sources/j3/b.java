package j3;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public final Map<Class<? extends a<?, ?>>, m3.a> daoConfigMap = new HashMap();
    public final org.greenrobot.greendao.database.a db;
    public final int schemaVersion;

    public b(org.greenrobot.greendao.database.a aVar, int i4) {
        this.db = aVar;
        this.schemaVersion = i4;
    }

    public org.greenrobot.greendao.database.a getDatabase() {
        return this.db;
    }

    public int getSchemaVersion() {
        return this.schemaVersion;
    }

    public abstract c newSession();

    public abstract c newSession(l3.c cVar);

    public void registerDaoClass(Class<? extends a<?, ?>> cls) {
        this.daoConfigMap.put(cls, new m3.a(this.db, cls));
    }
}
