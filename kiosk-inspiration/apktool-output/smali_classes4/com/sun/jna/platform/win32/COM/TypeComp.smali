.class public Lcom/sun/jna/platform/win32/COM/TypeComp;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "TypeComp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/TypeComp$ByReference;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public Bind(Lcom/sun/jna/WString;Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/win32/OaIdl$DESCKIND$ByReference;Lcom/sun/jna/platform/win32/OaIdl$BINDPTR$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 7

    .line 91
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeComp;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 p3, 0x3

    .line 90
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeComp;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public BindType(Lcom/sun/jna/WString;Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeComp;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 p3, 0x4

    .line 115
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeComp;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method
