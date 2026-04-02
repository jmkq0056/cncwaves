.class public final Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideHardwarePropertiesManagerFactory;
.super Ljava/lang/Object;
.source "SystemServiceModule_ProvideHardwarePropertiesManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/HardwarePropertiesManager;",
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideHardwarePropertiesManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideHardwarePropertiesManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideHardwarePropertiesManagerFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideHardwarePropertiesManagerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideHardwarePropertiesManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideHardwarePropertiesManager(Landroid/content/Context;)Landroid/os/HardwarePropertiesManager;
    .locals 1

    .line 47
    sget-object v0, Lcom/stripe/core/dagger/modules/SystemServiceModule;->INSTANCE:Lcom/stripe/core/dagger/modules/SystemServiceModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule;->provideHardwarePropertiesManager(Landroid/content/Context;)Landroid/os/HardwarePropertiesManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/HardwarePropertiesManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/HardwarePropertiesManager;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideHardwarePropertiesManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideHardwarePropertiesManagerFactory;->provideHardwarePropertiesManager(Landroid/content/Context;)Landroid/os/HardwarePropertiesManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideHardwarePropertiesManagerFactory;->get()Landroid/os/HardwarePropertiesManager;

    move-result-object v0

    return-object v0
.end method
