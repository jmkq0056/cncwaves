.class public Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;
.super Ljava/lang/Object;
.source "DdemlUtil.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DdemlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandaloneDdeClient"
.end annotation


# instance fields
.field private final clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

.field private final ddeClient:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

.field private final messageLoop:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->messageLoop:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    .line 71
    new-instance v1, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;-><init>()V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->ddeClient:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    .line 72
    const-class v2, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;

    invoke-direct {v6, v0, v1}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;-><init>(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;Ljava/lang/Object;)V

    invoke-static {v3, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    aput-object v5, v3, v7

    new-instance v5, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;

    invoke-direct {v5, v0, v1}, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;-><init>(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;Ljava/lang/Object;)V

    invoke-static {v2, v3, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    iput-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    .line 78
    invoke-virtual {v0, v4}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->setDaemon(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->start()V

    return-void
.end method


# virtual methods
.method public abandonTransactions()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->abandonTransactions()V

    return-void
.end method

.method public accessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/Pointer;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->accessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public addData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->addData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->uninitialize()Z

    .line 147
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->messageLoop:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->exit()V

    return-void
.end method

.method public connect(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->connect(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;

    move-result-object p1

    return-object p1
.end method

.method public connectList(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->connectList(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;

    move-result-object p1

    return-object p1
.end method

.method public connectList(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->connectList(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;

    move-result-object p1

    return-object p1
.end method

.method public createDataHandle(Lcom/sun/jna/Pointer;IILcom/sun/jna/platform/win32/Ddeml$HSZ;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 7

    .line 112
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->createDataHandle(Lcom/sun/jna/Pointer;IILcom/sun/jna/platform/win32/Ddeml$HSZ;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1

    return-object p1
.end method

.method public createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object p1

    return-object p1
.end method

.method public enableCallback(I)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->enableCallback(I)Z

    move-result p1

    return p1
.end method

.method public freeDataHandle(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeDataHandle(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)V

    return-void
.end method

.method public freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    move-result p1

    return p1
.end method

.method public getData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)I

    move-result p1

    return p1
.end method

.method public getInstanceIdentitifier()Ljava/lang/Integer;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->ddeClient:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getInstanceIdentitifier()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result v0

    return v0
.end method

.method public initialize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->initialize(I)V

    return-void
.end method

.method public keepStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->keepStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    move-result p1

    return p1
.end method

.method public nameService(Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->nameService(Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)V

    return-void
.end method

.method public nameService(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->nameService(Ljava/lang/String;I)V

    return-void
.end method

.method public postAdvise(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->postAdvise(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V

    return-void
.end method

.method public postAdvise(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1, p2}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->postAdvise(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryString(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->queryString(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public registerAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V

    return-void
.end method

.method public registerAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V

    return-void
.end method

.method public registerAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V

    return-void
.end method

.method public registerAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V

    return-void
.end method

.method public registerConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V

    return-void
.end method

.method public registerConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V

    return-void
.end method

.method public registerDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V

    return-void
.end method

.method public registerErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V

    return-void
.end method

.method public registerExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V

    return-void
.end method

.method public registerMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V

    return-void
.end method

.method public registerPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V

    return-void
.end method

.method public registerRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V

    return-void
.end method

.method public registerRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V

    return-void
.end method

.method public registerUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V

    return-void
.end method

.method public registerWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V

    return-void
.end method

.method public registerXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->registerXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V

    return-void
.end method

.method public unaccessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unaccessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)V

    return-void
.end method

.method public uninitialize()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->uninitialize()Z

    move-result v0

    return v0
.end method

.method public unregisterAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V

    return-void
.end method

.method public unregisterAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V

    return-void
.end method

.method public unregisterAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V

    return-void
.end method

.method public unregisterAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V

    return-void
.end method

.method public unregisterConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V

    return-void
.end method

.method public unregisterConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V

    return-void
.end method

.method public unregisterDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V

    return-void
.end method

.method public unregisterErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V

    return-void
.end method

.method public unregisterExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V

    return-void
.end method

.method public unregisterMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V

    return-void
.end method

.method public unregisterPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V

    return-void
.end method

.method public unregisterRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V

    return-void
.end method

.method public unregisterRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V

    return-void
.end method

.method public unregisterUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V

    return-void
.end method

.method public unregisterWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V

    return-void
.end method

.method public unregisterXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->unregisterXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V

    return-void
.end method

.method public wrap(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;->clientDelegate:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->wrap(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;

    move-result-object p1

    return-object p1
.end method
