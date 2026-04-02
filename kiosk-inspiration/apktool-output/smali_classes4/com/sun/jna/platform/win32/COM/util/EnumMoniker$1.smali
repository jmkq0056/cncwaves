.class Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;
.super Ljava/lang/Object;
.source "EnumMoniker.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/sun/jna/platform/win32/COM/util/IDispatch;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;

    return-void
.end method

.method constructor <init>(Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;->this$0:Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;->this$0:Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->rawNext:Lcom/sun/jna/platform/win32/COM/Moniker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/sun/jna/platform/win32/COM/util/IDispatch;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;->this$0:Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->rawNext:Lcom/sun/jna/platform/win32/COM/Moniker;

    .line 97
    new-instance v1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 98
    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;->this$0:Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;

    iget-object v2, v2, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->rawRot:Lcom/sun/jna/platform/win32/COM/IRunningObjectTable;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Moniker;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/sun/jna/platform/win32/COM/IRunningObjectTable;->GetObject(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 117
    new-instance v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/COM/Dispatch;-><init>(Lcom/sun/jna/Pointer;)V

    .line 118
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;->this$0:Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->cacheNext()V

    .line 119
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;->this$0:Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker;->factory:Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;

    const-class v2, Lcom/sun/jna/platform/win32/COM/util/IDispatch;

    invoke-virtual {v1, v2, v0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->createProxy(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/COM/util/IDispatch;

    .line 121
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Dispatch;->Release()I

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/EnumMoniker$1;->next()Lcom/sun/jna/platform/win32/COM/util/IDispatch;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
