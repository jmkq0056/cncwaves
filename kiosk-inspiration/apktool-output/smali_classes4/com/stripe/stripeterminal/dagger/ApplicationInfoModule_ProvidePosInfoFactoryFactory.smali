.class public final Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;
.super Ljava/lang/Object;
.source "ApplicationInfoModule_ProvidePosInfoFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationInformationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
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

.field private final module:Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;->module:Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;

    .line 40
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;-><init>(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePosInfoFactory(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;->providePosInfoFactory(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;->module:Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;->applicationInformationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;->providePosInfoFactory(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;->get()Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    move-result-object v0

    return-object v0
.end method
