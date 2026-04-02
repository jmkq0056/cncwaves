.class public Lcom/sun/jna/platform/win32/WinUser$FLASHWINFO;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "hWnd",
        "dwFlags",
        "uCount",
        "dwTimeout"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FLASHWINFO"
.end annotation


# instance fields
.field public cbSize:I

.field public dwFlags:I

.field public dwTimeout:I

.field public hWnd:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public uCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 355
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 356
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$FLASHWINFO;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinUser$FLASHWINFO;->cbSize:I

    return-void
.end method
