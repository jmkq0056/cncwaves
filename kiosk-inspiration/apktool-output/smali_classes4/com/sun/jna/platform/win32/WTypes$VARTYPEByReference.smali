.class public Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "WTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VARTYPEByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 300
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;)V
    .locals 1

    const/4 v0, 0x2

    .line 304
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;->setValue(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 3

    const/4 v0, 0x2

    .line 309
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 310
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setShort(JS)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;
    .locals 4

    .line 318
    new-instance v0, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getShort(J)S

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;-><init>(I)V

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;)V
    .locals 3

    .line 314
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->shortValue()S

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setShort(JS)V

    return-void
.end method
