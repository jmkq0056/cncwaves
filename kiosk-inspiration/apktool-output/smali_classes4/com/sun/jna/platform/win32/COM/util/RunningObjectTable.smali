.class public Lcom/sun/jna/platform/win32/COM/util/RunningObjectTable;
.super Ljava/lang/Object;
.source "RunningObjectTable.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/util/IRunningObjectTable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

.field raw:Lcom/sun/jna/platform/win32/COM/RunningObjectTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/sun/jna/platform/win32/COM/RunningObjectTable;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/RunningObjectTable;->raw:Lcom/sun/jna/platform/win32/COM/RunningObjectTable;

    .line 38
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/RunningObjectTable;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    return-void
.end method


# virtual methods
.method public enumRunning()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/sun/jna/platform/win32/COM/util/IDispatch;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/RunningObjectTable;->raw:Lcom/sun/jna/platform/win32/COM/RunningObjectTable;

    invoke-virtual {v1, v0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->EnumRunning(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 53
    new-instance v1, Lcom/sun/jna/platform/win32/COM/EnumMoniker;

    .line 54
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/COM/EnumMoniker;-><init>(Lcom/sun/jna/Pointer;)V

    .line 56
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/util/RunningObjectTable;->raw:Lcom/sun/jna/platform/win32/COM/RunningObjectTable;

    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/util/RunningObjectTable;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;-><init>(Lcom/sun/jna/platform/win32/COM/IEnumMoniker;Lcom/sun/jna/platform/win32/COM/IRunningObjectTable;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;)V

    return-object v0
.end method

.method public getActiveObjectsByInterface(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/RunningObjectTable;->enumRunning()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/platform/win32/COM/util/IDispatch;

    .line 67
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sun/jna/platform/win32/COM/util/IDispatch;->queryInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/COM/COMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0
.end method
