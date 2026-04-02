.class public final Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;
.super Ljava/lang/Object;
.source "AppInfoModule_ProvideAppInfoParser$common_publishFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;",
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

.field private final module:Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;-><init>(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAppInfoParser$common_publish(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;->provideAppInfoParser$common_publish(Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;->provideAppInfoParser$common_publish(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;->get()Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    move-result-object v0

    return-object v0
.end method
