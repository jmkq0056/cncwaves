.class public final Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;
.super Ljava/lang/Object;
.source "PermissionsModule_ProvideLocationServicesValidatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
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

.field private final module:Lcom/stripe/stripeterminal/dagger/PermissionsModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/PermissionsModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/PermissionsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;->module:Lcom/stripe/stripeterminal/dagger/PermissionsModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/PermissionsModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/PermissionsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;-><init>(Lcom/stripe/stripeterminal/dagger/PermissionsModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideLocationServicesValidator(Lcom/stripe/stripeterminal/dagger/PermissionsModule;Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/PermissionsModule;->provideLocationServicesValidator(Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;->module:Lcom/stripe/stripeterminal/dagger/PermissionsModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;->provideLocationServicesValidator(Lcom/stripe/stripeterminal/dagger/PermissionsModule;Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;->get()Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    move-result-object v0

    return-object v0
.end method
