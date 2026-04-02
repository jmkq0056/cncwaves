.class public Lcom/sun/jna/platform/win32/ShellAPI$APPBARDATA;
.super Lcom/sun/jna/Structure;
.source "ShellAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "hWnd",
        "uCallbackMessage",
        "uEdge",
        "rc",
        "lParam"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/ShellAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APPBARDATA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/ShellAPI$APPBARDATA$ByReference;
    }
.end annotation


# instance fields
.field public cbSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public hWnd:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public lParam:Lcom/sun/jna/platform/win32/WinDef$LPARAM;

.field public rc:Lcom/sun/jna/platform/win32/WinDef$RECT;

.field public uCallbackMessage:Lcom/sun/jna/platform/win32/WinDef$UINT;

.field public uEdge:Lcom/sun/jna/platform/win32/WinDef$UINT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
