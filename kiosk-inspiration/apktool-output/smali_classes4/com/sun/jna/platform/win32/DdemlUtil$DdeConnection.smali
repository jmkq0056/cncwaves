.class public Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;
.super Ljava/lang/Object;
.source "DdemlUtil.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DdemlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DdeConnection"
.end annotation


# instance fields
.field private final client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

.field private conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;Lcom/sun/jna/platform/win32/Ddeml$HCONV;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    .line 417
    iput-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    return-void
.end method


# virtual methods
.method public abandonTransaction(I)V
    .locals 3

    .line 426
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getInstanceIdentitifier()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    invoke-interface {v0, v1, v2, p1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeAbandonTransaction(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public abandonTransactions()V
    .locals 4

    .line 433
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getInstanceIdentitifier()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sun/jna/platform/win32/Ddeml;->DdeAbandonTransaction(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object v0

    throw v0
.end method

.method public advstart(Lcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    .locals 9

    .line 507
    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    const/4 v2, 0x0

    const/16 v5, 0x1030

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->clientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    return-void
.end method

.method public advstart(Ljava/lang/String;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    .locals 8

    const/4 v1, 0x0

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 514
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->advstart(Lcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    iget-object p1, v2, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p1, v3}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object p1, v0

    :goto_0
    iget-object p2, v2, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p2, v1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 517
    throw p1
.end method

.method public advstop(Lcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    .locals 9

    .line 522
    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    const/4 v2, 0x0

    const v5, 0x8040

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->clientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    return-void
.end method

.method public advstop(Ljava/lang/String;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    .locals 8

    const/4 v1, 0x0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 529
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->advstop(Lcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    iget-object p1, v2, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p1, v3}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object p1, v0

    :goto_0
    iget-object p2, v2, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p2, v1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 532
    throw p1
.end method

.method public clientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 11

    move/from16 v7, p6

    move-object/from16 v9, p8

    const/4 v10, -0x1

    if-ne v7, v10, :cond_0

    if-nez p7, :cond_0

    .line 442
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>()V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    .line 444
    :goto_0
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v3, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/Ddeml;->DdeClientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HCONV;Lcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v9, :cond_2

    if-eq v7, v10, :cond_1

    .line 450
    invoke-virtual {p0, v10, v9}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->setUserHandle(ILcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V

    return-object p1

    .line 452
    :cond_1
    invoke-virtual {v8}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v9}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->setUserHandle(ILcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V

    :cond_2
    return-object p1

    .line 446
    :cond_3
    iget-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public clientTransaction(Lcom/sun/jna/Pointer;ILjava/lang/String;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 10

    const/4 v2, 0x0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 462
    :try_start_1
    invoke-virtual/range {v1 .. v9}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->clientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    iget-object v2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v2, v4}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    iget-object v3, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v3, v2}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 465
    throw v0
.end method

.method public close()V
    .locals 2

    .line 543
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeDisconnect(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object v0

    throw v0
.end method

.method public enableCallback(I)Z
    .locals 3

    .line 559
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getInstanceIdentitifier()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    invoke-interface {v0, v1, v2, p1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeEnableCallback(ILcom/sun/jna/platform/win32/Ddeml$HCONV;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method public execute(Ljava/lang/String;ILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    .locals 9

    .line 500
    new-instance v1, Lcom/sun/jna/Memory;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    const-wide/16 v2, 0x0

    .line 501
    invoke-virtual {v1, v2, v3, p1}, Lcom/sun/jna/Memory;->setWideString(JLjava/lang/String;)V

    .line 502
    invoke-virtual {v1}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    move-object p1, v3

    check-cast p1, Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    const/4 v4, 0x0

    const/16 v5, 0x4050

    move-object v0, p0

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->clientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    return-void
.end method

.method public getConv()Lcom/sun/jna/platform/win32/Ddeml$HCONV;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    return-object v0
.end method

.method public impersonateClient()V
    .locals 2

    .line 536
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeImpersonateClient(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object v0

    throw v0
.end method

.method public poke(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    .locals 9

    const/16 v5, 0x4090

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 470
    invoke-virtual/range {v0 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->clientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    return-void
.end method

.method public poke(Lcom/sun/jna/Pointer;ILjava/lang/String;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    .locals 9

    const/4 v2, 0x0

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 477
    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->poke(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, v4}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    iget-object v3, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v3, v2}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 480
    throw v0
.end method

.method public queryConvInfo(I)Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 574
    new-instance v0, Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;-><init>()V

    .line 575
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;->size()I

    move-result v1

    iput v1, v0, Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;->cb:I

    .line 576
    iget-object v1, v0, Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;->ConvCtxt:Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;

    iget-object v2, v0, Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;->ConvCtxt:Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;->size()I

    move-result v2

    iput v2, v1, Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;->cb:I

    .line 577
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;->write()V

    .line 578
    sget-object v1, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    invoke-interface {v1, v2, p1, v0}, Lcom/sun/jna/platform/win32/Ddeml;->DdeQueryConvInfo(Lcom/sun/jna/platform/win32/Ddeml$HCONV;ILcom/sun/jna/platform/win32/Ddeml$CONVINFO;)I

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method

.method public reconnect()V
    .locals 2

    .line 550
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeReconnect(Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    iput-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object v0

    throw v0
.end method

.method public request(Lcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 9

    .line 485
    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    const/4 v2, 0x0

    const/16 v5, 0x20b0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->clientTransaction(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Ddeml$HSZ;IIILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1

    return-object p1
.end method

.method public request(Ljava/lang/String;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;
    .locals 8

    const/4 v1, 0x0

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->createStringHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Ddeml$HSZ;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 492
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->request(Lcom/sun/jna/platform/win32/Ddeml$HSZ;IILcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    iget-object p2, v2, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p2, v3}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object p1, v0

    :goto_0
    iget-object p2, v2, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p2, v1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->freeStringHandle(Lcom/sun/jna/platform/win32/Ddeml$HSZ;)Z

    .line 495
    throw p1
.end method

.method public setUserHandle(ILcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;
        }
    .end annotation

    .line 567
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->conv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    invoke-interface {v0, v1, p1, p2}, Lcom/sun/jna/platform/win32/Ddeml;->DdeSetUserHandle(Lcom/sun/jna/platform/win32/Ddeml$HCONV;ILcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 569
    :cond_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object p1

    throw p1
.end method
