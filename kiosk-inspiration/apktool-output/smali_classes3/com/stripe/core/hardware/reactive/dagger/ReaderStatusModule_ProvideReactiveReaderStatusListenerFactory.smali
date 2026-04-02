.class public final Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;
.super Ljava/lang/Object;
.source "ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;->module:Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;-><init>(Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideReactiveReaderStatusListener(Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;->provideReactiveReaderStatusListener(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;->module:Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;

    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1}, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;->provideReactiveReaderStatusListener(Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;->get()Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v0

    return-object v0
.end method
