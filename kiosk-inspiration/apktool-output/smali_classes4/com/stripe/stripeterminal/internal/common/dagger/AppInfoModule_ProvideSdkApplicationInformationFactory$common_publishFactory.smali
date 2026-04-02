.class public final Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;
.super Ljava/lang/Object;
.source "AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final appInfoParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceUuidProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;

    .line 47
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->contextProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->deviceUuidProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->appInfoParserProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->buildValuesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;-><init>(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSdkApplicationInformationFactory$common_publish(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Landroid/content/Context;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;->provideSdkApplicationInformationFactory$common_publish(Landroid/content/Context;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->deviceUuidProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->appInfoParserProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->buildValuesProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/core/device/BuildValues;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->provideSdkApplicationInformationFactory$common_publish(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Landroid/content/Context;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;)Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->get()Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;

    move-result-object v0

    return-object v0
.end method
