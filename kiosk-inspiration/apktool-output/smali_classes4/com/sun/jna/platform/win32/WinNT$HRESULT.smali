.class public Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.super Lcom/sun/jna/NativeLong;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HRESULT"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1372
    invoke-direct {p0}, Lcom/sun/jna/NativeLong;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    .line 1376
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/NativeLong;-><init>(J)V

    return-void
.end method
