.class public final Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;
.super Ljava/lang/Object;
.source "BuildValuesModule_ProvideBuildValuesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/device/BuildValues;",
        ">;"
    }
.end annotation


# instance fields
.field private final buildValuesFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValuesFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/core/device/dagger/BuildValuesModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/device/dagger/BuildValuesModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValuesFactory;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;->module:Lcom/stripe/core/device/dagger/BuildValuesModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;->buildValuesFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/device/dagger/BuildValuesModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValuesFactory;",
            ">;)",
            "Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;-><init>(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBuildValues(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/BuildValuesFactory;)Lcom/stripe/core/device/BuildValues;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/core/device/dagger/BuildValuesModule;->provideBuildValues(Lcom/stripe/core/device/BuildValuesFactory;)Lcom/stripe/core/device/BuildValues;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/device/BuildValues;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/BuildValues;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;->module:Lcom/stripe/core/device/dagger/BuildValuesModule;

    iget-object v1, p0, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;->buildValuesFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/device/BuildValuesFactory;

    invoke-static {v0, v1}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;->provideBuildValues(Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/BuildValuesFactory;)Lcom/stripe/core/device/BuildValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;->get()Lcom/stripe/core/device/BuildValues;

    move-result-object v0

    return-object v0
.end method
