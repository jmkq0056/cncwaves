.class public final Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;
.super Ljava/lang/Object;
.source "CotsModule_ProvidePreflightChecksFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final buildValuesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/CotsModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/CotsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    .line 39
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;->applicationContextProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;->buildValuesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/CotsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;-><init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePreflightChecks(Lcom/stripe/stripeterminal/dagger/CotsModule;Landroid/content/Context;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/cots/common/compatibility/PreFlightChecks;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/CotsModule;->providePreflightChecks(Landroid/content/Context;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/cots/common/compatibility/PreFlightChecks;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;->applicationContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;->buildValuesProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/device/BuildValues;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;->providePreflightChecks(Lcom/stripe/stripeterminal/dagger/CotsModule;Landroid/content/Context;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;->get()Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    move-result-object v0

    return-object v0
.end method
