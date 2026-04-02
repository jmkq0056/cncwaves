.class public final Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideTelephonyManagerFactory;
.super Ljava/lang/Object;
.source "SystemServiceModule_ProvideTelephonyManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/telephony/TelephonyManager;",
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideTelephonyManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideTelephonyManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideTelephonyManagerFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideTelephonyManagerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideTelephonyManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 46
    sget-object v0, Lcom/stripe/core/dagger/modules/SystemServiceModule;->INSTANCE:Lcom/stripe/core/dagger/modules/SystemServiceModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule;->provideTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideTelephonyManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideTelephonyManagerFactory;->provideTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideTelephonyManagerFactory;->get()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method
