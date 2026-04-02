.class public Lcom/sun/jna/platform/win32/WinUser$KBDLLHOOKSTRUCT;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "vkCode",
        "scanCode",
        "flags",
        "time",
        "dwExtraInfo"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KBDLLHOOKSTRUCT"
.end annotation


# instance fields
.field public dwExtraInfo:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public flags:I

.field public scanCode:I

.field public time:I

.field public vkCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 614
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
