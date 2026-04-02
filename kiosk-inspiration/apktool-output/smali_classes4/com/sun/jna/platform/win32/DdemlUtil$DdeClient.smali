.class public Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;
.super Ljava/lang/Object;
.source "DdemlUtil.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DdemlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DdeClient"
.end annotation


# instance fields
.field private final ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

.field private idInst:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    new-instance v0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    return-void
.end method


# virtual methods
.method public abandonTransactions()V
    .locals 4

    .line 804
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sun/jna/platform/win32/Ddeml;->DdeAbandonTransaction(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object v0

    throw v0
.end method

.method public accessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/Pointer;
    .locals 1

    .line 758
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    invoke-interface {v0, p1, p2}, Lcom/sun/jna/platform/win32/Ddeml;->DdeAccessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public addData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 1

    .line 741
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/Ddeml;->DdeAddData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 743
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public close()V
    .locals 0

    .line 848
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->uninitialize()Z

    return-void
.end method

.method public connect(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
    .locals 2

    .line 681
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/sun/jna/platform/win32/Ddeml;->DdeConnect(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 685
    new-instance p2, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;

    invoke-direct {p2, p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;-><init>(Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;Lcom/sun/jna/platform/win32/Ddeml$HCONV;)V

    return-object p2

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
    .locals 1

    const/4 v0, 0x0

    .line 692
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 693
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object v0

    .line 694
    invoke-virtual {p0, p1, v0, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->connect(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 697
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    .line 696
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 697
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 698
    throw p2
.end method

.method public connectList(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;
    .locals 6

    .line 811
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;->getHandle()Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Ddeml;->DdeConnectList(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 815
    new-instance p2, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;

    invoke-direct {p2, p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;-><init>(Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;)V

    return-object p2

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public connectList(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;
    .locals 1

    const/4 v0, 0x0

    .line 823
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 824
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object v0

    .line 825
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->connectList(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 828
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    .line 827
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 828
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 829
    throw p2
.end method

.method public createDataHandle(Lcom/sun/jna/Pointer;IILcom/sun/jna/platform/win32/Ddeml$HSZ;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 8

    .line 726
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Ddeml;->DdeCreateDataHandle(ILcom/sun/jna/Pointer;IILcom/sun/jna/platform/win32/Ddeml$HSZ;II)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 647
    :cond_0
    sget-object v0, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->UNICODE_OPTIONS:Ljava/util/Map;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x4b0

    goto :goto_0

    :cond_1
    const/16 v0, 0x3ec

    .line 652
    :goto_0
    sget-object v1, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Lcom/sun/jna/platform/win32/Ddeml;->DdeCreateStringHandle(ILjava/lang/String;I)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 654
    :cond_2
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public enableCallback(I)Z
    .locals 3

    .line 833
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeEnableCallback(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method public freeDataHandle(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)V
    .locals 1

    .line 734
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeFreeDataHandle(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 796
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeFreeStringHandle(ILcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    move-result p1

    return p1
.end method

.method public getData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)I
    .locals 1

    .line 749
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/Ddeml;->DdeGetData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;Lcom/sun/jna/Pointer;II)I

    move-result p1

    .line 750
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p2

    if-nez p2, :cond_0

    return p1

    .line 752
    :cond_0
    invoke-static {p2}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public getInstanceIdentitifier()Ljava/lang/Integer;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLastError()I
    .locals 2

    .line 677
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeGetLastError(I)I

    move-result v0

    return v0
.end method

.method public initialize(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 631
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>()V

    .line 632
    sget-object v1, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p1, v3}, Lcom/sun/jna/platform/win32/Ddeml;->DdeInitialize(Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/Ddeml$DdeCallback;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 633
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 636
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    .line 637
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    instance-of v1, v0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->setInstanceIdentifier(I)V

    :cond_0
    return-void

    .line 634
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public keepStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z
    .locals 2

    .line 800
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeKeepStringHandle(ILcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    move-result p1

    return p1
.end method

.method public nameService(Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 660
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    invoke-direct {v2}, Lcom/sun/jna/platform/win32/Ddeml$HSZ;-><init>()V

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/sun/jna/platform/win32/Ddeml;->DdeNameService(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public nameService(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 669
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 670
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->nameService(Lcom/sun/jna/platform/win32/Ddeml$HSZ;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 673
    throw p2
.end method

.method public postAdvise(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V
    .locals 2

    .line 773
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/sun/jna/platform/win32/Ddeml;->DdePostAdvise(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public postAdvise(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 783
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 784
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object v0

    .line 785
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->postAdvise(Lcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/platform/win32/Ddeml$HSZ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 788
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    return-void

    :catchall_0
    move-exception p2

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    .line 787
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 788
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 789
    throw p2
.end method

.method public queryString(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 704
    sget-object v0, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->UNICODE_OPTIONS:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x4b0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ec

    const/4 v1, 0x1

    :goto_0
    move v7, v0

    .line 711
    new-instance v5, Lcom/sun/jna/Memory;

    mul-int/lit16 v1, v1, 0x101

    int-to-long v0, v1

    invoke-direct {v5, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 713
    :try_start_0
    sget-object v2, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x100

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/sun/jna/platform/win32/Ddeml;->DdeQueryString(ILcom/sun/jna/platform/win32/Ddeml$HSZ;Lcom/sun/jna/Pointer;II)I

    .line 714
    sget-object p1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    sget-object v0, Lcom/sun/jna/win32/W32APIOptions;->UNICODE_OPTIONS:Ljava/util/Map;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 715
    invoke-virtual {v5, v1, v2}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    invoke-virtual {v5}, Lcom/sun/jna/Memory;->valid()Z

    return-object p1

    .line 717
    :cond_1
    :try_start_1
    invoke-virtual {v5, v1, v2}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    invoke-virtual {v5}, Lcom/sun/jna/Memory;->valid()Z

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v5}, Lcom/sun/jna/Memory;->valid()Z

    .line 721
    throw p1
.end method

.method public registerAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V

    return-void
.end method

.method public registerAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V

    return-void
.end method

.method public registerAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V

    return-void
.end method

.method public registerAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V

    return-void
.end method

.method public registerConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V

    return-void
.end method

.method public registerConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V

    return-void
.end method

.method public registerDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V

    return-void
.end method

.method public registerErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V

    return-void
.end method

.method public registerExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V

    return-void
.end method

.method public registerMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V

    return-void
.end method

.method public registerPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V

    return-void
.end method

.method public registerRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V

    return-void
.end method

.method public registerRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V

    return-void
.end method

.method public registerUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V

    return-void
.end method

.method public registerWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V

    return-void
.end method

.method public registerXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->registerXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V

    return-void
.end method

.method public unaccessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)V
    .locals 1

    .line 766
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeUnaccessData(Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public uninitialize()Z
    .locals 2

    .line 844
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->idInst:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeUninitialize(I)Z

    move-result v0

    return v0
.end method

.method public unregisterAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterAdvReqHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvreqHandler;)V

    return-void
.end method

.method public unregisterAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterAdvdataHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvdataHandler;)V

    return-void
.end method

.method public unregisterAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterAdvstartHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstartHandler;)V

    return-void
.end method

.method public unregisterAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterAdvstopHandler(Lcom/sun/jna/platform/win32/DdemlUtil$AdvstopHandler;)V

    return-void
.end method

.method public unregisterConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterConnectConfirmHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectConfirmHandler;)V

    return-void
.end method

.method public unregisterConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterConnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ConnectHandler;)V

    return-void
.end method

.method public unregisterDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterDisconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$DisconnectHandler;)V

    return-void
.end method

.method public unregisterErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterErrorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ErrorHandler;)V

    return-void
.end method

.method public unregisterExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterExecuteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$ExecuteHandler;)V

    return-void
.end method

.method public unregisterMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterMonitorHandler(Lcom/sun/jna/platform/win32/DdemlUtil$MonitorHandler;)V

    return-void
.end method

.method public unregisterPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterPokeHandler(Lcom/sun/jna/platform/win32/DdemlUtil$PokeHandler;)V

    return-void
.end method

.method public unregisterRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterRegisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RegisterHandler;)V

    return-void
.end method

.method public unregisterRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterRequestHandler(Lcom/sun/jna/platform/win32/DdemlUtil$RequestHandler;)V

    return-void
.end method

.method public unregisterUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterUnregisterHandler(Lcom/sun/jna/platform/win32/DdemlUtil$UnregisterHandler;)V

    return-void
.end method

.method public unregisterWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->unregisterWildconnectHandler(Lcom/sun/jna/platform/win32/DdemlUtil$WildconnectHandler;)V

    return-void
.end method

.method public unregisterXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeClient;->ddeAdapter:Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeAdapter;->xactCompleteXactCompleteHandler(Lcom/sun/jna/platform/win32/DdemlUtil$XactCompleteHandler;)V

    return-void
.end method

.method public wrap(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
    .locals 1

    .line 852
    new-instance v0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;-><init>(Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;Lcom/sun/jna/platform/win32/Ddeml$HCONV;)V

    return-object v0
.end method
