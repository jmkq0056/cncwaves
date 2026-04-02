.class public Lcom/sun/jna/platform/win32/WinUser$INPUT$ByReference;
.super Lcom/sun/jna/platform/win32/WinUser$INPUT;
.source "WinUser.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser$INPUT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1074
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinUser$INPUT;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1078
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinUser$INPUT;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
