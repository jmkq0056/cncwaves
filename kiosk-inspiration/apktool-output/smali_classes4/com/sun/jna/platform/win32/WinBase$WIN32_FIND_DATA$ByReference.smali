.class public Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA$ByReference;
.super Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;
.source "WinBase.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 657
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 661
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
