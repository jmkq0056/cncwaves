.class public Lcom/sun/jna/platform/win32/COM/ConnectionPointContainer;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "ConnectionPointContainer.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IConnectionPointContainer;


# direct methods
.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public EnumConnectionPoints()Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public FindConnectionPoint(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/ConnectionPointContainer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x4

    .line 57
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/ConnectionPointContainer;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method
