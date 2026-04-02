.class public final Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;
.super Ljava/lang/Object;
.source "OfflineModule_ProvideHealthCheckHttpUrlFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/HttpUrl;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/OfflineModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/OfflineModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;->module:Lcom/stripe/stripeterminal/dagger/OfflineModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/OfflineModule;)Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;-><init>(Lcom/stripe/stripeterminal/dagger/OfflineModule;)V

    return-object v0
.end method

.method public static provideHealthCheckHttpUrl(Lcom/stripe/stripeterminal/dagger/OfflineModule;)Lokhttp3/HttpUrl;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/OfflineModule;->provideHealthCheckHttpUrl()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/HttpUrl;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;->get()Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/HttpUrl;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;->module:Lcom/stripe/stripeterminal/dagger/OfflineModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;->provideHealthCheckHttpUrl(Lcom/stripe/stripeterminal/dagger/OfflineModule;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method
