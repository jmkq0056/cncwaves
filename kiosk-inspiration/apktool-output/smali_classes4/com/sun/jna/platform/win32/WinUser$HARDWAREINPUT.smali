.class public Lcom/sun/jna/platform/win32/WinUser$HARDWAREINPUT;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "uMsg",
        "wParamL",
        "wParamH"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HARDWAREINPUT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinUser$HARDWAREINPUT$ByReference;
    }
.end annotation


# instance fields
.field public uMsg:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public wParamH:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wParamL:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1048
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1052
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1053
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$HARDWAREINPUT;->read()V

    return-void
.end method
