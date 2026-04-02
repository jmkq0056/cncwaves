.class public interface abstract Lcom/sun/jna/platform/win32/WinUser$LowLevelKeyboardProc;
.super Ljava/lang/Object;
.source "WinUser.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinUser$HOOKPROC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LowLevelKeyboardProc"
.end annotation


# virtual methods
.method public abstract callback(ILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinUser$KBDLLHOOKSTRUCT;)Lcom/sun/jna/platform/win32/WinDef$LRESULT;
.end method
