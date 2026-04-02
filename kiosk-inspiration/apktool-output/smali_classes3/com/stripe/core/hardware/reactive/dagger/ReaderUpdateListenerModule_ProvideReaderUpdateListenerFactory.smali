.class public final Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;
.super Ljava/lang/Object;
.source "ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final listenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;->listenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;)",
            "Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideReaderUpdateListener(Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;)Lcom/stripe/core/hardware/updates/ReaderUpdateListener;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule;->INSTANCE:Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule;->provideReaderUpdateListener(Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;)Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/hardware/updates/ReaderUpdateListener;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;->listenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    invoke-static {v0}, Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;->provideReaderUpdateListener(Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;)Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;->get()Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    move-result-object v0

    return-object v0
.end method
