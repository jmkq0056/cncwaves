package cn.huidu.lcd.core.db.entity;

import cn.huidu.lcd.core.db.greendao.DaoSession;
import cn.huidu.lcd.core.db.greendao.PlayHistoryDao;
import j3.d;

/* JADX INFO: loaded from: classes.dex */
public class PlayHistory {
    private transient DaoSession daoSession;
    private int duration;
    private Long id;
    private double lat;
    private double lng;
    private transient PlayHistoryDao myDao;
    private long timestamp;
    private String uuid;
    private int version;
    private ProgramVisitors visitors;
    private Long visitorsId;
    private transient Long visitors__resolvedKey;

    public PlayHistory(Long l4, String str, long j4, int i4, int i5, double d4, double d5, Long l5) {
        this.id = l4;
        this.uuid = str;
        this.timestamp = j4;
        this.duration = i4;
        this.version = i5;
        this.lat = d4;
        this.lng = d5;
        this.visitorsId = l5;
    }

    public void __setDaoSession(DaoSession daoSession) {
        this.daoSession = daoSession;
        this.myDao = daoSession != null ? daoSession.getPlayHistoryDao() : null;
    }

    public void delete() {
        PlayHistoryDao playHistoryDao = this.myDao;
        if (playHistoryDao == null) {
            throw new d("Entity is detached from DAO context");
        }
        playHistoryDao.delete(this);
    }

    public int getDuration() {
        return this.duration;
    }

    public Long getId() {
        return this.id;
    }

    public double getLat() {
        return this.lat;
    }

    public double getLng() {
        return this.lng;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public String getUuid() {
        return this.uuid;
    }

    public int getVersion() {
        return this.version;
    }

    public ProgramVisitors getVisitors() {
        Long l4 = this.visitorsId;
        Long l5 = this.visitors__resolvedKey;
        if (l5 == null || !l5.equals(l4)) {
            DaoSession daoSession = this.daoSession;
            if (daoSession == null) {
                throw new d("Entity is detached from DAO context");
            }
            ProgramVisitors programVisitorsLoad = daoSession.getProgramVisitorsDao().load(l4);
            synchronized (this) {
                this.visitors = programVisitorsLoad;
                this.visitors__resolvedKey = l4;
            }
        }
        return this.visitors;
    }

    public Long getVisitorsId() {
        return this.visitorsId;
    }

    public void refresh() {
        PlayHistoryDao playHistoryDao = this.myDao;
        if (playHistoryDao == null) {
            throw new d("Entity is detached from DAO context");
        }
        playHistoryDao.refresh(this);
    }

    public void setDuration(int i4) {
        this.duration = i4;
    }

    public void setId(Long l4) {
        this.id = l4;
    }

    public void setLat(double d4) {
        this.lat = d4;
    }

    public void setLng(double d4) {
        this.lng = d4;
    }

    public void setTimestamp(long j4) {
        this.timestamp = j4;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setVersion(int i4) {
        this.version = i4;
    }

    public void setVisitors(ProgramVisitors programVisitors) {
        synchronized (this) {
            this.visitors = programVisitors;
            Long id = programVisitors == null ? null : programVisitors.getId();
            this.visitorsId = id;
            this.visitors__resolvedKey = id;
        }
    }

    public void setVisitorsId(Long l4) {
        this.visitorsId = l4;
    }

    public void update() {
        PlayHistoryDao playHistoryDao = this.myDao;
        if (playHistoryDao == null) {
            throw new d("Entity is detached from DAO context");
        }
        playHistoryDao.update(this);
    }

    public PlayHistory() {
    }
}
