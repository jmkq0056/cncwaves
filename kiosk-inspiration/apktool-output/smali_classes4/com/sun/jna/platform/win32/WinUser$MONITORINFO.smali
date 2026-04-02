.class public Lcom/sun/jna/platform/win32/WinUser$MONITORINFO;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "rcMonitor",
        "rcWork",
        "dwFlags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MONITORINFO"
.end annotation


# instance fields
.field public cbSize:I

.field public dwFlags:I

.field public rcMonitor:Lcom/sun/jna/platform/win32/WinDef$RECT;

.field public rcWork:Lcom/sun/jna/platform/win32/WinDef$RECT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1404
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1408
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$MONITORINFO;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinUser$MONITORINFO;->cbSize:I

    return-void
.end method
