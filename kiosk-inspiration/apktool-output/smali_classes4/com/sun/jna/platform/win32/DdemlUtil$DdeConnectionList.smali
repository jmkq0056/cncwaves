.class public Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;
.super Ljava/lang/Object;
.source "DdemlUtil.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DdemlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DdeConnectionList"
.end annotation


# instance fields
.field private final client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

.field private final convList:Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;)V
    .locals 0

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;->convList:Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;

    .line 593
    iput-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 615
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;->convList:Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeDisconnectList(Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;->getLastError()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;->create(I)Lcom/sun/jna/platform/win32/DdemlUtil$DdemlException;

    move-result-object v0

    throw v0
.end method

.method public getHandle()Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;->convList:Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;

    return-object v0
.end method

.method public queryNextServer(Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;)Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;
    .locals 3

    .line 603
    sget-object v0, Lcom/sun/jna/platform/win32/Ddeml;->INSTANCE:Lcom/sun/jna/platform/win32/Ddeml;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;->convList:Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 605
    invoke-interface {p1}, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;->getConv()Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 603
    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/sun/jna/platform/win32/Ddeml;->DdeQueryNextServer(Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;Lcom/sun/jna/platform/win32/Ddeml$HCONV;)Lcom/sun/jna/platform/win32/Ddeml$HCONV;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 607
    new-instance v0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnectionList;->client:Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    invoke-direct {v0, v1, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$DdeConnection;-><init>(Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;Lcom/sun/jna/platform/win32/Ddeml$HCONV;)V

    return-object v0

    :cond_1
    return-object v2
.end method
