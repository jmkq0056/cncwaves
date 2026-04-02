.class public Lcom/sun/jna/platform/win32/WinUser$WINDOWINFO;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "rcWindow",
        "rcClient",
        "dwStyle",
        "dwExStyle",
        "dwWindowStatus",
        "cxWindowBorders",
        "cyWindowBorders",
        "atomWindowType",
        "wCreatorVersion"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WINDOWINFO"
.end annotation


# instance fields
.field public atomWindowType:S

.field public cbSize:I

.field public cxWindowBorders:I

.field public cyWindowBorders:I

.field public dwExStyle:I

.field public dwStyle:I

.field public dwWindowStatus:I

.field public rcClient:Lcom/sun/jna/platform/win32/WinDef$RECT;

.field public rcWindow:Lcom/sun/jna/platform/win32/WinDef$RECT;

.field public wCreatorVersion:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$WINDOWINFO;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinUser$WINDOWINFO;->cbSize:I

    return-void
.end method
