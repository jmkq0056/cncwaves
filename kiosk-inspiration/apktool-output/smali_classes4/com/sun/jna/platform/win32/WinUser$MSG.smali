.class public Lcom/sun/jna/platform/win32/WinUser$MSG;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "hWnd",
        "message",
        "wParam",
        "lParam",
        "time",
        "pt"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MSG"
.end annotation


# instance fields
.field public hWnd:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public lParam:Lcom/sun/jna/platform/win32/WinDef$LPARAM;

.field public message:I

.field public pt:Lcom/sun/jna/platform/win32/WinDef$POINT;

.field public time:I

.field public wParam:Lcom/sun/jna/platform/win32/WinDef$WPARAM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
