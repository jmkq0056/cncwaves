.class public Lcom/sun/jna/platform/win32/COM/Unknown;
.super Lcom/sun/jna/platform/win32/COM/COMInvoker;
.source "Unknown.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IUnknown;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/Unknown$ByReference;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/COMInvoker;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/COMInvoker;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;->setPointer(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public AddRef()I
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sun/jna/platform/win32/COM/Unknown;->_invokeNativeInt(I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/Unknown;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public Release()I
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/sun/jna/platform/win32/COM/Unknown;->_invokeNativeInt(I[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
