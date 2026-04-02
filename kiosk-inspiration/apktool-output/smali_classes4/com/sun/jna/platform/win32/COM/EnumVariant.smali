.class public Lcom/sun/jna/platform/win32/COM/EnumVariant;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "EnumVariant.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IEnumVariant;


# static fields
.field public static final IID:Lcom/sun/jna/platform/win32/Guid$IID;

.field public static final REFIID:Lcom/sun/jna/platform/win32/Guid$REFIID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    const-string v1, "{00020404-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/EnumVariant;->IID:Lcom/sun/jna/platform/win32/Guid$IID;

    .line 37
    new-instance v1, Lcom/sun/jna/platform/win32/Guid$REFIID;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    sput-object v1, Lcom/sun/jna/platform/win32/COM/EnumVariant;->REFIID:Lcom/sun/jna/platform/win32/Guid$REFIID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->setPointer(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public Clone()Lcom/sun/jna/platform/win32/COM/EnumVariant;
    .locals 4

    .line 71
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v1, v2}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 73
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 74
    new-instance v1, Lcom/sun/jna/platform/win32/COM/EnumVariant;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/COM/EnumVariant;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1
.end method

.method public bridge synthetic Clone()Lcom/sun/jna/platform/win32/COM/IEnumVariant;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->Clone()Lcom/sun/jna/platform/win32/COM/EnumVariant;

    move-result-object v0

    return-object v0
.end method

.method public Next(I)[Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 4

    .line 48
    new-array v0, p1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    .line 49
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, v2}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 51
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 52
    invoke-virtual {v1}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    new-array p1, p1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public Reset()V
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 66
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method

.method public Skip(I)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/EnumVariant;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 60
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method
