.class public final Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;
.super Ljava/lang/Object;
.source "MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final reactiveReaderStatusListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private final scopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final structuredEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/StructuredEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalStatusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/StructuredEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->scopeProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->structuredEventLoggerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->reactiveReaderStatusListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/StructuredEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMposReaderEventLogger(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;
    .locals 1

    .line 67
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;->provideMposReaderEventLogger(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->scopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->structuredEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/StructuredEventLogger;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->reactiveReaderStatusListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->provideMposReaderEventLogger(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->get()Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

    move-result-object v0

    return-object v0
.end method
