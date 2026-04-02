.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_CRL_INFO$ByReference;
.super Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_CRL_INFO;
.source "WinCrypt.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_CRL_INFO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_CRL_INFO;-><init>()V

    return-void
.end method
