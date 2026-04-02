.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "TrustStatus",
        "cChain",
        "rgpChain",
        "cLowerQualityChainContext",
        "rgpLowerQualityChainContext",
        "fHasRevocationFreshnessTime",
        "dwRevocationFreshnessTime",
        "dwCreateFlags",
        "ChainId"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_CHAIN_CONTEXT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT$ByReference;
    }
.end annotation


# instance fields
.field public ChainId:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public TrustStatus:Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_STATUS;

.field public cChain:I

.field public cLowerQualityChainContext:I

.field public cbSize:I

.field public dwCreateFlags:I

.field public dwRevocationFreshnessTime:I

.field public fHasRevocationFreshnessTime:Z

.field public rgpChain:Lcom/sun/jna/Pointer;

.field public rgpLowerQualityChainContext:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 576
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method


# virtual methods
.method public getRgpChain()[Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN;
    .locals 7

    .line 554
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;->cChain:I

    new-array v1, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 556
    const-class v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN;

    iget-object v4, p0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;->rgpChain:Lcom/sun/jna/Pointer;

    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    .line 558
    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    .line 556
    invoke-static {v3, v4}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN;

    aput-object v3, v1, v2

    .line 559
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRgpLowerQualityChainContext()[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;
    .locals 6

    .line 565
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;->cLowerQualityChainContext:I

    new-array v1, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 567
    iget-object v3, p0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;->rgpLowerQualityChainContext:Lcom/sun/jna/Pointer;

    sget v4, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v4, v2

    int-to-long v4, v4

    .line 569
    invoke-virtual {v3, v4, v5}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v3

    .line 567
    const-class v4, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;

    invoke-static {v4, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;

    aput-object v3, v1, v2

    .line 570
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
