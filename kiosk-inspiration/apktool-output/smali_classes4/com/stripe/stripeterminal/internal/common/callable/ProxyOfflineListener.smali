.class public final Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;
.super Ljava/lang/Object;
.source "ProxyOfflineListener.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/OfflineListener;
.implements Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProxyOfflineListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProxyOfflineListener.kt\ncom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1747#2,3:109\n*S KotlinDebug\n*F\n+ 1 ProxyOfflineListener.kt\ncom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener\n*L\n94#1:109,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0001%B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J!\u0010\u001f\u001a\u00020\u00132\u0017\u0010 \u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00130!\u00a2\u0006\u0002\u0008\"H\u0002J\u000e\u0010#\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0001J\u000e\u0010$\u001a\u00020\u0007*\u0004\u0018\u00010\u0001H\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u000bR(\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001@CX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0004R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000b\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;",
        "listener",
        "(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V",
        "_isListenerSetFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "_listenerHasSetupIntentCallbackFlow",
        "isListenerSetFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "value",
        "getListener",
        "()Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "setOfflineListener",
        "listenerHasSetupIntentCallbackFlow",
        "getListenerHasSetupIntentCallbackFlow",
        "onForwardingFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onOfflineStatusChange",
        "offlineStatus",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
        "onPaymentIntentForwarded",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "onSetupIntentForwarded",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "safelyCall",
        "method",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "setListener",
        "verifySetupIntentCallbacksOnOfflineListener",
        "Companion",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

.field private static final SETUP_INTENT_CALLBACK_NAME:Ljava/lang/String; = "onSetupIntentForwarded"


# instance fields
.field private final _isListenerSetFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _listenerHasSetupIntentCallbackFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isListenerSetFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

.field private final listenerHasSetupIntentCallbackFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->Companion:Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$Companion;

    .line 104
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->_isListenerSetFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 28
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->verifySetupIntentCallbacksOnOfflineListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 27
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->_listenerHasSetupIntentCallbackFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    .line 51
    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->isListenerSetFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 53
    check-cast v1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->listenerHasSetupIntentCallbackFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method private final safelyCall(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    :try_start_0
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    new-array v5, v1, [Lkotlin/Pair;

    invoke-virtual {v3, v4, v5}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 78
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    :catch_0
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected failure in OfflineListener::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {v0, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final setOfflineListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 2

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->_isListenerSetFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->_listenerHasSetupIntentCallbackFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->verifySetupIntentCallbacksOnOfflineListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final verifySetupIntentCallbacksOnOfflineListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 87
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 90
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/KClass;

    .line 91
    const-class v2, Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 94
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/reflect/full/KClasses;->getDeclaredFunctions(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 109
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KFunction;

    .line 94
    invoke-interface {v3}, Lkotlin/reflect/KFunction;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSetupIntentForwarded"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    .line 97
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/reflect/full/KClasses;->getSuperclasses(Lkotlin/reflect/KClass;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final getListener()Lcom/stripe/stripeterminal/external/callable/OfflineListener;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    return-object v0
.end method

.method public final getListenerHasSetupIntentCallbackFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->listenerHasSetupIntentCallbackFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isListenerSetFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->isListenerSetFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public onForwardingFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onForwardingFailure$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onForwardingFailure$1;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->safelyCall(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onOfflineStatusChange(Lcom/stripe/stripeterminal/external/models/OfflineStatus;)V
    .locals 1

    const-string v0, "offlineStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onOfflineStatusChange$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onOfflineStatusChange$1;-><init>(Lcom/stripe/stripeterminal/external/models/OfflineStatus;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->safelyCall(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onPaymentIntentForwarded(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onPaymentIntentForwarded$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onPaymentIntentForwarded$1;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->safelyCall(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onSetupIntentForwarded(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "setupIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onSetupIntentForwarded$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener$onSetupIntentForwarded$1;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->safelyCall(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;->setOfflineListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    return-void
.end method
