.class public Lcom/sun/jna/platform/win32/WinDef$HGLRCByReference;
.super Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;
.source "WinDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HGLRCByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1763
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$HGLRC;)V
    .locals 0

    .line 1774
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    return-void
.end method
