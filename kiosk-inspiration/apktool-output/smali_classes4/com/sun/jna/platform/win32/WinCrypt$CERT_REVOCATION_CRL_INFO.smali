.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_CRL_INFO;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "pBaseCRLContext",
        "pDeltaCRLContext",
        "pCrlEntry",
        "fDeltaCrlEntry"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CERT_REVOCATION_CRL_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_CRL_INFO$ByReference;
    }
.end annotation


# instance fields
.field public cbSize:I

.field public fDeltaCrlEntry:Z

.field public pBaseCRLContext:Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT$ByReference;

.field public pCrlEntry:Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY$ByReference;

.field public pDeltaCRLContext:Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 161
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method
