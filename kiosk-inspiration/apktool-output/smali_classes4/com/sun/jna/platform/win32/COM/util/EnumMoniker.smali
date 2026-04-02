.class public Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;
.super Ljava/lang/Object;
.source "EnumMoniker.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/sun/jna/platform/win32/COM/util/IDispatch;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

.field raw:Lcom/sun/jna/platform/win32/COM/IEnumMoniker;

.field rawNext:Lcom/sun/jna/platform/win32/COM/Moniker;

.field rawRot:Lcom/sun/jna/platform/win32/COM/IRunningObjectTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/sun/jna/platform/win32/COM/IEnumMoniker;Lcom/sun/jna/platform/win32/COM/IRunningObjectTable;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->rawRot:Lcom/sun/jna/platform/win32/COM/IRunningObjectTable;

    .line 52
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->raw:Lcom/sun/jna/platform/win32/COM/IEnumMoniker;

    .line 53
    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    .line 55
    invoke-interface {p1}, Lcom/sun/jna/platform/win32/COM/IEnumMoniker;->Reset()Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 58
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->cacheNext()V

    return-void
.end method


# virtual methods
.method protected cacheNext()V
    .locals 6

    .line 68
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 69
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;-><init>()V

    .line 71
    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->raw:Lcom/sun/jna/platform/win32/COM/IEnumMoniker;

    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    invoke-interface {v2, v3, v0, v1}, Lcom/sun/jna/platform/win32/COM/IEnumMoniker;->Next(Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v2

    .line 73
    sget-object v3, Lcom/sun/jna/platform/win32/WinNT;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {v3, v2}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$ULONG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$ULONG;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    new-instance v1, Lcom/sun/jna/platform/win32/COM/Moniker;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/COM/Moniker;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->rawNext:Lcom/sun/jna/platform/win32/COM/Moniker;

    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/WinNT;->S_FALSE:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {v0, v2}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-static {v2}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    :cond_1
    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->rawNext:Lcom/sun/jna/platform/win32/COM/Moniker;

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sun/jna/platform/win32/COM/util/IDispatch;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;-><init>(Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;)V

    return-object v0
.end method
