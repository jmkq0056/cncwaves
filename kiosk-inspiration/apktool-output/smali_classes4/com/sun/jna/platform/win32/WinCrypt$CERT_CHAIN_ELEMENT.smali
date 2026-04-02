.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_ELEMENT;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "pCertContext",
        "TrustStatus",
        "pRevocationInfo",
        "pIssuanceUsage",
        "pApplicationUsage",
        "pwszExtendedErrorInfo"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_CHAIN_ELEMENT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_ELEMENT$ByReference;
    }
.end annotation


# instance fields
.field public TrustStatus:Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_STATUS;

.field public cbSize:I

.field public pApplicationUsage:Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE$ByReference;

.field public pCertContext:Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT$ByReference;

.field public pIssuanceUsage:Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE$ByReference;

.field public pRevocationInfo:Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_INFO$ByReference;

.field public pwszExtendedErrorInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 221
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    return-void
.end method
