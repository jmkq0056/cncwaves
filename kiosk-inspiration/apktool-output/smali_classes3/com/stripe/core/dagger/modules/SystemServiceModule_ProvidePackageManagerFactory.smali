.class public final Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvidePackageManagerFactory;
.super Ljava/lang/Object;
.source "SystemServiceModule_ProvidePackageManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/pm/PackageManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final appProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
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
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvidePackageManagerFactory;->appProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvidePackageManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvidePackageManagerFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvidePackageManagerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvidePackageManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePackageManager(Landroid/app/Application;)Landroid/content/pm/PackageManager;
    .locals 1

    .line 46
    sget-object v0, Lcom/stripe/core/dagger/modules/SystemServiceModule;->INSTANCE:Lcom/stripe/core/dagger/modules/SystemServiceModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule;->providePackageManager(Landroid/app/Application;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/pm/PackageManager;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvidePackageManagerFactory;->appProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvidePackageManagerFactory;->providePackageManager(Landroid/app/Application;)Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvidePackageManagerFactory;->get()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method
