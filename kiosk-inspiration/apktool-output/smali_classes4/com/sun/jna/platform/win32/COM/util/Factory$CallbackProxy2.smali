.class Lcom/sun/jna/platform/win32/COM/util/Factory$CallbackProxy2;
.super Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/util/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackProxy2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/util/Factory;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)V
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

    .line 106
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$CallbackProxy2;->this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;

    .line 107
    invoke-direct {p0, p2, p3, p4}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;-><init>(Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)V

    return-void
.end method


# virtual methods
.method public Invoke(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    const/4 v0, 0x1

    .line 114
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/util/ComThread;->setComThread(Z)V

    const/4 v1, 0x0

    .line 116
    :try_start_0
    invoke-super/range {p0 .. p8}, Lcom/sun/jna/platform/win32/COM/util/CallbackProxy;->Invoke(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/util/ComThread;->setComThread(Z)V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/util/ComThread;->setComThread(Z)V

    .line 119
    throw p1
.end method
