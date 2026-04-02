.class public final Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;
.super Ljava/lang/Object;
.source "CotsModule_ProvideNfcAntennaLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/cots/common/NfcAntennaLogger;",
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

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/CotsModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    .line 43
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->applicationContextProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->buildValuesProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideNfcAntennaLogger(Lcom/stripe/stripeterminal/dagger/CotsModule;Landroid/content/Context;Lcom/stripe/core/device/BuildValues;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/cots/common/NfcAntennaLogger;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/dagger/CotsModule;->provideNfcAntennaLogger(Landroid/content/Context;Lcom/stripe/core/device/BuildValues;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/cots/common/NfcAntennaLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/cots/common/NfcAntennaLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/cots/common/NfcAntennaLogger;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->applicationContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->buildValuesProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/device/BuildValues;

    iget-object v3, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->provideNfcAntennaLogger(Lcom/stripe/stripeterminal/dagger/CotsModule;Landroid/content/Context;Lcom/stripe/core/device/BuildValues;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/cots/common/NfcAntennaLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->get()Lcom/stripe/cots/common/NfcAntennaLogger;

    move-result-object v0

    return-object v0
.end method
