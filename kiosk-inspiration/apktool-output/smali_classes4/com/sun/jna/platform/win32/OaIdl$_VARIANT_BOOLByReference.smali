.class public Lcom/sun/jna/platform/win32/OaIdl$_VARIANT_BOOLByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_VARIANT_BOOLByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 207
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$_VARIANT_BOOLByReference;-><init>(Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;)V
    .locals 1

    const/4 v0, 0x2

    .line 211
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$_VARIANT_BOOLByReference;->setValue(Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;
    .locals 4

    .line 220
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$_VARIANT_BOOLByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getShort(J)S

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;-><init>(J)V

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$_VARIANT_BOOLByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;->shortValue()S

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setShort(JS)V

    return-void
.end method
