.class public Lcom/sun/jna/platform/win32/WinDef$WPARAM;
.super Lcom/sun/jna/platform/win32/WinDef$UINT_PTR;
.source "WinDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WPARAM"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 793
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$WPARAM;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 803
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/WinDef$UINT_PTR;-><init>(J)V

    return-void
.end method
