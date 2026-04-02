.class public Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSize",
        "dwError",
        "szIpAddress",
        "szServerIpAddress",
        "dwOptions",
        "dwServerOptions"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASPPPIP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinRas$RASPPPIP$ByReference;
    }
.end annotation


# instance fields
.field public dwError:I

.field public dwOptions:I

.field public dwServerOptions:I

.field public dwSize:I

.field public szIpAddress:[C

.field public szServerIpAddress:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 520
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x10

    .line 545
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->szIpAddress:[C

    .line 552
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->szServerIpAddress:[C

    .line 521
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->dwSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 525
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x10

    .line 545
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->szIpAddress:[C

    .line 552
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->szServerIpAddress:[C

    .line 526
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;->read()V

    return-void
.end method
