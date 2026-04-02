.class public Lcom/sun/jna/platform/win32/WinDef$LONGByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "WinDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LONGByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 251
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$LONG;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$LONG;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$LONG;)V
    .locals 1

    .line 260
    sget v0, Lcom/sun/jna/platform/win32/WinDef$LONG;->SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 261
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;->setValue(Lcom/sun/jna/platform/win32/WinDef$LONG;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/WinDef$LONG;
    .locals 4

    .line 279
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$LONG;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WinDef$LONG;)V
    .locals 3

    .line 270
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$LONG;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    return-void
.end method
