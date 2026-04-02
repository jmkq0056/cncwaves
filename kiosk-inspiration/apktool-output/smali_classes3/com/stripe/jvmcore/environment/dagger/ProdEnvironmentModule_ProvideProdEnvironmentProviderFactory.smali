.class public final Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;
.super Ljava/lang/Object;
.source "ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideProdEnvironmentProvider()Lcom/stripe/jvmcore/environment/EnvironmentProvider;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;->INSTANCE:Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;->provideProdEnvironmentProvider()Lcom/stripe/jvmcore/environment/EnvironmentProvider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/environment/EnvironmentProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/environment/EnvironmentProvider;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;->provideProdEnvironmentProvider()Lcom/stripe/jvmcore/environment/EnvironmentProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;->get()Lcom/stripe/jvmcore/environment/EnvironmentProvider;

    move-result-object v0

    return-object v0
.end method
