.class public Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOCALE_USER_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;


# instance fields
.field private LCID:Lcom/sun/jna/platform/win32/WinDef$LCID;

.field private final registeredObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sun/jna/platform/win32/COM/util/ProxyObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 220
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetUserDefaultLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->LOCALE_USER_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->registeredObjects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method createDispatchCallback(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)Lcom/sun/jna/platform/win32/COM/IDispatchCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;",
            ")",
            "Lcom/sun/jna/platform/win32/COM/IDispatchCallback;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;-><init>(Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)V

    return-object v0
.end method

.method public createObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 106
    const-class v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->discoverClsId(Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)Lcom/sun/jna/platform/win32/Guid$GUID;

    move-result-object v2

    .line 113
    new-instance v6, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 114
    sget-object v1, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    const/16 v4, 0x15

    sget-object v5, Lcom/sun/jna/platform/win32/COM/IDispatch;->IID_IDISPATCH:Lcom/sun/jna/platform/win32/Guid$IID;

    const/4 v3, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/win32/Ole32;->CoCreateInstance(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 118
    new-instance v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/COM/Dispatch;-><init>(Lcom/sun/jna/Pointer;)V

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->createProxy(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;)Ljava/lang/Object;

    move-result-object p1

    .line 122
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Dispatch;->Release()I

    return-object p1

    .line 108
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v0, "createObject: Interface must define a value for either clsId or progId via the ComInterface annotation"

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createProxy(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/sun/jna/platform/win32/COM/IDispatch;",
            ")TT;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;

    invoke-direct {v0, p1, p2, p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;-><init>(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method discoverClsId(Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)Lcom/sun/jna/platform/win32/Guid$GUID;
    .locals 2

    .line 156
    invoke-interface {p1}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;->clsId()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-interface {p1}, Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;->progId()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    new-instance p1, Lcom/sun/jna/platform/win32/Guid$CLSID;

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/Guid$CLSID;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;-><init>()V

    .line 163
    sget-object v1, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v1, p1, v0}, Lcom/sun/jna/platform/win32/Ole32;->CLSIDFromProgID(Ljava/lang/String;Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 165
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-object v0

    .line 168
    :cond_1
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v0, "ComObject must define a value for either clsId or progId"

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disposeAll()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->registeredObjects:Ljava/util/List;

    monitor-enter v0

    .line 206
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->registeredObjects:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 208
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->dispose()V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->registeredObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 214
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fetchObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
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

    .line 133
    const-class v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->discoverClsId(Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)Lcom/sun/jna/platform/win32/Guid$GUID;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 141
    sget-object v2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Lcom/sun/jna/platform/win32/OleAuto;->GetActiveObject(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 144
    new-instance v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/COM/Dispatch;-><init>(Lcom/sun/jna/Pointer;)V

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->createProxy(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;)Ljava/lang/Object;

    move-result-object p1

    .line 148
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Dispatch;->Release()I

    return-object p1

    .line 135
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string v0, "createObject: Interface must define a value for either clsId or progId via the ComInterface annotation"

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->disposeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    throw v0
.end method

.method public getLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->LCID:Lcom/sun/jna/platform/win32/WinDef$LCID;

    if-eqz v0, :cond_0

    return-object v0

    .line 234
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->LOCALE_USER_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    return-object v0
.end method

.method public getRunningObjectTable()Lcom/sun/jna/platform/win32/COM/util/IRunningObjectTable;
    .locals 5

    .line 75
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 77
    sget-object v1, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/win32/Ole32;->GetRunningObjectTable(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 79
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 80
    new-instance v1, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;

    .line 81
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;-><init>(Lcom/sun/jna/Pointer;)V

    .line 82
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/RunningObjectTable;

    invoke-direct {v0, v1, p0}, Lcom/sun/jna/platform/win32/COM/util/RunningObjectTable;-><init>(Lcom/sun/jna/platform/win32/COM/RunningObjectTable;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;)V

    return-object v0
.end method

.method public register(Lcom/sun/jna/platform/win32/COM/util/ProxyObject;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->registeredObjects:Ljava/util/List;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->registeredObjects:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLCID(Lcom/sun/jna/platform/win32/WinDef$LCID;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->LCID:Lcom/sun/jna/platform/win32/WinDef$LCID;

    return-void
.end method

.method public unregister(Lcom/sun/jna/platform/win32/COM/util/ProxyObject;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->registeredObjects:Ljava/util/List;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->registeredObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 194
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 196
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 198
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 201
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
