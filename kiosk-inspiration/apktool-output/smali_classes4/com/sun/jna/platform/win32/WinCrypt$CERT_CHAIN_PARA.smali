.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_PARA;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "RequestedUsage",
        "RequestedIssuancePolicy",
        "dwUrlRetrievalTimeout",
        "fCheckRevocationFreshnessTime",
        "dwRevocationFreshnessTime",
        "pftCacheResync",
        "pStrongSignPara",
        "dwStrongSignFlags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_CHAIN_PARA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_PARA$ByReference;
    }
.end annotation


# instance fields
.field public RequestedIssuancePolicy:Lcom/sun/jna/platform/win32/WinCrypt$CERT_USAGE_MATCH;

.field public RequestedUsage:Lcom/sun/jna/platform/win32/WinCrypt$CERT_USAGE_MATCH;

.field public cbSize:I

.field public dwRevocationFreshnessTime:I

.field public dwStrongSignFlags:I

.field public dwUrlRetrievalTimeout:I

.field public fCheckRevocationFreshnessTime:Z

.field public pStrongSignPara:Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA$ByReference;

.field public pftCacheResync:Lcom/sun/jna/platform/win32/WinBase$FILETIME$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 398
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method
