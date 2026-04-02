.class public Lcom/sun/jna/platform/win32/WinUser$HHOOK;
.super Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.source "WinUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HHOOK"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 477
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>()V

    return-void
.end method
