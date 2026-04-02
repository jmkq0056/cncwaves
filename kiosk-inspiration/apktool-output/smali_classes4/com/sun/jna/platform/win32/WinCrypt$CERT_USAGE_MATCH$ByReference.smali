.class public Lcom/sun/jna/platform/win32/WinCrypt$CERT_USAGE_MATCH$ByReference;
.super Lcom/sun/jna/platform/win32/WinCrypt$CERT_USAGE_MATCH;
.source "WinCrypt.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt$CERT_USAGE_MATCH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinCrypt$CERT_USAGE_MATCH;-><init>()V

    return-void
.end method
