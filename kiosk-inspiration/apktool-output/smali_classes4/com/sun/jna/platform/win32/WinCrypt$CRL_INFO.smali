.class public Lcom/sun/jna/platform/win32/WinCrypt$CRL_INFO;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwVersion",
        "SignatureAlgorithm",
        "Issuer",
        "ThisUpdate",
        "NextUpdate",
        "cCRLEntry",
        "rgCRLEntry",
        "cExtension",
        "rgExtension"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRL_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CRL_INFO$ByReference;
    }
.end annotation


# instance fields
.field public Issuer:Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

.field public NextUpdate:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public SignatureAlgorithm:Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ALGORITHM_IDENTIFIER;

.field public ThisUpdate:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public cCRLEntry:I

.field public cExtension:I

.field public dwVersion:I

.field public rgCRLEntry:Lcom/sun/jna/Pointer;

.field public rgExtension:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 766
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public getRgCRLEntry()[Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY;
    .locals 7

    .line 781
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRL_INFO;->cCRLEntry:I

    new-array v1, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 783
    const-class v3, Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY;

    iget-object v4, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRL_INFO;->rgCRLEntry:Lcom/sun/jna/Pointer;

    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    .line 785
    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    .line 783
    invoke-static {v3, v4}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY;

    aput-object v3, v1, v2

    .line 786
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRgExtension()[Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;
    .locals 7

    .line 792
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRL_INFO;->cExtension:I

    new-array v1, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 794
    const-class v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    iget-object v4, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRL_INFO;->rgExtension:Lcom/sun/jna/Pointer;

    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    .line 796
    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    .line 794
    invoke-static {v3, v4}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    aput-object v3, v1, v2

    .line 797
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
