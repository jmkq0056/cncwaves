.class public Lcom/sun/jna/platform/win32/WinUser$KEYBDINPUT;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "wVk",
        "wScan",
        "dwFlags",
        "time",
        "dwExtraInfo"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KEYBDINPUT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinUser$KEYBDINPUT$ByReference;
    }
.end annotation


# static fields
.field public static final KEYEVENTF_EXTENDEDKEY:I = 0x1

.field public static final KEYEVENTF_KEYUP:I = 0x2

.field public static final KEYEVENTF_SCANCODE:I = 0x8

.field public static final KEYEVENTF_UNICODE:I = 0x4


# instance fields
.field public dwExtraInfo:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public dwFlags:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public time:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public wScan:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wVk:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1149
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1153
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1154
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$KEYBDINPUT;->read()V

    return-void
.end method
