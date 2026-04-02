.class public Lcom/sun/jna/platform/win32/Ddeml$MONMSGSTRUCT;
.super Lcom/sun/jna/Structure;
.source "Ddeml.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cb",
        "hwndTo",
        "dwTime",
        "hTask",
        "wMsg",
        "wParam",
        "lParam",
        "dmhd"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ddeml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MONMSGSTRUCT"
.end annotation


# instance fields
.field public cb:I

.field public dmhd:Lcom/sun/jna/platform/win32/Ddeml$DDEML_MSG_HOOK_DATA;

.field public dwTime:I

.field public hTask:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hwndTo:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public lParam:Lcom/sun/jna/platform/win32/WinDef$LPARAM;

.field public wMsg:I

.field public wParam:Lcom/sun/jna/platform/win32/WinDef$WPARAM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 527
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
