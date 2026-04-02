.class public Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS$ByReference;
.super Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;
.source "DsGetDC.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;-><init>()V

    return-void
.end method
