.class public Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;
.super Ljava/lang/Object;
.source "DdemlUtil.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/Ddeml$DdeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DdemlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DdeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter$BlockException;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final advReqHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final advdataHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final advstartHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final advstopHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final connectConfirmHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final connectHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final errorHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final executeHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;",
            ">;"
        }
    .end annotation
.end field

.field private idInst:I

.field private final monitorHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final pokeHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final registerHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final requestHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final unregisterHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final wildconnectHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final xactCompleteHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1535
    const-class v0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1643
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advstartHandler:Ljava/util/List;

    .line 1663
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advstopHandler:Ljava/util/List;

    .line 1679
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->connectHandler:Ljava/util/List;

    .line 1699
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advReqHandler:Ljava/util/List;

    .line 1719
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->requestHandler:Ljava/util/List;

    .line 1739
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->wildconnectHandler:Ljava/util/List;

    .line 1758
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advdataHandler:Ljava/util/List;

    .line 1778
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->executeHandler:Ljava/util/List;

    .line 1798
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->pokeHandler:Ljava/util/List;

    .line 1818
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->connectConfirmHandler:Ljava/util/List;

    .line 1834
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->disconnectHandler:Ljava/util/List;

    .line 1850
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->errorHandler:Ljava/util/List;

    .line 1866
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerHandler:Ljava/util/List;

    .line 1882
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->xactCompleteHandler:Ljava/util/List;

    .line 1898
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterHandler:Ljava/util/List;

    .line 1914
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->monitorHandler:Ljava/util/List;

    return-void
.end method

.method private onAdvdata(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)I
    .locals 9

    .line 1769
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advdataHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 1770
    invoke-interface/range {v2 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;->onAdvdata(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    move p1, v3

    move p2, v4

    move-object p3, v5

    move-object p4, v6

    move-object p5, v7

    move-object p6, v8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onAdvreq(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 9

    .line 1710
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advReqHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .line 1711
    invoke-interface/range {v2 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;->onAdvreq(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    move p1, v3

    move p2, v4

    move-object p3, v5

    move-object p4, v6

    move-object p5, v7

    move p6, v8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private onAdvstart(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
    .locals 9

    .line 1655
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advstartHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 1656
    invoke-interface/range {v3 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;->onAdvstart(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v1, p1

    :cond_0
    move p1, v4

    move p2, v5

    move-object p3, v6

    move-object p4, v7

    move-object p5, v8

    goto :goto_0

    :cond_1
    return v1
.end method

.method private onAdvstop(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V
    .locals 8

    .line 1674
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advstopHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1675
    invoke-interface/range {v2 .. v7}, Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;->onAdvstop(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onConnect(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;Z)Z
    .locals 9

    .line 1691
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->connectHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .line 1692
    invoke-interface/range {v3 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;->onConnect(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v1, p1

    :cond_0
    move p1, v4

    move-object p2, v5

    move-object p3, v6

    move-object p4, v7

    move p5, v8

    goto :goto_0

    :cond_1
    return v1
.end method

.method private onConnectConfirm(ILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Z)V
    .locals 8

    .line 1829
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->connectConfirmHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 1830
    invoke-interface/range {v2 .. v7}, Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;->onConnectConfirm(ILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDisconnect(ILcom/sun/jna/platform/win32/Ddeml$HCONV;Z)V
    .locals 2

    .line 1845
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->disconnectHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;

    .line 1846
    invoke-interface {v1, p1, p2, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;->onDisconnect(ILcom/sun/jna/platform/win32/Ddeml$HCONV;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onError(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)V
    .locals 2

    .line 1861
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->errorHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;

    .line 1862
    invoke-interface {v1, p1, p2, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;->onError(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onExecute(ILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)I
    .locals 2

    .line 1789
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->executeHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;

    .line 1790
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;->onExecute(ILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onMonitor(ILcom/sun/jna/platform/win32/Ddeml$HDDEDATA;I)V
    .locals 2

    .line 1925
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->monitorHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;

    .line 1926
    invoke-interface {v1, p1, p2, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;->onMonitor(ILcom/sun/jna/platform/win32/Ddeml$HDDEDATA;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onPoke(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)I
    .locals 9

    .line 1809
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->pokeHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 1810
    invoke-interface/range {v2 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;->onPoke(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    move p1, v3

    move p2, v4

    move-object p3, v5

    move-object p4, v6

    move-object p5, v7

    move-object p6, v8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onRegister(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V
    .locals 2

    .line 1877
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;

    .line 1878
    invoke-interface {v1, p1, p2, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;->onRegister(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRequest(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 8

    .line 1730
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->requestHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1731
    invoke-interface/range {v2 .. v7}, Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;->onRequest(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    move p1, v3

    move p2, v4

    move-object p3, v5

    move-object p4, v6

    move-object p5, v7

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private onUnregister(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V
    .locals 2

    .line 1909
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;

    .line 1910
    invoke-interface {v1, p1, p2, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;->onUnregister(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onWildconnect(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;Z)[Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;
    .locals 9

    .line 1750
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1751
    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->wildconnectHandler:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .line 1752
    invoke-interface/range {v3 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;->onWildconnect(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move p1, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1754
    new-array p1, p1, [Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;

    return-object p1
.end method

.method private onXactComplete(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;)V
    .locals 11

    .line 1893
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->xactCompleteHandler:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 1894
    invoke-interface/range {v2 .. v10}, Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;->onXactComplete(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public ddeCallback(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;)Lcom/sun/jna/platform/win32/WinDef$PVOID;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v0, p6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 1633
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->LOG:Ljava/util/logging/Logger;

    goto/16 :goto_6

    .line 1630
    :sswitch_0
    invoke-virtual/range {p8 .. p8}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onMonitor(ILcom/sun/jna/platform/win32/Ddeml$HDDEDATA;I)V

    goto/16 :goto_8

    .line 1627
    :sswitch_1
    invoke-direct {v1, v2, v4, v5}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onUnregister(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V

    goto/16 :goto_8

    :sswitch_2
    if-eqz p8, :cond_0

    .line 1615
    invoke-virtual/range {p8 .. p8}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    invoke-direct {v1, v2, v3, v6}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onDisconnect(ILcom/sun/jna/platform/win32/Ddeml$HCONV;Z)V

    goto/16 :goto_8

    .line 1621
    :sswitch_3
    invoke-direct {v1, v2, v4, v5}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onRegister(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V

    goto/16 :goto_8

    .line 1624
    :sswitch_4
    invoke-direct/range {p0 .. p8}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onXactComplete(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;)V

    goto/16 :goto_8

    :sswitch_5
    if-eqz p8, :cond_1

    .line 1612
    invoke-virtual/range {p8 .. p8}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-direct/range {v1 .. v6}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onConnectConfirm(ILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Z)V

    goto/16 :goto_8

    .line 1609
    :sswitch_6
    invoke-direct/range {p0 .. p5}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onAdvstop(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V

    goto/16 :goto_8

    .line 1618
    :sswitch_7
    invoke-virtual/range {p8 .. p8}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    long-to-int v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onError(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)V

    goto/16 :goto_8

    .line 1606
    :sswitch_8
    invoke-direct/range {p0 .. p6}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onPoke(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)I

    move-result v0

    .line 1607
    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-static {v0}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v2

    .line 1602
    :sswitch_9
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onExecute(ILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)I

    move-result v2

    .line 1603
    sget-object v3, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    invoke-interface {v3, v0}, Lcom/sun/jna/platform/win32/Ddeml;->DdeFreeDataHandle(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)Z

    .line 1604
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-static {v2}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0

    .line 1599
    :sswitch_a
    invoke-direct/range {p0 .. p6}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onAdvdata(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)I

    move-result v0

    .line 1600
    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-static {v0}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v2

    .line 1578
    :sswitch_b
    invoke-virtual/range {p7 .. p7}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->toPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1579
    new-instance v8, Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;

    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-virtual/range {p7 .. p7}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->longValue()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Lcom/sun/jna/Pointer;-><init>(J)V

    invoke-direct {v8, v0}, Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;-><init>(Lcom/sun/jna/Pointer;)V

    :cond_2
    move-object v5, v8

    if-eqz p8, :cond_3

    .line 1581
    invoke-virtual/range {p8 .. p8}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_2
    move-object v3, v4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onWildconnect(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;Z)[Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1582
    array-length v2, v0

    if-nez v2, :cond_4

    goto :goto_4

    .line 1586
    :cond_4
    array-length v2, v0

    move v3, v7

    move v11, v3

    :goto_3
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 1587
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;->write()V

    .line 1588
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;->size()I

    move-result v4

    add-int/2addr v11, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1590
    :cond_5
    sget-object v8, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget v9, v1, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->idInst:I

    aget-object v0, v0, v7

    .line 1591
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Ddeml$HSZPAIR;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    move/from16 v14, p2

    .line 1590
    invoke-interface/range {v8 .. v15}, Lcom/sun/jna/platform/win32/Ddeml;->DdeCreateDataHandle(ILcom/sun/jna/Pointer;IILcom/sun/jna/platform/win32/Ddeml$HSZ;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object v0

    .line 1597
    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v2

    .line 1583
    :cond_6
    :goto_4
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>()V

    return-object v0

    .line 1570
    :sswitch_c
    invoke-direct/range {p0 .. p5}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onRequest(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1572
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>()V

    return-object v0

    .line 1574
    :cond_7
    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v2

    .line 1562
    :sswitch_d
    invoke-virtual/range {p7 .. p7}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->intValue()I

    move-result v0

    const v2, 0xffff

    and-int v7, v0, v2

    move/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v4, v3

    move/from16 v3, p2

    .line 1563
    invoke-direct/range {v1 .. v7}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onAdvreq(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1565
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>()V

    return-object v0

    .line 1567
    :cond_8
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1

    .line 1556
    :sswitch_e
    invoke-virtual/range {p7 .. p7}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->toPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1557
    new-instance v8, Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;

    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-virtual/range {p7 .. p7}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Pointer;-><init>(J)V

    invoke-direct {v8, v0}, Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;-><init>(Lcom/sun/jna/Pointer;)V

    :cond_9
    move-object v5, v8

    if-eqz p8, :cond_a

    .line 1559
    invoke-virtual/range {p8 .. p8}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v6, v7

    :goto_5
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onConnect(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;Z)Z

    move-result v0

    .line 1560
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$BOOL;

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/WinDef$BOOL;-><init>(Z)V

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1

    .line 1552
    :sswitch_f
    invoke-direct/range {p0 .. p5}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->onAdvstart(IILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    move-result v0

    .line 1553
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$BOOL;

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/WinDef$BOOL;-><init>(Z)V

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 1633
    :goto_6
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Not implemented Operation - Transaction type: 0x%X (%s)"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter$BlockException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 1638
    :goto_7
    sget-object v1, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception in DDECallback"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1640
    :goto_8
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>()V

    return-object v0

    .line 1636
    :catch_0
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinDef$PVOID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1030 -> :sswitch_f
        0x1062 -> :sswitch_e
        0x2022 -> :sswitch_d
        0x20b0 -> :sswitch_c
        0x20e2 -> :sswitch_b
        0x4010 -> :sswitch_a
        0x4050 -> :sswitch_9
        0x4090 -> :sswitch_8
        0x8002 -> :sswitch_7
        0x8040 -> :sswitch_6
        0x8072 -> :sswitch_5
        0x8080 -> :sswitch_4
        0x80a2 -> :sswitch_3
        0x80c2 -> :sswitch_2
        0x80d2 -> :sswitch_1
        0x80f2 -> :sswitch_0
    .end sparse-switch
.end method

.method public registerAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advReqHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V
    .locals 1

    .line 1761
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advdataHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advstartHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advstopHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->connectConfirmHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V
    .locals 1

    .line 1682
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->connectHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V
    .locals 1

    .line 1837
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->disconnectHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V
    .locals 1

    .line 1853
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->errorHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V
    .locals 1

    .line 1781
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->executeHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V
    .locals 1

    .line 1917
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->monitorHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->pokeHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V
    .locals 1

    .line 1869
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->requestHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V
    .locals 1

    .line 1901
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->wildconnectHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->xactCompleteHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInstanceIdentifier(I)V
    .locals 0

    .line 1540
    iput p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->idInst:I

    return-void
.end method

.method public unregisterAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V
    .locals 1

    .line 1706
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advReqHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advdataHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advstartHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->advstopHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->connectConfirmHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V
    .locals 1

    .line 1686
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->connectHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->disconnectHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V
    .locals 1

    .line 1857
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->errorHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->executeHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V
    .locals 1

    .line 1921
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->monitorHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V
    .locals 1

    .line 1805
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->pokeHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->requestHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V
    .locals 1

    .line 1905
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V
    .locals 1

    .line 1746
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->wildconnectHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public xactCompleteXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V
    .locals 1

    .line 1889
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->xactCompleteHandler:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
