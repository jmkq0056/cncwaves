.class public Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;
.super Ljava/lang/Object;
.source "IComEnumVariantIterator.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/sun/jna/platform/win32/Variant$VARIANT;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/sun/jna/platform/win32/Variant$VARIANT;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private backingIteration:Lcom/sun/jna/platform/win32/COM/EnumVariant;

.field private nextValue:Lcom/sun/jna/platform/win32/Variant$VARIANT;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/EnumVariant;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->backingIteration:Lcom/sun/jna/platform/win32/COM/EnumVariant;

    .line 85
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->retrieveNext()V

    return-void
.end method

.method private retrieveNext()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->backingIteration:Lcom/sun/jna/platform/win32/COM/EnumVariant;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->Next(I)[Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object v0

    .line 105
    array-length v1, v0

    if-nez v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->close()V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 108
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->nextValue:Lcom/sun/jna/platform/win32/Variant$VARIANT;

    return-void
.end method

.method public static wrap(Lcom/sun/jna/platform/win32/COM/util/IDispatch;)Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;
    .locals 4

    .line 62
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 63
    const-class v1, Lcom/sun/jna/platform/win32/COM/IUnknown;

    sget-object v2, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_NEWENUM:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2, v3}, Lcom/sun/jna/platform/win32/COM/util/IDispatch;->getProperty(Ljava/lang/Class;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/COM/IUnknown;

    .line 64
    sget-object v1, Lcom/sun/jna/platform/win32/COM/EnumVariant;->REFIID:Lcom/sun/jna/platform/win32/Guid$REFIID;

    invoke-interface {p0, v1, v0}, Lcom/sun/jna/platform/win32/COM/IUnknown;->QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 66
    invoke-interface {p0}, Lcom/sun/jna/platform/win32/COM/IUnknown;->Release()I

    .line 67
    new-instance p0, Lcom/sun/jna/platform/win32/COM/EnumVariant;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/EnumVariant;-><init>(Lcom/sun/jna/Pointer;)V

    .line 68
    new-instance v0, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;-><init>(Lcom/sun/jna/platform/win32/COM/EnumVariant;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->backingIteration:Lcom/sun/jna/platform/win32/COM/EnumVariant;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 115
    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->nextValue:Lcom/sun/jna/platform/win32/Variant$VARIANT;

    .line 116
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->Release()I

    .line 117
    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->backingIteration:Lcom/sun/jna/platform/win32/COM/EnumVariant;

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->close()V

    .line 124
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->nextValue:Lcom/sun/jna/platform/win32/Variant$VARIANT;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sun/jna/platform/win32/Variant$VARIANT;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->nextValue:Lcom/sun/jna/platform/win32/Variant$VARIANT;

    .line 96
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->retrieveNext()V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/IComEnumVariantIterator;->next()Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
