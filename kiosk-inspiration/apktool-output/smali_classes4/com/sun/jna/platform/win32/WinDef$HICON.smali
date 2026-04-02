.class public Lcom/sun/jna/platform/win32/WinDef$HICON;
.super Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.source "WinDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HICON"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    .locals 0

    .line 398
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$HICON;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
