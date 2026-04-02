.class public Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "WinDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ULONGByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 879
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$ULONG;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$ULONG;)V
    .locals 1

    .line 888
    sget v0, Lcom/sun/jna/platform/win32/WinDef$ULONG;->SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 889
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;->setValue(Lcom/sun/jna/platform/win32/WinDef$ULONG;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/WinDef$ULONG;
    .locals 4

    .line 907
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WinDef$ULONG;)V
    .locals 3

    .line 898
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$ULONG;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    return-void
.end method
