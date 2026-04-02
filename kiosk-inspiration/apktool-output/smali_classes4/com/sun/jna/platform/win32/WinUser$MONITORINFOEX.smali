.class public Lcom/sun/jna/platform/win32/WinUser$MONITORINFOEX;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "rcMonitor",
        "rcWork",
        "dwFlags",
        "szDevice"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MONITORINFOEX"
.end annotation


# instance fields
.field public cbSize:I

.field public dwFlags:I

.field public rcMonitor:Lcom/sun/jna/platform/win32/WinDef$RECT;

.field public rcWork:Lcom/sun/jna/platform/win32/WinDef$RECT;

.field public szDevice:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1478
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x20

    .line 1479
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinUser$MONITORINFOEX;->szDevice:[C

    .line 1480
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$MONITORINFOEX;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinUser$MONITORINFOEX;->cbSize:I

    return-void
.end method
