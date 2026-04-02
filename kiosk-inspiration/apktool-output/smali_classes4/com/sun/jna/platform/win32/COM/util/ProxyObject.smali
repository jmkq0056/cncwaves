.class public Lcom/sun/jna/platform/win32/COM/util/ProxyObject;
.super Ljava/lang/Object;
.source "ProxyObject.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Lcom/sun/jna/platform/win32/COM/util/IDispatch;
.implements Lcom/sun/jna/platform/win32/COM/util/IRawDispatchHandle;
.implements Lcom/sun/jna/platform/win32/COM/util/IConnectionPoint;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

.field private final rawDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

.field private final theInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private unknownId:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/platform/win32/COM/IDispatch;",
            "Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 87
    iput-wide v0, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->unknownId:J

    .line 88
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->rawDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    .line 89
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->theInterface:Ljava/lang/Class;

    .line 90
    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    .line 93
    invoke-interface {p2}, Lcom/sun/jna/platform/win32/COM/IDispatch;->AddRef()I

    .line 94
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getUnknownId()J

    .line 95
    invoke-virtual {p3, p0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->register(Lcom/sun/jna/platform/win32/COM/util/ProxyObject;)V

    return-void
.end method

.method private fetchRawConnectionPoint(Lcom/sun/jna/platform/win32/Guid$IID;)Lcom/sun/jna/platform/win32/COM/ConnectionPoint;
    .locals 2

    .line 271
    const-class v0, Lcom/sun/jna/platform/win32/COM/util/IConnectionPointContainer;

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->queryInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/COM/util/IConnectionPointContainer;

    .line 272
    invoke-interface {v0}, Lcom/sun/jna/platform/win32/COM/util/IConnectionPointContainer;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    .line 273
    new-instance v1, Lcom/sun/jna/platform/win32/COM/ConnectionPointContainer;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Dispatch;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/COM/ConnectionPointContainer;-><init>(Lcom/sun/jna/Pointer;)V

    .line 276
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$REFIID;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Guid$IID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/Pointer;)V

    .line 277
    new-instance p1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {p1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 278
    invoke-virtual {v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/ConnectionPointContainer;->FindConnectionPoint(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 279
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 280
    new-instance v0, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;

    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0
.end method

.method private getAccessorName(Ljava/lang/reflect/Method;Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;)Ljava/lang/String;
    .locals 1

    .line 527
    invoke-interface {p2}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 529
    const-string p2, "get"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 532
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Property Accessor name must start with \'get\', or set the anotation \'name\' value"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_1
    invoke-interface {p2}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getIID(Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;)Lcom/sun/jna/platform/win32/Guid$IID;
    .locals 1

    .line 516
    invoke-interface {p1}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;->iid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 520
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v0, "ComInterface must define a value for iid"

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getMethodName(Ljava/lang/reflect/Method;Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;)Ljava/lang/String;
    .locals 1

    .line 555
    invoke-interface {p2}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 559
    :cond_0
    invoke-interface {p2}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMutatorName(Ljava/lang/reflect/Method;Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;)Ljava/lang/String;
    .locals 1

    .line 541
    invoke-interface {p2}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 543
    const-string p2, "set"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 546
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Property Mutator name must start with \'set\', or set the anotation \'name\' value"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 550
    :cond_1
    invoke-interface {p2}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnknownId()J
    .locals 5

    const-string v0, "getUnknownId: "

    const-wide/16 v1, -0x1

    .line 101
    iget-wide v3, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->unknownId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 103
    :try_start_0
    new-instance v1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 108
    sget-object v2, Lcom/sun/jna/platform/win32/COM/IUnknown;->IID_IUNKNOWN:Lcom/sun/jna/platform/win32/Guid$IID;

    .line 109
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v3

    new-instance v4, Lcom/sun/jna/platform/win32/Guid$REFIID;

    invoke-direct {v4, v2}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    invoke-interface {v3, v4, v1}, Lcom/sun/jna/platform/win32/COM/IDispatch;->QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v2

    .line 111
    sget-object v3, Lcom/sun/jna/platform/win32/WinNT;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {v3, v2}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    new-instance v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/COM/Dispatch;-><init>(Lcom/sun/jna/Pointer;)V

    .line 113
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Dispatch;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->unknownId:J

    .line 117
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Dispatch;->Release()I

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {v2}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessage(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v3, Lcom/sun/jna/platform/win32/COM/COMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 124
    instance-of v1, v0, Lcom/sun/jna/platform/win32/COM/COMException;

    if-eqz v1, :cond_1

    .line 125
    throw v0

    .line 127
    :cond_1
    new-instance v1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v2, "Error occured when trying get Unknown Id "

    invoke-direct {v1, v2, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->unknownId:J

    return-wide v0
.end method

.method private varargs setProperty(Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 383
    new-array v1, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    goto :goto_0

    .line 385
    :cond_0
    array-length v1, p2

    new-array v1, v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    :goto_0
    move-object v7, v1

    move v1, v0

    .line 387
    :goto_1
    array-length v2, v7

    if-ge v1, v2, :cond_1

    .line 388
    aget-object v2, p2, v1

    invoke-static {v2}, Lcom/sun/jna/platform/win32/COM/util/Convert;->toVariant(Ljava/lang/Object;)Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object v2

    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 390
    :cond_1
    new-instance v1, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v4, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v5

    const/4 v3, 0x4

    move-object v2, p0

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 393
    :goto_2
    array-length v1, v7

    if-ge v0, v1, :cond_2

    .line 395
    aget-object v1, v7, v0

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lcom/sun/jna/platform/win32/COM/util/Convert;->free(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 398
    :cond_2
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method

.method private varargs setProperty(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->resolveDispId(Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object p1

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->setProperty(Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)V

    return-void
.end method

.method private unfoldWhenVarargs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 467
    :cond_0
    array-length v0, p2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result p1

    if-eqz p1, :cond_2

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    instance-of p1, p1, [Ljava/lang/Object;

    if-nez p1, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 472
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 473
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    array-length v1, p1

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_2
    :goto_0
    return-object p2
.end method


# virtual methods
.method public advise(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackCookie;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;",
            ")",
            "Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackCookie;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .line 291
    :try_start_0
    const-class v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getIID(Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;)Lcom/sun/jna/platform/win32/Guid$IID;

    move-result-object v0

    .line 298
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->fetchRawConnectionPoint(Lcom/sun/jna/platform/win32/Guid$IID;)Lcom/sun/jna/platform/win32/COM/ConnectionPoint;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    invoke-virtual {v1, p1, p2}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->createDispatchCallback(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)Lcom/sun/jna/platform/win32/COM/IDispatchCallback;

    move-result-object p1

    .line 304
    invoke-interface {p2, p1}, Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;->setDispatchCallbackListener(Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    .line 307
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>()V

    .line 308
    invoke-virtual {v0, p1, v1}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->Advise(Lcom/sun/jna/platform/win32/COM/IUnknownCallback;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 309
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->Release()I

    .line 311
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 314
    new-instance p1, Lcom/sun/jna/platform/win32/COM/util/ComEventCallbackCookie;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/util/ComEventCallbackCookie;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    return-object p1

    .line 293
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v0, "advise: Interface must define a value for either iid via the ComInterface annotation"

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 318
    instance-of v0, p1, Lcom/sun/jna/platform/win32/COM/COMException;

    if-eqz v0, :cond_1

    .line 319
    throw p1

    .line 321
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/COM/COMException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occured in advise when trying to connect the listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->rawDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    check-cast v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Dispatch;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->rawDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/COM/IDispatch;->Release()I

    .line 143
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->rawDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    check-cast v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/COM/Dispatch;->setPointer(Lcom/sun/jna/Pointer;)V

    .line 144
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    invoke-virtual {v0, p0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->unregister(Lcom/sun/jna/platform/win32/COM/util/ProxyObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 167
    :cond_0
    instance-of v1, p1, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 168
    check-cast p1, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;

    .line 169
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getUnknownId()J

    move-result-wide v3

    invoke-direct {p1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getUnknownId()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v0

    .line 170
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 172
    instance-of v1, p1, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;

    if-eqz v1, :cond_3

    .line 174
    :try_start_0
    check-cast p1, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;

    .line 175
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getUnknownId()J

    move-result-wide v3

    invoke-direct {p1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getUnknownId()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    return v2

    :catch_0
    :cond_3
    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->dispose()V

    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public varargs getProperty(Ljava/lang/Class;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/sun/jna/platform/win32/OaIdl$DISPID;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 411
    new-array v1, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    goto :goto_0

    .line 413
    :cond_0
    array-length v1, p3

    new-array v1, v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    :goto_0
    move-object v7, v1

    move v1, v0

    .line 415
    :goto_1
    array-length v2, v7

    if-ge v1, v2, :cond_1

    .line 416
    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/sun/jna/platform/win32/COM/util/Convert;->toVariant(Ljava/lang/Object;)Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object v2

    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 418
    :cond_1
    new-instance v4, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v3, 0x2

    .line 419
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v5

    move-object v2, p0

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p2

    move v1, v0

    .line 421
    :goto_2
    array-length v3, v7

    if-ge v1, v3, :cond_2

    .line 423
    aget-object v3, v7, v1

    aget-object v5, p3, v1

    invoke-static {v3, v5}, Lcom/sun/jna/platform/win32/COM/util/Convert;->free(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 426
    :cond_2
    invoke-static {p2}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 428
    iget-object p2, v2, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    const/4 p3, 0x1

    invoke-static {v4, p1, p2, v0, p3}, Lcom/sun/jna/platform/win32/COM/util/Convert;->toJavaObject(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs getProperty(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->resolveDispId(Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object p2

    .line 404
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getProperty(Ljava/lang/Class;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->rawDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 191
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getUnknownId()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    add-int/2addr v2, v0

    return v2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 204
    const-class v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;

    .line 205
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;

    .line 206
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 208
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sun/jna/platform/win32/COM/util/IRawDispatchHandle;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sun/jna/platform/win32/COM/util/IUnknown;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sun/jna/platform/win32/COM/util/IDispatch;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sun/jna/platform/win32/COM/util/IConnectionPoint;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    :cond_2
    :try_start_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_3
    if-nez v0, :cond_4

    .line 220
    invoke-static {p2}, Lcom/sun/jna/internal/ReflectionUtils;->isDefault(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    invoke-static {p2}, Lcom/sun/jna/internal/ReflectionUtils;->getMethodHandle(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p2

    .line 222
    invoke-static {p1, p2, p3}, Lcom/sun/jna/internal/ReflectionUtils;->invokeDefaultMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 225
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 226
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    const-class v1, Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 230
    invoke-interface {v1}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;->dispId()I

    move-result v4

    .line 231
    invoke-direct {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->unfoldWhenVarargs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v0, :cond_6

    if-eq v4, v2, :cond_5

    .line 234
    new-instance p1, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    invoke-direct {p1, v4}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    invoke-direct {p0, p1, v5}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->setProperty(Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)V

    return-object v3

    .line 237
    :cond_5
    invoke-direct {p0, p2, v1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getMutatorName(Ljava/lang/reflect/Method;Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;)Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-direct {p0, p1, v5}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->setProperty(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_6
    if-eq v4, v2, :cond_7

    .line 243
    new-instance p2, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    invoke-direct {p2, v4}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getProperty(Ljava/lang/Class;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 245
    :cond_7
    invoke-direct {p0, p2, v1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getAccessorName(Ljava/lang/reflect/Method;Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;)Ljava/lang/String;

    move-result-object p2

    .line 246
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getProperty(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 251
    :cond_8
    const-class v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;

    if-eqz v0, :cond_a

    .line 253
    invoke-direct {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->unfoldWhenVarargs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 254
    invoke-interface {v0}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;->dispId()I

    move-result v1

    if-eq v1, v2, :cond_9

    .line 256
    new-instance p2, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    invoke-direct {p2, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->invokeMethod(Ljava/lang/Class;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 258
    :cond_9
    invoke-direct {p0, p2, v0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getMethodName(Ljava/lang/reflect/Method;Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;)Ljava/lang/String;

    move-result-object p2

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v3
.end method

.method public varargs invokeMethod(Ljava/lang/Class;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/sun/jna/platform/win32/OaIdl$DISPID;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 443
    new-array v1, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    goto :goto_0

    .line 445
    :cond_0
    array-length v1, p3

    new-array v1, v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    :goto_0
    move-object v7, v1

    move v1, v0

    .line 447
    :goto_1
    array-length v2, v7

    if-ge v1, v2, :cond_1

    .line 448
    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/sun/jna/platform/win32/COM/util/Convert;->toVariant(Ljava/lang/Object;)Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object v2

    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 450
    :cond_1
    new-instance v4, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v3, 0x1

    .line 451
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v5

    move-object v2, p0

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p2

    move v1, v0

    .line 453
    :goto_2
    array-length v3, v7

    if-ge v1, v3, :cond_2

    .line 455
    aget-object v3, v7, v1

    aget-object v5, p3, v1

    invoke-static {v3, v5}, Lcom/sun/jna/platform/win32/COM/util/Convert;->free(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 458
    :cond_2
    invoke-static {p2}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 460
    iget-object p2, v2, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    const/4 p3, 0x1

    invoke-static {v4, p1, p2, v0, p3}, Lcom/sun/jna/platform/win32/COM/util/Convert;->toJavaObject(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->resolveDispId(Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object p2

    .line 434
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->invokeMethod(Ljava/lang/Class;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    .line 646
    move-object v0, v5

    check-cast v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 633
    new-array v6, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v0, 0x0

    aput-object p5, v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_6

    .line 669
    new-instance v5, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;-><init>()V

    .line 670
    new-instance v7, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;-><init>()V

    .line 671
    new-instance v8, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v8}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 674
    array-length v1, p5

    if-lez v1, :cond_0

    .line 675
    array-length v1, p5

    .line 676
    new-array v2, v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move v3, v0

    move v4, v1

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 680
    aget-object v6, p5, v4

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v1, v0

    :cond_1
    const/4 p5, 0x4

    const/4 v3, 0x1

    if-ne p1, p5, :cond_2

    .line 686
    new-array p5, v3, [Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    sget-object v4, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_PROPERTYPUT:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    aput-object v4, p5, v0

    invoke-virtual {v5, p5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->setRgdispidNamedArgs([Lcom/sun/jna/platform/win32/OaIdl$DISPID;)V

    :cond_2
    if-eq p1, v3, :cond_3

    const/4 p5, 0x2

    if-ne p1, p5, :cond_4

    :cond_3
    const/4 p1, 0x3

    :cond_4
    if-lez v1, :cond_5

    .line 721
    invoke-virtual {v5, v2}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->setArgs([Lcom/sun/jna/platform/win32/Variant$VARIANT;)V

    .line 724
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->write()V

    .line 727
    :cond_5
    new-instance v2, Lcom/sun/jna/platform/win32/Guid$REFIID;

    sget-object p5, Lcom/sun/jna/platform/win32/Guid;->IID_NULL:Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {v2, p5}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    iget-object p5, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    .line 730
    invoke-virtual {p5}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->getLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v3

    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$WORD;

    int-to-long v0, p1

    invoke-direct {v4, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$WORD;-><init>(J)V

    move-object v6, p2

    move-object v0, p3

    move-object v1, p4

    .line 727
    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/COM/IDispatch;->Invoke(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 737
    invoke-static {p1, v7, v8}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;Lcom/sun/jna/ptr/IntByReference;)V

    return-object p1

    .line 663
    :cond_6
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string p2, "pDisp (IDispatch) parameter is null!"

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    .line 639
    move-object v0, v5

    check-cast v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 627
    new-array v6, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v0, 0x0

    aput-object p5, v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    invoke-virtual {p0, p3, p4}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->resolveDispId(Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 586
    move-object v1, v0

    check-cast v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 575
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 580
    move-object v1, v0

    check-cast v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 570
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0, p3}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->resolveDispId(Ljava/lang/String;)Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method public queryInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const-string v0, "queryInterface: "

    .line 483
    :try_start_0
    const-class v1, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;

    if-eqz v1, :cond_1

    .line 488
    invoke-direct {p0, v1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getIID(Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;)Lcom/sun/jna/platform/win32/Guid$IID;

    move-result-object v1

    .line 489
    new-instance v2, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v2}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 491
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v3

    new-instance v4, Lcom/sun/jna/platform/win32/Guid$REFIID;

    invoke-direct {v4, v1}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    invoke-interface {v3, v4, v2}, Lcom/sun/jna/platform/win32/COM/IDispatch;->QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 493
    sget-object v3, Lcom/sun/jna/platform/win32/WinNT;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {v3, v1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    new-instance v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    invoke-virtual {v2}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/COM/Dispatch;-><init>(Lcom/sun/jna/Pointer;)V

    .line 495
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    invoke-virtual {v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->createProxy(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;)Ljava/lang/Object;

    move-result-object v1

    .line 499
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Dispatch;->Release()I

    return-object v1

    .line 502
    :cond_0
    invoke-static {v1}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessage(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Ljava/lang/String;

    move-result-object v2

    .line 503
    new-instance v3, Lcom/sun/jna/platform/win32/COM/COMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    throw v3

    .line 485
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v1, "queryInterface: Interface must define a value for iid via the ComInterface annotation"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 507
    instance-of v1, v0, Lcom/sun/jna/platform/win32/COM/COMException;

    if-eqz v1, :cond_2

    .line 508
    throw v0

    .line 510
    :cond_2
    new-instance v1, Lcom/sun/jna/platform/win32/COM/COMException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occured when trying to query for interface "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected resolveDispId(Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/OaIdl$DISPID;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 609
    new-array v3, v0, [Lcom/sun/jna/WString;

    new-instance v0, Lcom/sun/jna/WString;

    invoke-direct {v0, p2}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    aput-object v0, v3, p2

    .line 610
    new-instance v6, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;-><init>()V

    .line 612
    new-instance v2, Lcom/sun/jna/platform/win32/Guid$REFIID;

    sget-object p2, Lcom/sun/jna/platform/win32/Guid;->IID_NULL:Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {v2, p2}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    .line 616
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->getLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v5

    const/4 v4, 0x1

    move-object v1, p1

    .line 612
    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/IDispatch;->GetIDsOfNames(Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 619
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 621
    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;->getValue()Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object p1

    return-object p1

    .line 606
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string p2, "pDisp (IDispatch) parameter is null!"

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected resolveDispId(Ljava/lang/String;)Lcom/sun/jna/platform/win32/OaIdl$DISPID;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->resolveDispId(Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object p1

    return-object p1
.end method

.method public setProperty(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/jna/platform/win32/OaIdl$DISPID;",
            "TT;)V"
        }
    .end annotation

    .line 366
    invoke-static {p2}, Lcom/sun/jna/platform/win32/COM/util/Convert;->toVariant(Ljava/lang/Object;)Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object v5

    const/4 v2, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v3

    const/4 v1, 0x4

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 368
    invoke-static {v5, p2}, Lcom/sun/jna/platform/win32/COM/util/Convert;->free(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Object;)V

    .line 369
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->resolveDispId(Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object p1

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->setProperty(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->theInterface:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{unk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unadvise(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackCookie;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackCookie;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .line 331
    :try_start_0
    const-class v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;

    if-eqz p1, :cond_0

    .line 336
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getIID(Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;)Lcom/sun/jna/platform/win32/Guid$IID;

    move-result-object p1

    .line 338
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->fetchRawConnectionPoint(Lcom/sun/jna/platform/win32/Guid$IID;)Lcom/sun/jna/platform/win32/COM/ConnectionPoint;

    move-result-object p1

    .line 340
    check-cast p2, Lcom/sun/jna/platform/win32/COM/util/ComEventCallbackCookie;

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/COM/util/ComEventCallbackCookie;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->Unadvise(Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p2

    .line 342
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->Release()I

    .line 343
    invoke-static {p2}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 333
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string p2, "unadvise: Interface must define a value for iid via the ComInterface annotation"

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 347
    instance-of p2, p1, Lcom/sun/jna/platform/win32/COM/COMException;

    if-eqz p2, :cond_1

    .line 348
    throw p1

    .line 350
    :cond_1
    new-instance p2, Lcom/sun/jna/platform/win32/COM/COMException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occured in unadvise when trying to disconnect the listener from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
