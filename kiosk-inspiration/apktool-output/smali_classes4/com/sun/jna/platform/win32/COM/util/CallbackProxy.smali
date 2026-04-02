.class public Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IDispatchCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static DEFAULT_BOOLEAN:Z

.field private static DEFAULT_BYTE:B

.field private static DEFAULT_DOUBLE:D

.field private static DEFAULT_FLOAT:F

.field private static DEFAULT_INT:I

.field private static DEFAULT_LONG:J

.field private static DEFAULT_SHORT:S


# instance fields
.field comEventCallbackInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field comEventCallbackListener:Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;

.field public dispatchListener:Lcom/sun/jna/platform/win32/COM/DispatchListener;

.field dsipIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/jna/platform/win32/OaIdl$DISPID;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

.field listenedToRiid:Lcom/sun/jna/platform/win32/Guid$REFIID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    .line 74
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->comEventCallbackInterface:Ljava/lang/Class;

    .line 75
    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->comEventCallbackListener:Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;

    .line 76
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->createRIID(Ljava/lang/Class;)Lcom/sun/jna/platform/win32/Guid$REFIID;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->listenedToRiid:Lcom/sun/jna/platform/win32/Guid$REFIID;

    .line 77
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->createDispIdMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->dsipIdMap:Ljava/util/Map;

    .line 78
    new-instance p1, Lcom/sun/jna/platform/win32/COM/DispatchListener;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/COM/DispatchListener;-><init>(Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->dispatchListener:Lcom/sun/jna/platform/win32/COM/DispatchListener;

    return-void
.end method


# virtual methods
.method public AddRef()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public GetIDsOfNames(Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 0

    .line 268
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const p2, -0x7fffbfff

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object p1
.end method

.method public GetTypeInfo(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 0

    .line 262
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const p2, -0x7fffbfff

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object p1
.end method

.method public GetTypeInfoCount(Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 257
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const v0, -0x7fffbfff

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object p1
.end method

.method public Invoke(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 0

    .line 278
    invoke-virtual/range {p0 .. p5}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->invokeOnThread(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;)V

    .line 280
    sget-object p1, Lcom/sun/jna/platform/win32/WinError;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    if-nez p2, :cond_0

    .line 287
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const p2, -0x7fffbffd

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object p1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->listenedToRiid:Lcom/sun/jna/platform/win32/Guid$REFIID;

    invoke-virtual {p1, v0}, Lcom/sun/jna/platform/win32/Guid$REFIID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/jna/ptr/PointerByReference;->setValue(Lcom/sun/jna/Pointer;)V

    .line 290
    sget-object p1, Lcom/sun/jna/platform/win32/WinError;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1

    .line 291
    :cond_1
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Guid$REFIID;->getValue()Lcom/sun/jna/platform/win32/Guid$IID;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/platform/win32/COM/Unknown;->IID_IUNKNOWN:Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/jna/ptr/PointerByReference;->setValue(Lcom/sun/jna/Pointer;)V

    .line 293
    sget-object p1, Lcom/sun/jna/platform/win32/WinError;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1

    .line 294
    :cond_2
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Guid$REFIID;->getValue()Lcom/sun/jna/platform/win32/Guid$IID;

    move-result-object p1

    sget-object v0, Lcom/sun/jna/platform/win32/COM/Dispatch;->IID_IDISPATCH:Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-virtual {p1, v0}, Lcom/sun/jna/platform/win32/Guid$IID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/jna/ptr/PointerByReference;->setValue(Lcom/sun/jna/Pointer;)V

    .line 296
    sget-object p1, Lcom/sun/jna/platform/win32/WinError;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1

    .line 299
    :cond_3
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const p2, -0x7fffbffe

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object p1
.end method

.method public Release()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method createDispIdMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Lcom/sun/jna/platform/win32/OaIdl$DISPID;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p1, v2

    .line 105
    const-class v4, Lcom/sun/jna/platform/win32/COM/util/annotation/ComEventCallback;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/sun/jna/platform/win32/COM/util/annotation/ComEventCallback;

    .line 106
    const-class v5, Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;

    const/4 v6, 0x0

    .line 107
    const-string v7, " not found"

    const-string v8, "DISPID for "

    const/4 v9, -0x1

    if-eqz v5, :cond_2

    .line 108
    invoke-interface {v5}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComMethod;->dispId()I

    move-result v5

    if-ne v9, v5, :cond_0

    .line 110
    invoke-virtual {p0, v4}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->fetchDispIdFromName(Lcom/sun/jna/platform/win32/COM/util/annotation/ComEventCallback;)I

    move-result v5

    :cond_0
    if-ne v5, v9, :cond_1

    .line 113
    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->comEventCallbackListener:Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-interface {v4, v7, v6}, Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;->errorReceivingCallbackEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 117
    :cond_1
    new-instance v4, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    invoke-direct {v4, v5}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_5

    .line 119
    invoke-interface {v4}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComEventCallback;->dispid()I

    move-result v5

    if-ne v9, v5, :cond_3

    .line 121
    invoke-virtual {p0, v4}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->fetchDispIdFromName(Lcom/sun/jna/platform/win32/COM/util/annotation/ComEventCallback;)I

    move-result v5

    :cond_3
    if-ne v5, v9, :cond_4

    .line 124
    iget-object v4, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->comEventCallbackListener:Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-interface {v4, v7, v6}, Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;->errorReceivingCallbackEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 128
    :cond_4
    new-instance v4, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    invoke-direct {v4, v5}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method createRIID(Ljava/lang/Class;)Lcom/sun/jna/platform/win32/Guid$REFIID;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sun/jna/platform/win32/Guid$REFIID;"
        }
    .end annotation

    .line 89
    const-class v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;

    if-eqz p1, :cond_1

    .line 94
    invoke-interface {p1}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;->iid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$REFIID;

    new-instance v1, Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Guid$IID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0

    .line 96
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v0, "ComInterface must define a value for iid"

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v0, "advise: Interface must define a value for either iid via the ComInterface annotation"

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method fetchDispIdFromName(Lcom/sun/jna/platform/win32/COM/util/annotation/ComEventCallback;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getPointer()Lcom/sun/jna/Pointer;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->dispatchListener:Lcom/sun/jna/platform/win32/COM/DispatchListener;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/DispatchListener;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    return-object v0
.end method

.method invokeOnThread(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;)V
    .locals 8

    .line 143
    invoke-virtual {p5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->getArgs()[Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-result-object p2

    .line 145
    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->dsipIdMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/Method;

    if-nez p3, :cond_0

    .line 147
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->comEventCallbackListener:Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "No method found with dispId = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;->errorReceivingCallbackEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 185
    :cond_0
    invoke-virtual {p5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->getRgdispidNamedArgs()[Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object p1

    .line 187
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    .line 188
    array-length p5, p4

    new-array v0, p5, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p5, :cond_1

    .line 191
    array-length v4, p2

    array-length v5, p1

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    if-lez v4, :cond_1

    .line 192
    aget-object v4, p4, v2

    .line 193
    array-length v5, p2

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    aget-object v5, p2, v5

    .line 194
    iget-object v6, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    invoke-static {v5, v4, v6, v3, v1}, Lcom/sun/jna/platform/win32/COM/util/Convert;->toJavaObject(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;ZZ)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 197
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 198
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;->intValue()I

    move-result v4

    if-lt v4, p5, :cond_2

    goto :goto_2

    .line 203
    :cond_2
    aget-object v5, p4, v4

    .line 204
    aget-object v6, p2, v2

    .line 205
    iget-object v7, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    invoke-static {v6, v5, v7, v3, v1}, Lcom/sun/jna/platform/win32/COM/util/Convert;->toJavaObject(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;ZZ)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_3
    if-ge p1, p5, :cond_c

    .line 212
    aget-object p2, v0, p1

    if-nez p2, :cond_b

    aget-object p2, p4, p1

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 213
    aget-object p2, p4, p1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 214
    sget-boolean p2, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->DEFAULT_BOOLEAN:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    goto/16 :goto_4

    .line 215
    :cond_4
    aget-object p2, p4, p1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 216
    sget-byte p2, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->DEFAULT_BYTE:B

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v0, p1

    goto/16 :goto_4

    .line 217
    :cond_5
    aget-object p2, p4, p1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 218
    sget-short p2, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->DEFAULT_SHORT:S

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_4

    .line 219
    :cond_6
    aget-object p2, p4, p1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 220
    sget p2, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->DEFAULT_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_4

    .line 221
    :cond_7
    aget-object p2, p4, p1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 222
    sget-wide v2, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->DEFAULT_LONG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_4

    .line 223
    :cond_8
    aget-object p2, p4, p1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 224
    sget p2, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->DEFAULT_FLOAT:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_4

    .line 225
    :cond_9
    aget-object p2, p4, p1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 226
    sget-wide v2, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->DEFAULT_DOUBLE:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_4

    .line 228
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Class type "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p4, p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " not mapped to primitive default value."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    .line 234
    :cond_c
    :try_start_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->comEventCallbackListener:Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 236
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    if-ge v1, p5, :cond_e

    .line 237
    aget-object p4, v0, v1

    if-nez p4, :cond_d

    .line 239
    const-string p4, "NULL"

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 241
    :cond_d
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 244
    :cond_e
    iget-object p4, p0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->comEventCallbackListener:Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Exception invoking method "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " supplied: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 244
    invoke-interface {p4, p2, p1}, Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;->errorReceivingCallbackEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
