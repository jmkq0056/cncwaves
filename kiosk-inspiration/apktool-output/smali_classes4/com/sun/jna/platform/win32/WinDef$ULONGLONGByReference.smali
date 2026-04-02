.class public Lcom/sun/jna/platform/win32/WinDef$ULONGLONGByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "WinDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ULONGLONGByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 950
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinDef$ULONGLONGByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;)V
    .locals 1

    .line 959
    sget v0, Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;->SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 960
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$ULONGLONGByReference;->setValue(Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;
    .locals 4

    .line 978
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$ULONGLONGByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getLong(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;-><init>(J)V

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;)V
    .locals 5

    .line 969
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$ULONGLONGByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sun/jna/Pointer;->setLong(JJ)V

    return-void
.end method
