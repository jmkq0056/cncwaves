.class public Lcom/sun/jna/platform/win32/WinUser$GUITHREADINFO;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "flags",
        "hwndActive",
        "hwndFocus",
        "hwndCapture",
        "hwndMenuOwner",
        "hwndMoveSize",
        "hwndCaret",
        "rcCaret"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GUITHREADINFO"
.end annotation


# instance fields
.field public cbSize:I

.field public flags:I

.field public hwndActive:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public hwndCapture:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public hwndCaret:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public hwndFocus:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public hwndMenuOwner:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public hwndMoveSize:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public rcCaret:Lcom/sun/jna/platform/win32/WinDef$RECT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$GUITHREADINFO;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinUser$GUITHREADINFO;->cbSize:I

    return-void
.end method
