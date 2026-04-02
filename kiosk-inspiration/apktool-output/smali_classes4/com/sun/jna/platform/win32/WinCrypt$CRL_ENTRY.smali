.class public Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "SerialNumber",
        "RevocationDate",
        "cExtension",
        "rgExtension"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRL_ENTRY"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY$ByReference;
    }
.end annotation


# instance fields
.field public RevocationDate:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public SerialNumber:Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

.field public cExtension:I

.field public rgExtension:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 736
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public getRgExtension()[Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;
    .locals 7

    .line 746
    iget v0, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY;->cExtension:I

    new-array v1, v0, [Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 748
    const-class v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    iget-object v4, p0, Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY;->rgExtension:Lcom/sun/jna/Pointer;

    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int/2addr v5, v2

    int-to-long v5, v5

    .line 750
    invoke-virtual {v4, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    .line 748
    invoke-static {v3, v4}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;

    aput-object v3, v1, v2

    .line 751
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
