.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "TrustStatus",
        "cElement",
        "rgpElement",
        "pTrustListInfo",
        "fHasRevocationFreshnessTime",
        "dwRevocationFreshnessTime"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_SIMPLE_CHAIN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN$ByReference;
    }
.end annotation


# instance fields
.field public TrustStatus:Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_STATUS;

.field public cElement:I

.field public cbSize:I

.field public dwRevocationFreshnessTime:I

.field public fHasRevocationFreshnessTime:Z

.field public pTrustListInfo:Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_LIST_INFO$ByReference;

.field public rgpElement:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 493
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method


# virtual methods
.method public getRgpElement()[Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_ELEMENT;
    .locals 7

    .line 497
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN;->cElement:I

    new-array v1, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_ELEMENT;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 499
    const-class v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_ELEMENT;

    iget-object v4, p0, Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN;->rgpElement:Lcom/sun/jna/Pointer;

    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    .line 501
    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    .line 499
    invoke-static {v3, v4}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_ELEMENT;

    aput-object v3, v1, v2

    .line 502
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_ELEMENT;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
