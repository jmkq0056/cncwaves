.class public final Lcom/stripe/core/bbpos/BbposOtaListener_Factory;
.super Ljava/lang/Object;
.source "BbposOtaListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/BbposOtaListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final debugLogsShouldBeSentToSplunkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final updateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;->updateListenerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;->debugLogsShouldBeSentToSplunkProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/BbposOtaListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/bbpos/BbposOtaListener_Factory;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/BbposOtaListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/core/bbpos/BbposOtaListener;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/stripe/core/bbpos/BbposOtaListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/BbposOtaListener;-><init>(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/BbposOtaListener;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;->updateListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/hardware/updates/ReaderUpdateListener;

    iget-object v1, p0, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;->debugLogsShouldBeSentToSplunkProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;->newInstance(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/BbposOtaListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;->get()Lcom/stripe/core/bbpos/BbposOtaListener;

    move-result-object v0

    return-object v0
.end method
