.class public Lcom/sun/jna/platform/win32/WinDef$HCURSOR;
.super Lcom/sun/jna/platform/win32/WinDef$HICON;
.source "WinDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HCURSOR"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinDef$HICON;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 431
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$HICON;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
