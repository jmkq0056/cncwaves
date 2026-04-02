package cn.huidu.lcd.core.db.greendao;

import cn.huidu.lcd.core.db.entity.OperateLog;
import cn.huidu.lcd.core.db.entity.PlayHistory;
import cn.huidu.lcd.core.db.entity.ProgramVisitors;
import cn.huidu.lcd.core.db.entity.VisitorStats;
import j3.c;
import java.util.Map;
import m3.a;

/* JADX INFO: loaded from: classes.dex */
public class DaoSession extends c {
    private final OperateLogDao operateLogDao;
    private final a operateLogDaoConfig;
    private final PlayHistoryDao playHistoryDao;
    private final a playHistoryDaoConfig;
    private final ProgramVisitorsDao programVisitorsDao;
    private final a programVisitorsDaoConfig;
    private final VisitorStatsDao visitorStatsDao;
    private final a visitorStatsDaoConfig;

    public DaoSession(org.greenrobot.greendao.database.a aVar, l3.c cVar, Map<Class<? extends j3.a<?, ?>>, a> map) {
        super(aVar);
        a aVar2 = new a(map.get(OperateLogDao.class));
        this.operateLogDaoConfig = aVar2;
        aVar2.b(cVar);
        a aVar3 = new a(map.get(PlayHistoryDao.class));
        this.playHistoryDaoConfig = aVar3;
        aVar3.b(cVar);
        a aVar4 = new a(map.get(ProgramVisitorsDao.class));
        this.programVisitorsDaoConfig = aVar4;
        aVar4.b(cVar);
        a aVar5 = new a(map.get(VisitorStatsDao.class));
        this.visitorStatsDaoConfig = aVar5;
        aVar5.b(cVar);
        OperateLogDao operateLogDao = new OperateLogDao(aVar2, this);
        this.operateLogDao = operateLogDao;
        PlayHistoryDao playHistoryDao = new PlayHistoryDao(aVar3, this);
        this.playHistoryDao = playHistoryDao;
        ProgramVisitorsDao programVisitorsDao = new ProgramVisitorsDao(aVar4, this);
        this.programVisitorsDao = programVisitorsDao;
        VisitorStatsDao visitorStatsDao = new VisitorStatsDao(aVar5, this);
        this.visitorStatsDao = visitorStatsDao;
        registerDao(OperateLog.class, operateLogDao);
        registerDao(PlayHistory.class, playHistoryDao);
        registerDao(ProgramVisitors.class, programVisitorsDao);
        registerDao(VisitorStats.class, visitorStatsDao);
    }

    public void clear() {
        this.operateLogDaoConfig.a();
        this.playHistoryDaoConfig.a();
        this.programVisitorsDaoConfig.a();
        this.visitorStatsDaoConfig.a();
    }

    public OperateLogDao getOperateLogDao() {
        return this.operateLogDao;
    }

    public PlayHistoryDao getPlayHistoryDao() {
        return this.playHistoryDao;
    }

    public ProgramVisitorsDao getProgramVisitorsDao() {
        return this.programVisitorsDao;
    }

    public VisitorStatsDao getVisitorStatsDao() {
        return this.visitorStatsDao;
    }
}
