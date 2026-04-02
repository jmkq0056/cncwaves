.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_INFO;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "dwRevocationResult",
        "pszRevocationOid",
        "pvOidSpecificInfo",
        "fHasFreshnessTime",
        "dwFreshnessTime",
        "pCrlInfo"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_REVOCATION_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_INFO$ByReference;
    }
.end annotation


# instance fields
.field public cbSize:I

.field public dwFreshnessTime:I

.field public dwRevocationResult:I

.field public fHasFreshnessTime:Z

.field public pCrlInfo:Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_CRL_INFO$ByReference;

.field public pszRevocationOid:Ljava/lang/String;

.field public pvOidSpecificInfo:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 187
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->ASCII:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method
