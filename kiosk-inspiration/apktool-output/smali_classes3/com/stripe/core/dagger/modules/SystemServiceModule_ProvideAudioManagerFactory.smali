.class public final Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideAudioManagerFactory;
.super Ljava/lang/Object;
.source "SystemServiceModule_ProvideAudioManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/media/AudioManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideAudioManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideAudioManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideAudioManagerFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideAudioManagerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideAudioManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    .line 46
    sget-object v0, Lcom/stripe/core/dagger/modules/SystemServiceModule;->INSTANCE:Lcom/stripe/core/dagger/modules/SystemServiceModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule;->provideAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/media/AudioManager;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideAudioManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideAudioManagerFactory;->provideAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideAudioManagerFactory;->get()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method
