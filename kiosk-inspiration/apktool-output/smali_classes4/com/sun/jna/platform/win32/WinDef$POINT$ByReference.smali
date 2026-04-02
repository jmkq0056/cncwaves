.class public Lcom/sun/jna/platform/win32/WinDef$POINT$ByReference;
.super Lcom/sun/jna/platform/win32/WinDef$POINT;
.source "WinDef.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef$POINT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1110
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinDef$POINT;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1118
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/WinDef$POINT;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1114
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$POINT;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
